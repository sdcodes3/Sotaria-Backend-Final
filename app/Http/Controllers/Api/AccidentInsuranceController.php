<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\AccidentModel;
use Illuminate\Http\Request;

class AccidentInsuranceController extends Controller
{
    public function store(Request $request)
    {
        // Validate the incoming request data
        info($request->all());
        $validatedData = $request->validate([
            'first_name' => 'nullable|string|max:255',
            'last_name' => 'nullable|string|max:255',
            'middle_name' => 'nullable|string|max:255',
            'age' => 'nullable|numeric',
            'policy_holder_name' => 'nullable|string|max:255',
            'national_id' => 'nullable|string|max:255',
            'dob' => 'nullable|date_format:d-m-Y',
            'insurance_amount' => 'nullable|numeric',
            'occupancy' => 'nullable|string|max:255',
        ]);

        // Create a new insurance record
        $insurance = AccidentModel::create($validatedData);

        // Return a response indicating success
        return response()->json(['message' => 'Insurance record created successfully', 'data' => $insurance], 201);
    }
    public function update(Request $request, $id)
    {
        // Validate the incoming request data
        $validatedData = $request->validate([
            'first_name' => 'nullable|string|max:255',
            'last_name' => 'nullable|string|max:255',
            'middle_name' => 'nullable|string|max:255',
            'age' => 'nullable|numeric',
            'policy_holder_name' => 'nullable|string|max:255',
            'national_id' => 'nullable|string|max:255',
            'dob' => 'nullable|date_format:d-m-Y',
            'insurance_amount' => 'nullable|numeric',
            'occupancy' => 'nullable|string|max:255',
        ]);

        // Find the insurance record by ID
        $insurance = AccidentModel::findOrFail($id);

        // Update the record with the validated data
        $insurance->update($validatedData);

        // Return a response indicating success
        return response()->json(['message' => 'Insurance record updated successfully', 'data' => $insurance], 200);
    }
}
