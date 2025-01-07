<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin</title>
    <link href="../../assets/css/style.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet"/>

    <!-- Font Awesome for icons -->
</head>
<style>
    /* General Form Style */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
    }

    .admin-colleges {
        margin-bottom: 40px;
    }

    h1.title {
        text-align: center;
        margin-bottom: 30px;
        color: #333;
    }

    h2 {
        color: #333;
        text-align: center;
    }

    .admin-colleges-container {
        width: 100%;
        max-width: 1200px;
        margin: auto;
    }

    form {
        width: 100%;
        margin: auto;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 30px;
        display: flex;
        flex-direction: column;
        gap: 20px;
        background-color: #fff;
    }

    .admin-input {
        display: flex;
        flex-direction: column;
        gap: 10px;
        font-size: 16px;
    }

    .admin-input span {
        font-weight: bold;
        color: #333;
    }

    form input {
        width: 100%;
        padding: 12px;
        border: 1px solid #ddd;
        border-radius: 5px;
        outline: none;
        background: #f3f3f3;
        font-size: 16px;
    }

    form input:focus {
        border-color: #4CAF50;
    }

    form .toggle-password {
        background: none;
        border: none;
        cursor: pointer;
        font-size: 18px;
        color: #888;
    }

    .submit-btn {
        padding: 12px 25px;
        background-color: #4CAF50;
        color: white;
        font-size: 16px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        width: 100%;
    }

    .submit-btn:hover {
        background-color: #45a049;
    }

    .submit-btn:active {
        background-color: #388e3c;
    }


    /* Responsive Styles */
    @media (max-width: 768px) {
        form {
            width: 90%;
            padding: 20px;
        }

        .admin-input {
            flex-direction: column;
        }

        .submit-btn {
            width: 100%;
            padding: 12px;
        }

        .toast {
            width: 90%;
        }
    }

    @media (max-width: 480px) {
        .admin-colleges-container {
            width: 100%;
            padding: 10px;
        }

        form {
            width: 100%;
            padding: 20px;
        }

        .admin-input span,
        .admin-input input {
            font-size: 14px;
        }

        .submit-btn {
            padding: 12px;
        }

        .toast {
            width: 100%;
        }
    }

</style>
<body>
<div class="admin-colleges">
    <div class="notification"></div>
	<?php
	if ( file_exists( '../NavBar/NavBar.html' ) ) {
		include '../NavBar/NavBar.html';
	}
	?>
    <h1 class="title">Welcome, Admin</h1>
</div>

<div class="admin-colleges-container">
    <h1>These are the Admin Details</h1>
    <form id="admin-form">
        <h2>Edit Admin Details</h2>
        <div class="admin-input">
			<?php
			if ( file_exists( '../../config.php' ) ) {
				include '../../config.php';
			}
			$query  = 'SELECT * FROM `career-compass-admin`';
			$result = mysqli_query( $conn, $query );
			while ( $row = mysqli_fetch_assoc( $result ) ) :
			?>
            <span>Email: </span>
            <div>
                <input type="email" name="email" value="<?php echo $row['email'] ?>" required/>
            </div>
        </div>

        <div class="admin-input password-container">
            <span>Password: </span>
            <div style="display: flex;width: 100%;background: #f3f3f3;gap: 20px;">
                <input type="password" name="password" id="password" value="<?php echo $row['password'] ?>" required/>

                <button style="font-size: 22px;padding: 0 10px;cursor: pointer" type="button" class="toggle-password"
                        onclick="togglePassword()">👁️
                </button>
            </div>
        </div>

        <div class="admin-input">
            <button type="submit" class="submit-btn">Update Details</button>
        </div>
		<?php endwhile; ?>
    </form>
</div>

<script>
    // Toggle password visibility
    function togglePassword() {
        const passwordField = document.getElementById('password');
        const toggleButton = document.querySelector('.toggle-password');

        if (passwordField.type === "password") {
            passwordField.type = "text";
            toggleButton.textContent = "🙈"; // Hide the password icon
        } else {
            passwordField.type = "password";
            toggleButton.textContent = "👁️"; // Show the password icon
        }
    }

    // Create Toast notification function
    function createToast(type, icon, title, text) {
        let newToast = document.createElement("div");
        newToast.classList.add("toast", type);
        newToast.innerHTML = `
            <i class='${icon}'></i>
            <div class="toast-content">
                <div class="title">${title}</div>
                <span class="toast-msg">${text}</span>
            </div>
            <i class='bx bx-x' style="cursor: pointer" onclick="(this.parentElement).remove()"></i>
        `;
        document.querySelector(".notification").appendChild(newToast);

        newToast.timeOut = setTimeout(function () {
            newToast.remove();
        }, 5000);
    }

    // Handle form submission using JavaScript (AJAX)
    document.getElementById('admin-form').addEventListener('submit', function (event) {
        event.preventDefault(); // Prevent page reload

        const form = new FormData(this);

        // Send the form data using fetch
        fetch('updateAdmin.php', { // You can change the PHP file name as needed
            method: 'POST',
            body: form
        })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    createToast('success', 'bx bx-check', 'Success', 'Admin details updated successfully!');
                } else {
                    createToast('error', 'bx bx-error', 'Error', 'Error updating details!');
                }
            })
            .catch(error => {
                createToast('error', 'bx bx-error', 'Error', 'An error occurred. Please try again.');
                console.error('Error:', error);
            });
    });
</script>
</body>
</html>
