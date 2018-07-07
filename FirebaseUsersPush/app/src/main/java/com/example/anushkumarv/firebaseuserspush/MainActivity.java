package com.example.anushkumarv.firebaseuserspush;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.*;
public class MainActivity extends AppCompatActivity {
    EditText usr;
    EditText pass;
    Button sub;
    String usrnam;
    String p;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        usr = (EditText) findViewById(R.id.un);
        pass = (EditText) findViewById(R.id.pass);
        sub = (Button) findViewById(R.id.button);
        sub.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                usrnam = usr.getText().toString();
                p = pass.getText().toString();

            }
        });
    }
    private void fetchData(){

    }
}
