package com.example.samagna.ssk1;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;


public class MainActivity extends AppCompatActivity {

    public Button bt;

    public void init()
    {
        bt=(Button)findViewById(R.id.toReception);
        bt.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent Recption_page1=new Intent(MainActivity.this,Receptionist_page1.class);
                startActivity(Recption_page1);
            }
        });
    }
        @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        init();
    }
}
