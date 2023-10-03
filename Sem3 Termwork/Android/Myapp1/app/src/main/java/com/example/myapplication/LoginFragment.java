package com.example.myapplication;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import android.widget.Button;
import android.widget.EditText;
import android.content.Intent;
import android.widget.Toast;

public class LoginFragment extends Fragment {

    private EditText usernameEditText;
    private EditText passwordEditText;
    private Button loginButton,registerButton;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_login, container, false);

        usernameEditText = view.findViewById(R.id.editTextUsername);
        passwordEditText = view.findViewById(R.id.editTextPassword);
        loginButton = view.findViewById(R.id.buttonLogin);
        registerButton = view.findViewById(R.id.buttonRegister);

        loginButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Implement your login logic here
                String username = usernameEditText.getText().toString();
                String password = passwordEditText.getText().toString();

                // Check the entered credentials and perform login logic
                if (isValidLogin(username, password)) {
                    // Successful login, navigate to the main activity
                    SharedPreferences spf = requireContext().getSharedPreferences("user_info", Context.MODE_PRIVATE);
                    SharedPreferences.Editor editor = spf.edit();
                    editor.putString("name", username);
                    editor.apply();

                    startActivity(new Intent(requireContext(), MainActivity.class));
                    requireActivity().finish();
                } else {
                    Toast.makeText(getActivity(), "login failed. Please check your data.", Toast.LENGTH_SHORT).show();
                }
            }
        });

        registerButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                getParentFragmentManager().beginTransaction().replace(R.id.frContainer, new RegisterFragment()).commit();
            }
        });
        return view;
    }
    private boolean isValidLogin(String username, String password) {
        return !username.isEmpty() && !password.isEmpty();
    }
}
