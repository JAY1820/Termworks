package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

public class DetailActivity extends AppCompatActivity {

    private ImageView imageView;
    private TextView name, description;
    private Button button, priceBtn;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detail);

        imageView = findViewById(R.id.igDetailProduct);
        description = findViewById(R.id.txDetailDescription);
        name = findViewById(R.id.txDetailProductName);
        button = findViewById(R.id.btnBuy);
        priceBtn = findViewById(R.id.btnDetailPrice);

        loadData();

        // Add a click listener to the "Buy" button
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Display a toast message
                Toast.makeText(DetailActivity.this, "Your order is successfully placed", Toast.LENGTH_SHORT).show();

                // Move to another activity using an intent
                Intent intent = new Intent(DetailActivity.this, AnimationActivity.class);
                startActivity(intent);
                finish();
            }
        });
    }

    private void loadData() {
        String productName = getIntent().getStringExtra("productname");
        String price = getIntent().getStringExtra("productprice");
        String desc = getIntent().getStringExtra("productdescription");
        int image = getIntent().getIntExtra("productimage", 0);

        imageView.setImageResource(image);
        description.setText(desc);
        name.setText(productName);
        priceBtn.setText(String.valueOf("₹" + price));
    }
}
