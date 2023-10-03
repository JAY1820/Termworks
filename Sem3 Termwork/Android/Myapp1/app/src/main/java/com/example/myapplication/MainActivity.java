package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    CardView crLaptop, crMonitor, crKeyboard, crMouse;
    TextView textView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        textView= findViewById(R.id.txName);
        crKeyboard = findViewById(R.id.crKeyboard);
        crLaptop = findViewById(R.id.crLaptop);
        crMouse = findViewById(R.id.crMouse);
        crMonitor = findViewById(R.id.crMonitor);

        crMonitor.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(MainActivity.this, ProductActivity.class);
                intent.putExtra("product_name", "Monitor");
                startActivity(intent);
                finish();
            }
        });
        crKeyboard.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(MainActivity.this, ProductActivity.class);
                intent.putExtra("product_name", "Keyboard");
                startActivity(intent);
                finish();
            }
        });
        crLaptop.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(MainActivity.this, ProductActivity.class);
                intent.putExtra("product_name", "Laptop");
                startActivity(intent);
                finish();
            }
        });
        crMouse.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(MainActivity.this, ProductActivity.class);
                intent.putExtra("product_name", "Mouse");
                startActivity(intent);
                finish();
            }
        });
    }
}