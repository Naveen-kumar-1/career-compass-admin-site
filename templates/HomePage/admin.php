<?php
session_start(); // Start the session

// Check if the user is logged in
if ( ! isset( $_SESSION['logged_in'] ) || $_SESSION['logged_in'] !== true ) {
	header( 'Location: index.php' );
	exit;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Carreer-Compass | Admin</title>
    <link rel="stylesheet" href="../../assets/css/style.css"/>
    <link
            href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
            rel="stylesheet"
    />
</head>
<body>
<div class="career-compass-admin">
    <div class="notification"></div>
	<?php
	if ( file_exists( '../NavBar/NavBar.html' ) ) {
		include '../NavBar/NavBar.html';
	}
	?>
    <div class="admin-content">
        <div class="text-content">
            <h1>Welcome Back Chief <i class='bx bx-happy-alt'></i></h1>
            <p class="admin-para">Welcome to Career Compass, your all-in-one platform for guiding and empowering
                individuals on their
                professional journeys. Whether you're managing career development tools, curating job opportunities, or
                offering guidance, Career Compass provides the features you need to help users find their path. </p>
            <div class="admin-explore-bts">
                <a href="#" class="course-btn">Edit Courses <i class='bx bx-right-arrow-alt'></i></a>
                <a href="#" class="college-btn">Edit Colleges <i class='bx bx-right-arrow-alt'></i></a>
            </div>
        </div>
        <img src="../../images/admin-banner.gif"/>
    </div>
</div>
</div>
<script src="../../assets/js/admin.js"></script>

</body>
</html>