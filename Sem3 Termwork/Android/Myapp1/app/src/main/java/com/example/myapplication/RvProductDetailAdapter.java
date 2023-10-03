package com.example.myapplication;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.media.Image;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.lang.reflect.Array;
import java.util.ArrayList;

public class RvProductDetailAdapter extends RecyclerView.Adapter<RvProductDetailAdapter.viewHolder> {

    private ArrayList<Model> list;
    private Context context;

    public RvProductDetailAdapter(ArrayList<Model> list, Context context) {
        this.list = list;
        this.context = context;
    }

    @NonNull
    @Override
    public RvProductDetailAdapter.viewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(context).inflate(R.layout.simple_view, parent, false);
        return new viewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull RvProductDetailAdapter.viewHolder holder, int position) {
            Model model = list.get(position);

            holder.imageView.setImageResource(model.getImage());
            holder.textView.setText(model.getProductName());
            holder.button.setText(String.valueOf("₹" + model.getPrice()));

            holder.itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    Intent intent = new Intent(context, DetailActivity.class);
                    intent.putExtra("productname", model.getProductName());
                    intent.putExtra("productimage", model.getImage());
                    intent.putExtra("productprice", model.getPrice());
                    intent.putExtra("productdescription", model.getDescription());
                    context.startActivity(intent);
                    ((Activity)context).finish();
                }
            });
    }

    @Override
    public int getItemCount() {
        return list.size();
    }

    public static class viewHolder extends RecyclerView.ViewHolder{
        private ImageView imageView;
        private TextView textView;
        private Button button;

        public viewHolder(@NonNull View itemView) {
            super(itemView);

            imageView = itemView.findViewById(R.id.igProduct);
            textView = itemView.findViewById(R.id.txProductName);
            button = itemView.findViewById(R.id.btnPrice);
        }
    }
}
