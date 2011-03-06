
package com.draptech.bdaywisher;

import java.util.Calendar;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

public class BdayDbAdapter {
	public static final String KEY_ROWID = "_id";
	public static final String KEY_USER_ID = "uid";
	public static final String KEY_NAME = "name";
	public static final String KEY_BIRTHDAY = "birthday";
	public static final String KEY_SELECTED = "selected";
	public static final String KEY_PERSONALIZED = "personalized";
	public static final String KEY_MESSAGE = "message";
	public static final String KEY_PRIMARY_NETWORK_NAME = "network";
	public static final String KEY_YEAR_WISHED = "year_wished";

	private static final String TAG = "DBAdapter";
	private static final int MONTH_OFFSET = 3;

	private static final String DATABASE_NAME = "bdaywisher";
	private static final String DATABASE_TABLE_NAME = "bdays";
	private static final int DATABASE_VERSION = 5;

	private static final String DATABASE_CREATE = "create table "
			+ DATABASE_TABLE_NAME
			+ " (_id integer primary key autoincrement, "
			+ "uid integer not null, name text not null, "
			+ "birthday text not null, selected integer, personalized integer, "
			+ "message text, network text, year_wished integer);";

	private final Context context;

	private DatabaseHelper DBHelper;
	private SQLiteDatabase db;

	public BdayDbAdapter(Context ctx) {
		this.context = ctx;
		DBHelper = new DatabaseHelper(context);
	}

	private static class DatabaseHelper extends SQLiteOpenHelper {
		DatabaseHelper(Context context) {
			super(context, DATABASE_NAME, null, DATABASE_VERSION);
		}

		@Override
		public void onCreate(SQLiteDatabase db) {
			db.execSQL(DATABASE_CREATE);
		}

