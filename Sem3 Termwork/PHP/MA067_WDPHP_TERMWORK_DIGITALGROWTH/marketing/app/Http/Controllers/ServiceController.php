<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Service; // Import the Service model

class ServiceController extends Controller
{
    public function create()
    {
        return view('addtocart'); // Display the form view
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'required|string',
            'price' => 'required|numeric',
        ]);

        Service::create($data); // Store the data in the "service" table

        return redirect()->route('addtocart'); // Redirect to the form page
    }

    // You can add more methods for other controller actions as needed
}
