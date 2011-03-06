package stalkninja.sqlitehelper;



//Already imported relevant libraries needed for Sqlite database. We made your job easier :). But read on, there is more.
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.content.Context;
import android.util.Log;
import android.database.Cursor;


public class SqliteHelper extends SQLiteOpenHelper {
	
	private SQLiteDatabase db;  //Use this variable to do all your database insert & select function.
	
	private static final int DATABASE_VERSION = 2;
	private static final String DATABASE_NAME = "sample_db";
	private static final String SAMPLE_TABLE_NAME = "sample_table";

	public sqliteDB(Context ctx) throws SQLiteException {
		super(ctx, DATABASE_NAME, null, DATABASE_VERSION); 
		
		//initialize private variable 'db' here. Read about SQLiteOpenHelper class to know how to get the database handle. 
		//hint - we extended sqliteDB from SQLiteOpenHelper - so you can call functions of SQLiteOpenHelper with 'this'. For all the non-OOPS guy ;)
		
	}
	
	@Override	
	public void onOpen(SQLiteDatabase _db) { //This function is called whenever the database is OPENED by getWritableDatabase()/getReadableDatabase()
		System.out.println("inside onOpen");
		//write code to create table (if not exists) with two fields - name & email	
		//Hint - take this seriously. We banged our head for 24 hours because we just put table creation in onCreate & database was already created & table was not getting created. We later realized, we need to put a create table statement in onOpen if the table does not exist. Not sure what we meant, leave this part & you would
		//Hint 2 - If you are finding trouble-shooting database hard - follow - http://www.chriskopec.com/blog/2010/mar/11/android-database-command-line-access/ & figure out if the database &/or table are there.
		
		
	}
	
	@Override	
	public void onCreate(SQLiteDatabase _db) { //This function is called when the database is CREATED by getWritableDatabase()/getReadableDatabase(). If the database is already created which would when you run the code first time, this function would NEVER be called again

		System.out.println("inside onCreate");
		//write code to create table with two fields - name & email
	}
	
	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		//leave it empty for now
	}

	public void insert(String name, String email){
		//write your code here to insert data into database. Hint - use the private variable db to do the insert
	}

	public String select(String condition){
		String result = "nothing";
		
		//write code to select data from database & populate results array. The format should be - "name <yourname>: email <youremail>"
		//hint - you would need Cursor class & rawQuery function
		
		//sample return  - remove this while coding
		result = "name ashish, email somemail";

		return result;
	}
	
	public void close() {
		db.close();
	}


}
