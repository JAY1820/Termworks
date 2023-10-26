<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    use HasFactory;

    protected $table = 'service'; // Specify the table name if it's different from the model name

    protected $fillable = ['name', 'description', 'price']; // Define the fillable attributes

    // Add any relationships if needed
}
