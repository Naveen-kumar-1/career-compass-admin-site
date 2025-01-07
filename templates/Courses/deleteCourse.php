<?php
include '../../config.php';

if ( $_SERVER['REQUEST_METHOD'] === 'POST' ) {
	$course_id = $_POST['id'];

	// Sanitize the input
	$course_id = mysqli_real_escape_string( $conn, $course_id );

	// SQL query to delete the course
	$query = "DELETE FROM career_combass_courses WHERE id = $course_id";

	if ( mysqli_query( $conn, $query ) ) {
		echo json_encode( [
			'type'  => 'success',
			'icon'  => 'bx bxs-check-circle',
			'title' => 'Success',
			'text'  => 'College deleted successfully.',
		] );
	} else {
		echo json_encode( [
			'type'  => 'error',
			'title' => 'Error',
			'text'  => 'Failed to update the college details.'
		] );
	}

	mysqli_close( $conn );
}
?>
