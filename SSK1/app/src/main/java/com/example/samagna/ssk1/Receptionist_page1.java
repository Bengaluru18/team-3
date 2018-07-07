package com.example.samagna.ssk1;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class Receptionist_page1 extends AppCompatActivity {

    public Button bt1;

    public void init()
    {
        bt1=(Button)findViewById(R.id.SearchbyName);
        bt1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent Byname=new Intent(Receptionist_page1.this,ReceptionByName.class);
                startActivity(Byname);
            }
        });
    }


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_receptionist_page1);
        init();
    }
}
