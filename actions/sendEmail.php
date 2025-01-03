<?php

namespace CCA\actions;

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

if ( file_exists( '../vendor/autoload.php' ) ) {
	require '../vendor/autoload.php';
}

class sendEmail {

	public static function sendEmail( $email ) {

		$otp = rand( 100000, 999999 );

		// Include database configuration
		if ( file_exists( '../config.php' ) ) {
			include '../config.php';
		}

		// Step 1: Check if the 'otp' column exists in the 'career-compass-admin' table
		$checkColumnQuery = "SHOW COLUMNS FROM `career-compass-admin` LIKE 'otp'";
		$result           = $conn->query( $checkColumnQuery );

		if ( $result->num_rows == 0 ) {
			// If 'otp' column does not exist, create it
			$createColumnQuery = "ALTER TABLE `career-compass-admin` ADD COLUMN `otp` INT(6)";
			if ( $conn->query( $createColumnQuery ) !== true ) {
				return "Error: Column 'otp' could not be created.";
			}
		}

		// Step 2: Update the OTP value for the given email
		$updateQuery = "UPDATE `career-compass-admin` SET `otp` = ? WHERE `email` = ?";
		$updateStmt  = $conn->prepare( $updateQuery );
		if ( $updateStmt ) {
			$updateStmt->bind_param( "is", $otp, $email );
			$updateStmt->execute(); // Execute the query to update OTP
			$updateStmt->close();
		}

		// Step 3: Send OTP via email using PHPMailer
		$mail = new PHPMailer( true );

		try {
			// Server settings
			$mail->isSMTP();
			$mail->Host       = 'smtp.gmail.com'; // Replace with your SMTP server
			$mail->SMTPAuth   = true;
			$mail->Username   = 'codemavericknk@gmail.com'; // Your email
			$mail->Password   = 'gegv ykno xjdl tvoe'; // Your email app password
			$mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
			$mail->Port       = 587;

			// Recipients
			$mail->setFrom( 'codemavericknk@gmail.com', 'Your Company' );
			$mail->addAddress( $email );

			// Content
			$mail->isHTML( true );
			$mail->Subject = 'Your OTP Code';
			$mail->Body    = "<p>Your OTP code is <strong>$otp</strong>. This code is valid for 10 minutes.</p>";
			$mail->AltBody = "Your OTP code is $otp. This code is valid for 10 minutes.";

			// Send the email
			$mail->send();

			return true; // Successfully sent OTP
		} catch ( Exception $e ) {
			// Log the error message for debugging
			error_log( "Mailer Error: {$mail->ErrorInfo}" );

			return "Error: OTP could not be sent. Mailer Error: {$mail->ErrorInfo}";
		}
	}
}
