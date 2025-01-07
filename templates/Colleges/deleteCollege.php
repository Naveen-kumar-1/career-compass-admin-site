<?php
if ( $_SERVER['REQUEST_METHOD'] === 'POST' ) {
	include '../../config.php';

	// Get the ID of the college to delete
	$data       = json_decode( file_get_contents( 'php://input' ), true );
	$college_id = (int) $data['id'];

	// SQL query to delete the college
	$query = "DELETE FROM career_combass_colleges WHERE id = $college_id";

	if ( mysqli_query( $conn, $query ) ) {
		// Return success response
		echo json_encode( [
			'type'  => 'success',
			'icon'  => 'bx bxs-check-circle',
			'title' => 'Success',
			'text'  => 'College deleted successfully.',
		] );
	} else {
		// Return error response
		echo json_encode( [
			'type'  => 'error',
			'title' => 'Error',
			'text'  => 'Failed to delete the college.',
		] );
	}

	// Close the database connection
	mysqli_close( $conn );
}
?>
