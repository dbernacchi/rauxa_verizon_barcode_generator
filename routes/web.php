<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome', [
    	'client_name' => 'Enter the name of the client requesting, e.x. “Darci Cianci”',
		'vendor' => 'Select the vendor creating the barcodes',
		'market' => 'Select the market the barcodes will be loaded for',
		'action' => 'Replace file logic: In order to completely replace existing barcodes with new barcodes, the first row in the “replace” UNL file must reflect, for example: RAUXA~NA~S~<GroupID>~ZZZZZZZZZZZZZZZZZZZZ <br /> Note: there must be 20 “Z” listed in the Barcode Group ID section',
		'group_id' => 'This is a client provided ID that ties into their discounting system and should be entered without modification, example: HHSE100OFSPBASE0117',
		'barcode_id' => 'An identifier for the barcode set, example: Job number (VNA12345), promo description (175OFF), sometimes client provided (SEQ12yr). The Barcode ID may need to be shortened to ensure the SUM of the Barcode ID and the Group ID is less than or equal to 20 characters (can never shorten the Group ID).',
		'split_num' => 'First file will contain the number of records indicated in this field, the second file will contain the remainder',
		'total' => 'Total number of records to generate.'
    ]);
});
