package stalkninja.sqlitehelper;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;


public class TestSqliteHelper extends Activity {
	 
    /* This is the function your app enters. This is like main() for C program. So start from here */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
		/* Concentrate from here */
    
		//Database is opened & initialized
        sqliteDB sqliteDBObj = new sqliteDB(this);	
		//Data is inserted into table
		//sqliteDBObj.insert("'honey'","'honey1000gmail.com'");
		
		//Data is fetched from the table. Parameter is the condition which you need to put after 'WHERE' in an SQL query.
		String result =sqliteDBObj.select("name='ravi'"); 
		
		//Database connection is closed-- don't use this
	   //	sqliteDBObj.close();
		
        //Method to delete a data entry
		//sqliteDBObj.delete("'honey'");
		/*Concentration done .. below is just outputing the result on emulator */

        TextView tv = new TextView(this);
        tv.setText(result);
        setContentView(tv);

    }
}