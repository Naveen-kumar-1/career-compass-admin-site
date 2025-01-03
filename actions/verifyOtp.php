<?php
// Get the raw POST data from the request
$inputData = file_get_contents( "php://input" );

// Decode the JSON data into an associative array
$data = json_decode( $inputData, true );

// Check if the OTP is received
if ( isset( $data['otp'] ) ) {
	$otp_post = $data['otp'];

	// Perform your validation here
	if ( file_exists( '../config.php' ) ) {
		include '../config.php';
	}

	// Query the database to check the OTP
	$query  = "SELECT * FROM `career-compass-admin`";
	$result = $conn->query( $query );


	if ( $result->num_rows > 0 ) {


		// Loop through the database results (if needed)
		while ( $row = $result->fetch_assoc() ) {

			if ( $row['otp'] == $otp_post ) {

				// OTP matches

				// Now, delete the 'otp' column from the table
				$deleteColumnQuery = "ALTER TABLE `career-compass-admin` DROP COLUMN `otp`";
				if ( $conn->query( $deleteColumnQuery ) === true ) {
					// Column dropped successfully
					echo json_encode( [
						'type'     => 'success',
						'title'    => 'Success',
						'text'     => 'OTP verified successfully',
						'redirect' => 'actions/changePassword.php'
					] );
				} else {
					// Error dropping column
					echo json_encode( [
						'type'  => 'error',
						'title' => 'Error',
						'text'  => 'OTP verified but failed to delete OTP column.'
					] );
				}
				exit; // Stop further execution after successful verification

			}
		}
	} else {
		// No user found in the database
		echo json_encode( [
			'type'  => 'error',
			'title' => 'Error',
			'text'  => 'No user found with the provided email.'
		] );
	}
} else {
	// OTP not sent in request
	echo json_encode( [
		'type'  => 'error',
		'title' => 'Error',
		'text'  => 'OTP is missing in the request.'
	] );
}

