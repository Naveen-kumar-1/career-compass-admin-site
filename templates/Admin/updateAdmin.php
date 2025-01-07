<?php
if ( $_SERVER['REQUEST_METHOD'] === 'POST' ) {
	include '../../config.php';

	// Get the submitted form data
	$email    = mysqli_real_escape_string( $conn, $_POST['email'] );
	$password = mysqli_real_escape_string( $conn, $_POST['password'] );

	// SQL query to update the admin details
	$query = "UPDATE `career-compass-admin` SET email='$email', password='$password' WHERE id=1"; // Assumed ID = 1

	if ( mysqli_query( $conn, $query ) ) {
		// Return success response
		echo json_encode( [
			'success' => true,
			'type'    => 'success',
			'icon'    => 'bx bxs-check-circle',
			'title'   => 'Success',
			'text'    => 'Admin details updated successfully',
		] );
	} else {
		// Return error response
		echo json_encode( [
			'success' => false,
			'type'    => 'error',
			'title'   => 'Error',
			'text'    => 'Failed to update admin details.'
		] );
	}

	// Close the database connection
	mysqli_close( $conn );
}
?>
