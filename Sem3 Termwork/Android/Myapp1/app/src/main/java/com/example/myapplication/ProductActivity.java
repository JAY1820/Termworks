package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.os.Bundle;

import java.util.ArrayList;

public class ProductActivity extends AppCompatActivity {

    private RecyclerView rvProduct;
    private RvProductDetailAdapter adapter;
    private ArrayList<Model> mouseList, laptopList, monitorList, keyboardList;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_product);

        rvProduct = findViewById(R.id.rvProduct);
        String productName = getIntent().getStringExtra("product_name");
        mouseList = new ArrayList<>();
        laptopList = new ArrayList<>();
        keyboardList = new ArrayList<>();
        monitorList = new ArrayList<>();

        // Adding descriptions to each product in mouseList
        mouseList.add(new Model(R.drawable.dell6, "Dell Mouse 121i", "2001", "This is a high-performance Dell mouse with a sleek design. It features advanced tracking technology for smooth cursor control. The high DPI setting allows for precise navigation, making it ideal for graphic designers and gamers."));
        mouseList.add(new Model(R.drawable.dell1, "Dell Mouse 121i", "2001", "Experience smooth navigation with this Dell mouse. Its ergonomic design ensures comfortable use for long hours. The mouse is equipped with customizable buttons that can be programmed according to your needs."));
        mouseList.add(new Model(R.drawable.dell2, "Dell Mouse 121i", "2001", "This Dell mouse offers precision pointing and clicking. It’s perfect for gaming or graphic design work. The mouse has a high polling rate which ensures lag-free operation for a seamless user experience."));
        mouseList.add(new Model(R.drawable.dell3, "Dell Mouse 121i", "2001", "A reliable and durable Dell mouse for everyday use. Its wireless connectivity offers freedom of movement. The long battery life ensures uninterrupted operation, making it a great choice for professionals."));
        mouseList.add(new Model(R.drawable.dell4, "Dell Mouse 121i", "2001", "This Dell mouse provides a comfortable grip and easy control. It’s compatible with multiple operating systems. The plug-and-play feature allows for easy installation, making it a convenient peripheral device."));

// Adding descriptions to each product in laptopList
        laptopList.add(new Model(R.drawable.laptop1, "HP Laptop", "50000", "This HP laptop offers high-speed performance and a sleek design. It’s equipped with the latest processor for efficient multitasking. The laptop also features an SSD for faster data access and boot times."));
        laptopList.add(new Model(R.drawable.laptop2, "HP Laptop", "50000", "Experience seamless multitasking with this HP laptop. Its ample storage space allows you to store all your important files. The laptop also has a dedicated graphics card for smooth video playback and gaming."));
        laptopList.add(new Model(R.drawable.laptop3, "HP Laptop", "50000", "This HP laptop has a vibrant display and long-lasting battery life. It’s perfect for both work and entertainment purposes. The laptop also features fast charging technology, allowing you to quickly recharge the battery."));
        laptopList.add(new Model(R.drawable.laptop4, "HP Laptop", "50000", "A powerful HP laptop for all your computing needs. Its robust construction ensures durability and longevity. The laptop also has multiple ports for connecting external devices, offering enhanced versatility."));

// Adding descriptions to each product in monitorList
        monitorList.add(new Model(R.drawable.monitor1, "Dell Monitor", "400000", "This Dell monitor offers stunning visuals and vibrant colors. It’s perfect for graphic designers and video editors. The monitor features an IPS panel that delivers accurate colors from all viewing angles."));
        monitorList.add(new Model(R.drawable.minitor2, "Dell Monitor", "400000", "Experience immersive viewing with this Dell monitor. Its wide screen allows you to open multiple windows simultaneously. The monitor also has a high refresh rate, ensuring smooth motion in fast-paced scenes."));
        monitorList.add(new Model(R.drawable.minitor3, "Dell Monitor", "400000", "This Dell monitor has a sleek design and adjustable stand. It’s easy to set up and use. The monitor also features low blue light technology, reducing eye strain during long hours of use."));
        monitorList.add(new Model(R.drawable.minitor4, "Dell Monitor", "400000", "A high-resolution Dell monitor for an enhanced viewing experience. Its anti-glare screen protects your eyes from strain."));

// Adding descriptions to each product in keyboardList
        keyboardList.add(new Model(R.drawable.keyboard1, "Dell Keyboard", "400000", "This Dell keyboard offers comfortable typing and durable keys. Its spill-resistant design ensures longevity. The keyboard also features multimedia keys for easy access to various functions. Its tactile feedback and ergonomic layout enhance your typing experience, making it perfect for both work and play."));
        keyboardList.add(new Model(R.drawable.keyboard2, "hp Keyboard", "400000", "Experience smooth typing with this hp keyboard. Its soft keys reduce noise while typing, making it ideal for office environments. The slim and compact design saves desk space. The integrated numeric keypad adds convenience for data entry and calculations."));
        keyboardList.add(new Model(R.drawable.keyboard3, "Lenovo Keyboard", "400000", "This Lenovo keyboard has a compact design and quiet keys. It's engineered for efficiency and comfort, ensuring a pleasant typing experience. The scissor-switch keys offer a precise and responsive feel. It's a great choice for those who need silent and accurate typing."));
        keyboardList.add(new Model(R.drawable.keyboard4, "Dell 1 Keyboard", "400000", "A reliable and durable Dell keyboard for everyday use. It's built to withstand the demands of daily work. The low-profile keys provide a comfortable typing experience. The stylish and compact design complements your workspace. Elevate your productivity with this dependable keyboard."));




        if(productName.equals("Laptop")){
            setRecyclerview(laptopList);
        }else if(productName.equals("Monitor")){
            setRecyclerview(monitorList);
        }else if(productName.equals("Keyboard")){
            setRecyclerview(keyboardList);
        }else if(productName.equals("Mouse")){
            setRecyclerview(mouseList);
        }
    }

    private void setRecyclerview(ArrayList<Model> list){
        adapter = new RvProductDetailAdapter(list, ProductActivity.this);
        rvProduct.setLayoutManager(new LinearLayoutManager(ProductActivity.this));
        rvProduct.setAdapter(adapter);
    }
}