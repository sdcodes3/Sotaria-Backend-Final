<?php

use App\Http\Controllers\Api\AccidentInsuranceController;
use App\Http\Controllers\Api\AutomativeInsuranceController;
use App\Http\Controllers\Api\CustomerController;
use App\Http\Controllers\API\IndividualController;
use App\Http\Controllers\Api\MarineInsuranceController;
use App\Http\Controllers\api\PetInsuranceController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/customers', [CustomerController::class, 'getCustomers']);
Route::get('/customer/{id}', [CustomerController::class, 'getCustomer']);
Route::post('/customer', [CustomerController::class, 'createCustomer']);
Route::put('/customer/{id}', [CustomerController::class, 'updateCustomer']);

// MarineInsurance
Route::post('/marine-insurance', [MarineInsuranceController::class, 'store']);
Route::put('/marine-insurance/{id}', [MarineInsuranceController::class, 'update']);

//Accident Insurance Route
Route::post('/accident-insurance', [AccidentInsuranceController::class, 'store']);
Route::put('/accident-insurance/{id}', [AccidentInsuranceController::class, 'update']);

//Automative Insurance Route
Route::post('/automative-insurance', [AutomativeInsuranceController::class, 'store']);
Route::put('/automative-insurance/{id}', [AutomativeInsuranceController::class, 'update']);

//pet Insurance
Route::post('/petsinsurance-create', [PetInsuranceController::class, 'storePetInsurance']);
Route::put('/petsinsurance-insurance/{id}', [PetInsuranceController::class, 'update']);

Route::middleware('auth:sanctum')->group(function () {
    Route::post('/home-insurance', [CustomerController::class, 'homeInsurance']);
    Route::post('/individual-insurance', [IndividualController::class, 'individualInsurance']);
});
