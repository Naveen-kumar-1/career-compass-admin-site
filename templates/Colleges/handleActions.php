<?php
if ( $_SERVER['REQUEST_METHOD'] === 'POST' ) {
	include '../../config.php';

	// Get the submitted form data
	$college_id   = $_POST['college_id'];
	$university   = mysqli_real_escape_string( $conn, $_POST['university'] );
	$college      = mysqli_real_escape_string( $conn, $_POST['college'] );
	$college_type = mysqli_real_escape_string( $conn, $_POST['college_type'] );
	$state        = mysqli_real_escape_string( $conn, $_POST['state'] );
	$district     = mysqli_real_escape_string( $conn, $_POST['district'] );
	$admissionData = mysqli_real_escape_string( $conn, $_POST['admission-data'] );
	$star         = (int) $_POST['star'];
if(!empty($admissionData)) {
	// Check if the 'admission_data' column exists in the table
	$checkColumnQuery = "SHOW COLUMNS FROM career_combass_colleges LIKE 'admission_data'";
	$result           = mysqli_query( $conn, $checkColumnQuery );

	// If the 'admission_data' column doesn't exist, add it
	if ( mysqli_num_rows( $result ) == 0 ) {
		$alterTableQuery = "ALTER TABLE career_combass_colleges ADD admission_data TEXT";
		mysqli_query( $conn, $alterTableQuery );
	}
}
	// SQL query to update the college details including 'admission_data'
	$query = "UPDATE career_combass_colleges 
              SET university='$university', college='$college', college_type='$college_type', state='$state', district='$district', star=$star, admission_data='$admissionData' 
              WHERE id=$college_id";

	if ( mysqli_query( $conn, $query ) ) {
		// Return success response
		echo json_encode( [
			'type'  => 'success',
			'icon'  => 'bx bxs-check-circle',
			'title' => 'Success',
			'text'  => 'College details updated successfully',
		] );
	} else {
		// Return error response
		echo json_encode( [
			'type'  => 'error',
			'title' => 'Error',
			'text'  => 'Failed to update the college details.'
		] );
	}

	// Close the database connection
	mysqli_close( $conn );
}
?>
