<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\PetInsurance;
use Illuminate\Http\Request;

class PetInsuranceController extends Controller
{
    public function storePetInsurance(Request $request)
    {
        $data = $request->validate([
            'pet_type' => 'required|string|max:255',
            'owner_name' => 'required|string|max:255',
            'pet_name' => 'required|string|max:255',
            'pet_age' => 'nullable|numeric',
            'gender' => 'nullable|string|max:255',
            'color' => 'nullable|string|max:255',
            'pri_conditions' => 'nullable|string|max:255',
        ]);

        $pet = PetInsurance::create($data);
        return response()->json(['message' => 'Pet created successfully', 'data' => $pet], 201);
    }
    public function update(Request $request, $id)
    {
        $data = $request->validate([
            'pet_type' => 'required|string|max:255',
            'owner_name' => 'required|string|max:255',
            'pet_name' => 'required|string|max:255',
            'pet_age' => 'nullable|numeric',
            'gender' => 'nullable|string|max:255',
            'color' => 'nullable|string|max:255',
            'pri_conditions' => 'nullable|string|max:255',
        ]);

        $pet = PetInsurance::findOrFail($id);
        $pet->update($data);

        return response()->json(['message' => 'Pet updated successfully', 'data' => $pet]);
    }
}
