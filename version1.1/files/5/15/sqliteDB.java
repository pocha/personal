package stalkninja.sqlitehelper;



//Already imported relevant libraries needed for Sqlite database. We made your job easier :). But read on, there is more.


import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;


public class sqliteDB extends SQLiteOpenHelper {
	
	//private SQLiteDatabase db;  //Use this variable to do all your database insert & select function.
	
	private static final int DATABASE_VERSION = 2;
	private static final String DATABASE_NAME = "sample_db1";
	private static final String SAMPLE_TABLE_NAME = "sample_table";
//Columns
	public static final String NAME = "name";
	public static final String EMAIL = "email";
	public Boolean ifDatabseExists=false;
//Constructor	
	public sqliteDB(Context ctx) throws SQLiteException {
		super(ctx, DATABASE_NAME, null, DATABASE_VERSION); 
		//initialize private variable 'db' here. Read about SQLiteOpenHelper class to know how to get the database handle. 
		//hint - we extended sqliteDB from SQLiteOpenHelper - so you can call functions of SQLiteOpenHelper with 'this'. For all the non-OOPS guy ;)
		
	}
	
	
	
	@Override	
	public void onCreate(SQLiteDatabase db) { //This function is called when the database is CREATED by getWritableDatabase()/getReadableDatabase(). If the database is already created which would when you run the code first time, this function would NEVER be called again
		
		//write code to create table with two fields - name & email
		String sql = "create table " + SAMPLE_TABLE_NAME + "( " + NAME + ","+ EMAIL+");";
		db.execSQL(sql);
		
        
	}
	
	
	public void insert(String name, String email){
		SQLiteDatabase db = getReadableDatabase();
		//write your code here to insert data into database. Hint - use the private variable db to do the insert
		ContentValues values = new ContentValues();
		values.put(NAME,name);
		values.put(EMAIL,email);
		db.execSQL("INSERT INTO "+SAMPLE_TABLE_NAME+" (NAME,EMAIL) VALUES ("+name+","+email+");");
		System.out.println("i was not here");
		if(db!=null)
			db.close();
	}

	public String select(String condition){
		SQLiteDatabase db = getReadableDatabase();
		String column[]=condition.split("='");
		String tempString=column[1].substring(0, column[1].length()-1);
		Cursor cursor=db.rawQuery("select * from "+ SAMPLE_TABLE_NAME+" ;",null);
    	//write code to select data from database & populate results array. The format should be - "name <yourname>: email <youremail>"
		//hint - you would need Cursor class & rawQuery function
		
		//sample return  - remove this while coding
        while(cursor.moveToNext())
        {
        	//System.out.println(i);
        	StringBuilder ret = new StringBuilder();	
        	String name = cursor.getString(0);
            String email = cursor.getString(1);
            ret.append("name:"+name+", "+"email:"+email+"\n");
            System.out.println(name+","+tempString);
            if(name.compareToIgnoreCase(tempString)==0)
            	return (ret.toString());	  
           ;
        
         
        }
		db.close();
		return "name not found";
	}
	
	public void delete(String nameToBeDeleted)
	{
		SQLiteDatabase db = getReadableDatabase();
		String sql="DELETE FROM "+ SAMPLE_TABLE_NAME+" WHERE "+ NAME+"="+nameToBeDeleted+" ;";
		db.execSQL(sql);
		db.close();
         
	}



	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		// TODO Auto-generated method stub
		
	}


}