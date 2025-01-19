<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\MarineModel;
use Illuminate\Http\Request;

class MarineInsuranceController extends Controller
{
    public function store(Request $request)
    {

        $validatedData = $request->validate([
            'mobile_no' => 'nullable|numeric',
            'transportation' => 'nullable|string|max:255',
            'policy_holder_name' => 'nullable|string|max:255',
            'national_id' => 'nullable|string|max:255',
            'from' => 'nullable|string|max:255',
            'via' => 'nullable|string|max:255',
            'to' => 'nullable|string|max:255',
            'insurance_amount' => 'nullable|numeric',
            'subject_matter_insurance' => 'nullable|string|max:500',
        ]);

        // Create a new marine insurance record
        $marineInsurance = MarineModel::create($validatedData);

        // Return a response indicating success
        return response()->json(['message' => 'Marine insurance record created successfully', 'data' => $marineInsurance], 201);
    }
    public function update(Request $request, $id)
    {
        // Validate the incoming request data
        $validatedData = $request->validate([
            'mobile_no' => 'nullable|numeric',
            'transportation' => 'nullable|string|max:255',
            'policy_holder_name' => 'nullable|string|max:255',
            'national_id' => 'nullable|string|max:255',
            'from' => 'nullable|string|max:255',
            'via' => 'nullable|string|max:255',
            'to' => 'nullable|string|max:255',
            'insurance_amount' => 'nullable|numeric',
            'subject_matter_insurance' => 'nullable|string|max:500',
        ]);

        // Find the marine insurance record by ID
        $marineInsurance = MarineModel::findOrFail($id);

        // Update the record with the validated data
        $marineInsurance->update($validatedData);

        // Return a response indicating success
        return response()->json(['message' => 'Marine insurance record updated successfully', 'data' => $marineInsurance], 200);
    }
}
