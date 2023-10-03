package com.example.myapplication;
import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class RegisterFragment extends Fragment {

    private EditText nameEditText;
    private EditText passwordEditText;
    private EditText confirmPasswordEditText;
    private EditText emailEditText;
    private Button registerButton;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_register, container, false);

        nameEditText = view.findViewById(R.id.editTextName);
        passwordEditText = view.findViewById(R.id.editTextPassword);
        confirmPasswordEditText = view.findViewById(R.id.editTextConfirmPassword);
        emailEditText = view.findViewById(R.id.editTextEmail);
        registerButton = view.findViewById(R.id.btnRegister);

        registerButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Implement your registration logic here
                String name = nameEditText.getText().toString();
                String password = passwordEditText.getText().toString();
                String confirmPassword = confirmPasswordEditText.getText().toString();
                String email = emailEditText.getText().toString();

                if (isValidRegistration(name, password, confirmPassword, email)) {
                    loadLoginFragment();
                } else {
                    Toast.makeText(getActivity(), "Registration failed. Please check your data.", Toast.LENGTH_SHORT).show();

                }
            }
        });

        return view;
    }

    private boolean isValidRegistration(String name, String password, String confirmPassword, String email) {
        return !name.isEmpty() && !password.isEmpty() && !confirmPassword.isEmpty() && !email.isEmpty();
    }

    private void loadLoginFragment() {
        getParentFragmentManager().beginTransaction().replace(R.id.frContainer, new LoginFragment()).commit();
    }
}