		@Override
		public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
			Log.w(TAG, "Upgrading database from version " + oldVersion + " to "
					+ newVersion + ", which will destroy all old data");
			db.execSQL("DROP TABLE IF EXISTS " + DATABASE_TABLE_NAME);
			onCreate(db);
		}
	}

	// functions for various operations

	// ---opens the database---
	public BdayDbAdapter open() throws SQLException {
		db = DBHelper.getWritableDatabase();
		return this;
	}

	// ---closes the database---
	public void close() {
		DBHelper.close();
	}

	// ---insert a bday record into the database---
	public long insertBday(String uid, String name, String bday, int selected,
			int personalized, String msg, String network, int yr_wished) {
		ContentValues initialValues = new ContentValues();
		initialValues.put(KEY_USER_ID, uid);
		initialValues.put(KEY_NAME, name);
		initialValues.put(KEY_BIRTHDAY, bday);
		initialValues.put(KEY_SELECTED, selected);
		initialValues.put(KEY_PERSONALIZED, personalized);
		initialValues.put(KEY_MESSAGE, msg);
		initialValues.put(KEY_PRIMARY_NETWORK_NAME, network);
		initialValues.put(KEY_YEAR_WISHED, yr_wished);
		return db.insert(DATABASE_TABLE_NAME, null, initialValues);
	}

	// ---deletes a particular bday record---
	public boolean deleteBday(long rowId) {
		return db.delete(DATABASE_TABLE_NAME, KEY_ROWID + "=" + rowId, null) > 0;
	}

	// --- deletes all bday records
	public boolean deleteAllBdays() {
		return db.delete(DATABASE_TABLE_NAME, null, null) > 0;
	}

	// ---retrieves all the bday records---
	public Cursor getAllBdays() {
		Calendar t_cal = Calendar.getInstance();
		int month = t_cal.get(Calendar.MONTH) + 1;
		String t_date = String.format("%02d", month)
				+ String.format("%02d", t_cal.get(Calendar.DAY_OF_MONTH));

		return db.query(DATABASE_TABLE_NAME, new String[] { KEY_ROWID,
				KEY_NAME, KEY_BIRTHDAY, KEY_SELECTED, KEY_PERSONALIZED,
				KEY_MESSAGE, KEY_PRIMARY_NETWORK_NAME,
				"(birthday<'" + t_date + "') as nr" }, null, null, null, null,
				"nr,birthday");

	}

	// --get bday records to be wished today--
	public Cursor getBdaysToBeWished() {
		Calendar t_cal = Calendar.getInstance();
		int yr = t_cal.get(Calendar.YEAR);
		String tdy = String.format("%02d", t_cal.get(Calendar.MONTH) + 1)
				+ String.format("%02d", t_cal.get(Calendar.DAY_OF_MONTH));
		return db.query(DATABASE_TABLE_NAME, new String[] { KEY_ROWID,
				KEY_USER_ID, KEY_MESSAGE, }, KEY_YEAR_WISHED + "<" + yr
				+ " and " + KEY_BIRTHDAY + "='" + tdy + "'", null, null, null,
				KEY_BIRTHDAY);
	}

	public Cursor getSelectedBdaysToBeWished() {
		Calendar t_cal = Calendar.getInstance();
		int yr = t_cal.get(Calendar.YEAR);
		String tdy = String.format("%02d", t_cal.get(Calendar.MONTH) + 1)
				+ String.format("%02d", t_cal.get(Calendar.DAY_OF_MONTH));
		return db.query(DATABASE_TABLE_NAME, new String[] { KEY_ROWID,
				KEY_USER_ID, KEY_MESSAGE, }, KEY_YEAR_WISHED + "<" + yr
				+ " and " + KEY_BIRTHDAY + "='" + tdy + "' and " + KEY_SELECTED
				+ "=1", null, null, null, KEY_BIRTHDAY);
	}

	public void setBdayWished(String uid) {
		Calendar t_cal = Calendar.getInstance();
		int yr = t_cal.get(Calendar.YEAR);
		ContentValues args = new ContentValues();
		args.put(KEY_YEAR_WISHED, yr);
		db.update(DATABASE_TABLE_NAME, args, KEY_USER_ID + "=" + uid, null);
	}

	// ---retrieves bday records within 3 months and selected---
	public Cursor getSelectedBdays() {
		Calendar t_cal = Calendar.getInstance();

		int month = t_cal.get(Calendar.MONTH) + 1;
		if (month >= 10) {
			String min_date = String.format("%02d", month)
					+ String.format("%02d", t_cal.get(Calendar.DAY_OF_MONTH));
			String max_date = String.format("%02d", month + MONTH_OFFSET - 12)
					+ String.format("%02d", t_cal.get(Calendar.DAY_OF_MONTH));
			return db.query(DATABASE_TABLE_NAME, new String[] { KEY_ROWID,
					KEY_NAME, KEY_BIRTHDAY, KEY_SELECTED, KEY_PERSONALIZED,
					KEY_MESSAGE, KEY_PRIMARY_NETWORK_NAME }, "(" + KEY_BIRTHDAY
					+ "<'" + max_date + "' or " + KEY_BIRTHDAY + ">='"
					+ min_date + "') and " + KEY_SELECTED + "=1", null, null,
					null, KEY_BIRTHDAY);

		} else {
			String min_date = String.format("%02d", month)
					+ String.format("%02d", t_cal.get(Calendar.DAY_OF_MONTH));
			String max_date = String.format("%02d", month + MONTH_OFFSET)
					+ String.format("%02d", t_cal.get(Calendar.DAY_OF_MONTH));
			return db.query(DATABASE_TABLE_NAME, new String[] { KEY_ROWID,
					KEY_NAME, KEY_BIRTHDAY, KEY_SELECTED, KEY_PERSONALIZED,
					KEY_MESSAGE, KEY_PRIMARY_NETWORK_NAME }, "(" + KEY_BIRTHDAY
					+ "<'" + max_date + "' and " + KEY_BIRTHDAY + ">='"
					+ min_date + "') and " + KEY_SELECTED + "=1", null, null,
					null, KEY_BIRTHDAY);
		}

	}

	// ---retrieves a particular bday record---
	public Cursor getBday(long rowId) throws SQLException {
		Cursor mCursor = db.query(true, DATABASE_TABLE_NAME, new String[] {
				KEY_ROWID, KEY_NAME, KEY_BIRTHDAY, KEY_SELECTED,
				KEY_PERSONALIZED, KEY_MESSAGE, KEY_PRIMARY_NETWORK_NAME },
				KEY_ROWID + "=" + rowId, null, null, null, null, null);
		if (mCursor != null) {
			mCursor.moveToFirst();
		}
		return mCursor;
	}

	// ---updates a bday record---
	public boolean updateBday(long rowId, String uid, String name, String bday,
			int selected, int personalized, String msg, String network) {
		ContentValues args = new ContentValues();
		args.put(KEY_USER_ID, uid);
		args.put(KEY_NAME, name);
		args.put(KEY_BIRTHDAY, bday);
		args.put(KEY_SELECTED, selected);
		args.put(KEY_PERSONALIZED, personalized);
		args.put(KEY_MESSAGE, msg);
		args.put(KEY_PRIMARY_NETWORK_NAME, network);
		return db.update(DATABASE_TABLE_NAME, args, KEY_ROWID + "=" + rowId,
				null) > 0;
	}

	// --set selected--
	public void setSelected(long rowId, boolean selected) {
		ContentValues args = new ContentValues();
		args.put(KEY_SELECTED, selected);
		db.update(DATABASE_TABLE_NAME, args, KEY_ROWID + "=" + rowId, null);
	}

	// --set personalized--
	public void setPersonalized(long rowId, boolean personalized, String msg) {
		ContentValues args = new ContentValues();
		args.put(KEY_PERSONALIZED, personalized);
		args.put(KEY_MESSAGE, msg);
		db.update(DATABASE_TABLE_NAME, args, KEY_ROWID + "=" + rowId, null);
	}

	// --try to update bday record if already exists else return false--
	public boolean tryUpdateBday(String uid, String name, String bday,
			String network) {
		ContentValues args = new ContentValues();
		args.put(KEY_NAME, name);
		args.put(KEY_BIRTHDAY, bday);
		args.put(KEY_PRIMARY_NETWORK_NAME, network);
		return db.update(DATABASE_TABLE_NAME, args, KEY_USER_ID + "=" + uid,
				null) > 0;
	}

	// --change default message--
	public void changeDefaultMessage(String msg) {
		ContentValues args = new ContentValues();
		args.put(KEY_MESSAGE, msg);
		db.update(DATABASE_TABLE_NAME, args, KEY_PERSONALIZED + "=0", null);
	}
}
