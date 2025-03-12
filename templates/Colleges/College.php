<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Career Compass | Colleges</title>
    <link href="../../assets/css/style.css" rel="stylesheet">
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet"/>
    <style>
        /* General Grid Styling */
        .row {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            padding: 20px;
            max-width: 1200px;
            margin: 0 auto;
        }

        /* Individual Column Styling */
        .col {
            background: white;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            border-radius: 8px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .col:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
        }

        /* Styling for text inside .col */
        .col h3 {
            margin-top: 0;
            font-size: 1.4em;
            color: #333;
        }

        .col p {
            margin: 8px 0;
            color: #555;
        }

        .col strong {
            font-weight: bold;
        }

        .star {
            font-size: 24px;
            color: #ccc;
            margin-right: 3px;
        }

        .star.filled {
            color: gold;
        }

        .college-col-title {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .college-col-title div {
            display: flex;
            align-items: center;
            gap: 20px;
            flex-direction: column;
            font-size: 26px;
        }

        /* Popup Styling */
        .popup {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            align-items: center;
            justify-content: center;
        }

        .popup-content {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            width: 500px;
        }

        .popup .close-btn {
            color: #aaa;
            font-size: 28px;
            font-weight: bold;
            position: absolute;
            top: 10px;
            right: 15px;
            cursor: pointer;
        }

        .popup .close-btn:hover,
        .popup .close-btn:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        .input-box {
            margin-bottom: 20px;
        }

        .input-box input {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .update-btn {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .update-btn:hover {
            background-color: #45a049;
        }

        .delete-btn {
            color: red;
            cursor: pointer;
        }

        .delete-btn:hover {
            color: darkred;
        }

        /* Search Box Styling */
        .search-box {
            margin-bottom: 20px;
            text-align: center;
        }

        .search-box input {
            padding: 10px;
            font-size: 14px;
            width: 80%;
            max-width: 500px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
    </style>
</head>
<body>

<div class="admin-colleges">
    <div class="notification"></div>
	<?php
	if ( file_exists( '../NavBar/NavBar.html' ) ) {
		include '../NavBar/NavBar.html';
	}
	?>
    <h1 class="title">Modify Colleges</h1>
</div>

<div class="admin-colleges-container">
    <h1>These are the Colleges</h1>
    <div style="text-align: center; margin-bottom: 20px;">
        <button class="update-btn" id="create-new-btn">Create New College</button>
    </div>
    <!-- Search Box -->
    <div class="search-box">
        <input type="text" id="search-input" placeholder="Search colleges by name..."/>
    </div>

    <div class="row" id="college-list">
		<?php
		if ( file_exists( '../../config.php' ) ) {
			include '../../config.php';
		}

		$query  = 'SELECT * FROM career_combass_colleges';
		$result = mysqli_query( $conn, $query );


while ( $row = mysqli_fetch_assoc( $result ) ) {
    ?>
        <div class="col" data-university="<?php echo htmlspecialchars( $row['university'] ); ?>"
             data-college="<?php echo htmlspecialchars( $row['college'] ); ?>">
            <div class="college-col-title">
                <h3><?php echo htmlspecialchars( $row['university'] ); ?></h3>
                <div>
                    <a href="#" class="edit-college-btn" data-id="<?php echo $row['id']; ?>"
                       data-university="<?php echo htmlspecialchars( $row['university'] ); ?>"
                       data-college="<?php echo htmlspecialchars( $row['college'] ); ?>"
                       data-college_type="<?php echo htmlspecialchars( $row['college_type'] ); ?>"
                       data-state="<?php echo htmlspecialchars( $row['state'] ); ?>"
                       data-district="<?php echo htmlspecialchars( $row['district'] ); ?>"
                       data-star="<?php echo $row['star']; ?>"
                        data-admission="<?php echo $row['admission_data']; ?>"
                    >
                        <i class='bx bx-edit' style="color: #3498db;"></i>
                    </a>
                    <a href="#" class="delete-college-btn" data-id="<?php echo $row['id']; ?>">
                        <i class='bx bxs-trash' style="color: red"></i>
                    </a>
                </div>
            </div>
            <p><strong>College:</strong> <?php echo htmlspecialchars( $row['college'] ); ?></p>
            <p><strong>Type:</strong> <?php echo htmlspecialchars( $row['college_type'] ); ?></p>
            <p><strong>State:</strong> <?php echo htmlspecialchars( $row['state'] ); ?></p>
            <p><strong>District:</strong> <?php echo htmlspecialchars( $row['district'] ); ?></p>

		    <?php
		    // Display star rating
		    $rating = $row['star'];
		    for ( $i = 1; $i <= 5; $i++ ) {
			    if ( $i <= $rating ) {
				    echo '<span class="star filled">&#9733;</span>';
			    } else {
				    echo '<span class="star">&#9733;</span>';
			    }
		    }

		    // Check and display admission data if available
		    if ( !empty( $row['admission_data'] ) ) {
			    ?>
                <p><strong>Admission Process: </strong><?php echo htmlspecialchars( $row['admission_data'] ); ?></p>
			    <?php
		    }
		    ?>
        </div>
	    <?php } ?>

    </div>
</div>
<!-- Popup for Creating College -->
<div id="create-popup" class="popup">
    <div class="popup-content">
        <span class="close-btn">&times;</span>
        <h2>Create New College</h2>
        <form id="create-college-form">
            <div class="input-box">
                <input type="text" id="create-university" name="university" placeholder="University Name" required>
            </div>
            <div class="input-box">
                <input type="text" id="create-college" name="college" placeholder="College Name" required>
            </div>
            <div class="input-box">
                <input type="text" id="create-college_type" name="college_type" placeholder="College Type" required>
            </div>
            <div class="input-box">
                <input type="text" id="create-state" name="state" placeholder="State" required>
            </div>
            <div class="input-box">
                <input type="text" id="create-district" name="district" placeholder="District" required>
            </div>
            <div class="input-box">
                <input type="number" id="create-star" name="star" placeholder="Star Rating" min="1" max="5" required>
            </div>
            <div class="input-box">
                <textarea name="admission-data" rows="5" style="width: 100%; height: 20vh;" placeholder="Admission Data"></textarea>
            </div>
            <button type="submit" class="update-btn">Create College</button>
        </form>
    </div>
</div>


<!-- Popup for Editing College -->
<div id="edit-popup" class="popup">
    <div class="popup-content">
        <span class="close-btn">&times;</span>
        <h2>Edit College Details</h2>
        <form id="edit-college-form">
            <div class="input-box">
                <input type="text" id="university" name="university" placeholder="University Name" required>
            </div>
            <div class="input-box">
                <input type="text" id="college" name="college" placeholder="College Name" required>
            </div>
            <div class="input-box">
                <input type="text" id="college_type" name="college_type" placeholder="College Type" required>
            </div>
            <div class="input-box">
                <input type="text" id="state" name="state" placeholder="State" required>
            </div>
            <div class="input-box">
                <input type="text" id="district" name="district" placeholder="District" required>
            </div>
            <div class="input-box">
                <input type="number" id="star" name="star" placeholder="Star Rating" min="1" max="5" required>
            </div>
          <p style="color: #333; font-size: 14px;">  (If admission going on) </p>
            <div class="input-box">
                <textarea name="admission-data" id="admission_data" rows="5" style="width: 100%; height: 20vh; border: 1px solid #333; outline: none;  color: #333; font-size: 16px"></textarea></div>
            <input type="hidden" id="college_id" name="college_id">
            <button type="submit" class="update-btn">Update College</button>
        </form>
    </div>
</div>

<script>
    // Show create college popup
    document.getElementById('create-new-btn').addEventListener('click', function () {
        document.getElementById('create-popup').style.display = 'flex';
    });

    // Close the popup when clicking the close button
    document.querySelectorAll('.close-btn').forEach(btn => {
        btn.addEventListener('click', function () {
            document.getElementById('edit-popup').style.display = 'none';
            document.getElementById('create-popup').style.display = 'none';
        });
    });

    // Handle Create College form submission with AJAX
    document.getElementById('create-college-form').addEventListener('submit', function (e) {
        e.preventDefault();

        const formData = new FormData(this);

        fetch('createCollege.php', {
            method: 'POST',
            body: formData
        }).then(response => response.json()) // Parse JSON response
            .then(data => {
                createToast(data.type, data.icon, data.title, data.text);
                document.getElementById('create-popup').style.display = 'none';
                setTimeout(function () {
                    location.reload();
                }, 5000);
            })
            .catch(error => {
                createToast('error', 'bx bx-x', 'Error', 'Failed to create college.');
            });
    });

    document.querySelectorAll('.edit-college-btn').forEach(btn => {
        btn.addEventListener('click', function (e) {
            e.preventDefault();

            // Get college details from data attributes
            const collegeDetails = this.dataset;
            console.log(collegeDetails)
            document.getElementById('university').value = collegeDetails.university;
            document.getElementById('college').value = collegeDetails.college;
            document.getElementById('college_type').value = collegeDetails.college_type;
            document.getElementById('state').value = collegeDetails.state;
            document.getElementById('district').value = collegeDetails.district;
            document.getElementById('star').value = collegeDetails.star;
            document.getElementById('college_id').value = collegeDetails.id;
            document.getElementById('admission_data').value = collegeDetails.admission;


            // Show the popup
            document.getElementById('edit-popup').style.display = 'flex';
        });
    });

    // Close the popup when clicking the close button
    document.querySelector('.close-btn').addEventListener('click', function () {
        document.getElementById('edit-popup').style.display = 'none';
    });

    // Handle form submission with AJAX
    document.getElementById('edit-college-form').addEventListener('submit', function (e) {
        e.preventDefault();

        const formData = new FormData(this);

        fetch('handleActions.php', {
            method: 'POST',
            body: formData
        }).then(response => response.json()) // Parse JSON response
            .then(data => {
                console.log(data);
                createToast(data.type, data.icon, data.title, data.text);
                document.getElementById('edit-popup').style.display = 'none';
                setTimeout(function () {
                    location.reload();
                }, 5000);
            })
            .catch(error => {
                createToast('error', 'bx bx-x', 'Error', 'Failed to update college.');
            });
    });

    // Function to create toast notifications
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

    // Handle delete button click
    document.querySelectorAll('.delete-college-btn').forEach(deleteBtn => {
        deleteBtn.addEventListener('click', function (e) {
            e.preventDefault();

            const collegeId = this.dataset.id;

            if (confirm('Are you sure you want to delete this college?')) {
                fetch('deleteCollege.php', {
                    method: 'POST',
                    body: JSON.stringify({delete_id: collegeId})
                }).then(response => response.json())
                    .then(data => {
                        createToast(data.type, data.icon, data.title, data.text);
                        setTimeout(function () {
                            location.reload();
                        }, 5000);
                    })
                    .catch(error => {
                        createToast('error', 'bx bx-x', 'Error', 'Failed to delete college.');
                    });
            }
        });
    });

    // Search functionality
    document.getElementById('search-input').addEventListener('input', function () {
        const searchQuery = this.value.toLowerCase(); // Get the input from the search box
        const collegeCards = document.querySelectorAll('.col'); // Get all the college cards

        collegeCards.forEach(card => {
            const collegeName = card.getAttribute('data-college').toLowerCase();
            const universityName = card.getAttribute('data-university').toLowerCase();

            // Check if either the college name or the university name matches the search query
            if (collegeName.includes(searchQuery) || universityName.includes(searchQuery)) {
                card.style.display = ''; // Show the card if it matches the search query
            } else {
                card.style.display = 'none'; // Hide the card if it doesn't match the search query
            }
        });
    });
</script>

</body>
</html>
