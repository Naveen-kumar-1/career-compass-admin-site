<?php

if ( $_SERVER['REQUEST_METHOD'] === 'POST' ) {
	include '../../config.php';

	// If it's a create request
	if ( isset( $_POST['university'], $_POST['college'], $_POST['college_type'], $_POST['state'], $_POST['district'], $_POST['star'] ) ) {
		$university     = $_POST['university'];
		$college        = $_POST['college'];
		$college_type   = $_POST['college_type'];
		$state          = $_POST['state'];
		$district       = $_POST['district'];
		$star           = (int) $_POST['star'];
		$admission_data = isset( $_POST['admission-data'] ) ? $_POST['admission-data'] : '';
if(!empty($admission_data)) {
	// Check if the 'admission_data' column exists
	$column_check_query  = "SHOW COLUMNS FROM career_combass_colleges LIKE 'admission_data'";
	$column_check_result = mysqli_query( $conn, $column_check_query );

	if ( mysqli_num_rows( $column_check_result ) == 0 ) {
		// 'admission_data' column doesn't exist, alter the table to add it
		$alter_table_query = "ALTER TABLE career_combass_colleges ADD COLUMN admission_data TEXT";
		if ( mysqli_query( $conn, $alter_table_query ) ) {
			echo json_encode( [
				'type'  => 'info',
				'icon'  => 'bx bx-info-circle',
				'title' => 'Info',
				'text'  => 'admission_data column added.'
			] );
		} else {
			echo json_encode( [
				'type'  => 'error',
				'icon'  => 'bx bx-x',
				'title' => 'Error',
				'text'  => 'Failed to add admission_data column.'
			] );
			exit;
		}
	}
}
		// Proceed to insert the data into the table
		$query = "INSERT INTO career_combass_colleges (university, college, college_type, state, district, star, admission_data)
                  VALUES ('$university', '$college', '$college_type', '$state', '$district', '$star', '$admission_data')";
		if ( mysqli_query( $conn, $query ) ) {
			echo json_encode( [ 'type'  => 'success',
			                    'icon'  => 'bx bx-check',
			                    'title' => 'Success',
			                    'text'  => 'College created successfully.'
			] );
		} else {
			echo json_encode( [ 'type'  => 'error',
			                    'icon'  => 'bx bx-x',
			                    'title' => 'Error',
			                    'text'  => 'Failed to create college.'
			] );
		}
	}
}

