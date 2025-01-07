<?php
include '../../config.php';

if ( $_SERVER['REQUEST_METHOD'] === 'POST' ) {
	$course_id_edit = $_POST['course_id_edit'];
	$course_id      = mysqli_real_escape_string( $conn, $_POST['course_id'] );
	$course         = mysqli_real_escape_string( $conn, $_POST['course'] );
	$description    = mysqli_real_escape_string( $conn, $_POST['description'] );

	// SQL query to update course details
	$query = "UPDATE career_combass_courses SET course_id='$course_id', course='$course', description='$description' WHERE id=$course_id_edit";

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
