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
		sqliteDBObj.insert("<yourname>","<youremail>");
		
		//Data is fetched from the table. Parameter is the condition which you need to put after 'WHERE' in an SQL query.
		String result =sqliteDBObj.select("name='<yourname>'"); 
		
		//Database connection is closed
		sqliteDBObj.close();
    
		/*Concentration done .. below is just outputing the result on emulator */

        TextView tv = new TextView(this);
        tv.setText(result);
        setContentView(tv);

    }
}
