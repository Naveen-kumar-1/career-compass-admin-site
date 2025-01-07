<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Career Compass | Courses</title>
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

        .delete-btn {
            color: red;
            cursor: pointer;
        }

        .edit-btn {
            color: #3498db;
            cursor: pointer;
        }

        /* Popup Styling */
        .popup {
            display: none; /* Hide by default */
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
            z-index: 999;
        }

        .popup-content {
            background: white;
            padding: 30px;
            border-radius: 8px;
            width: 400px;
            max-width: 100%;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        .popup-content h2 {
            margin-bottom: 20px;
        }

        .input-box input, .input-box textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .input-box textarea {
            resize: vertical;
            height: 100px;
        }

        .update-btn {
            background-color: #3498db;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }

        .update-btn:hover {
            background-color: #2980b9;
        }

        .close-btn {
            font-size: 24px;
            color: #999;
            cursor: pointer;
            position: absolute;
            top: 10px;
            right: 10px;
        }

        .close-btn:hover {
            color: #333;
        }

        /* Search Bar Styling */
        .search-bar {
            width: 100%;
            max-width: 400px;
            margin: 20px auto;
            padding: 10px;
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
    <h1 class="title">Modify Courses</h1>
</div>

<div class="admin-colleges-container">
    <h1>These are the Courses</h1>

    <!-- Search Bar -->
    <input type="text" id="search-bar" class="search-bar" placeholder="Search courses by name or ID">

    <div class="row" id="course-list">
		<?php
		include '../../config.php';

		$query  = 'SELECT * FROM career_combass_courses';
		$result = mysqli_query( $conn, $query );

		while ( $row = mysqli_fetch_assoc( $result ) ) {
			?>
            <div class="col" data-course-name="<?php echo htmlspecialchars( $row['course'] ); ?>"
                 data-course-id="<?php echo htmlspecialchars( $row['course_id'] ); ?>">
                <div class="course-col-title">
                    <h3><?php echo htmlspecialchars( $row['course'] ); ?></h3>
                    <div>
                        <!-- Edit Button -->
                        <i class='bx bx-edit edit-btn' data-id="<?php echo $row['id']; ?>"
                           data-course_id="<?php echo $row['course_id']; ?>"
                           data-course="<?php echo $row['course']; ?>"
                           data-description="<?php echo $row['description']; ?>"></i>
                        <!-- Delete Button -->
                        <i class='bx bxs-trash delete-btn' data-id="<?php echo $row['id']; ?>" style="color: red"></i>
                    </div>
                </div>
                <p><strong>Course ID:</strong> <?php echo htmlspecialchars( $row['course_id'] ); ?></p>
                <p><strong>Description:</strong> <?php echo htmlspecialchars( $row['description'] ); ?></p>
            </div>
		<?php } ?>
    </div>
</div>

<!-- Popup for Editing Course -->
<div id="edit-course-popup" class="popup">
    <div class="popup-content">
        <span class="close-btn">&times;</span>
        <h2>Edit Course Details</h2>
        <form id="edit-course-form">
            <div class="input-box">
                <input type="text" id="course_id" name="course_id" placeholder="Course ID" readonly>
            </div>
            <div class="input-box">
                <input type="text" id="course" name="course" placeholder="Course Name" required>
            </div>
            <div class="input-box">
                <textarea id="description" name="description" placeholder="Course Description" required></textarea>
            </div>
            <input type="hidden" id="course_id_edit" name="course_id_edit">
            <button type="submit" class="update-btn">Update Course</button>
        </form>
    </div>
</div>

<script>
    // Open the edit popup with pre-filled data
    document.querySelectorAll('.edit-btn').forEach(btn => {
        btn.addEventListener('click', function (e) {
            e.preventDefault();

            // Get course details from data attributes
            const courseDetails = this.dataset;
            document.getElementById('course_id').value = courseDetails.course_id;
            document.getElementById('course').value = courseDetails.course;
            document.getElementById('description').value = courseDetails.description;
            document.getElementById('course_id_edit').value = courseDetails.id;

            // Show the popup
            document.getElementById('edit-course-popup').style.display = 'flex';
        });
    });

    // Close the popup when clicking the close button
    document.querySelector('.close-btn').addEventListener('click', function () {
        document.getElementById('edit-course-popup').style.display = 'none';
    });

    // Handle form submission for updating course details
    document.getElementById('edit-course-form').addEventListener('submit', function (e) {
        e.preventDefault();

        const formData = new FormData(this);

        fetch('updateCourse.php', {
            method: 'POST',
            body: formData
        }).then(response => response.json())
            .then(data => {
                if (data.status === 'success') {
                    createToast(data.type, data.icon, data.title, data.text);

                    // Close the popup after successful update
                    document.getElementById('edit-course-popup').style.display = 'none';

                    // Reload the page after 5 seconds
                    setTimeout(function () {
                        location.reload();
                    }, 5000);
                } else {
                    createToast(data.type, data.icon, data.title, data.text);
                }
            });
    });

    // Delete course functionality
    document.querySelectorAll('.delete-btn').forEach(btn => {
        btn.addEventListener('click', function (e) {
            e.preventDefault();
            const courseId = this.dataset.id;

            if (confirm('Are you sure you want to delete this course?')) {
                fetch('deleteCourse.php', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    },
                    body: 'id=' + courseId
                }).then(response => response.json())
                    .then(data => {
                        if (data.status === 'success') {
                            createToast(data.type, data.icon, data.title, data.text);
                            location.reload();
                        } else {
                            createToast(data.type, data.icon, data.title, data.text);
                        }
                    });
            }
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

    // Search functionality
    document.getElementById('search-bar').addEventListener('input', function () {
        const query = this.value.trim().toLowerCase();  // Trim spaces and make it lowercase
        const courses = document.querySelectorAll('.col');  // Select all course elements

        courses.forEach(course => {
            // Retrieve course name and course ID from data attributes
            const courseName = course.getAttribute('data-course-name').toLowerCase();  // Make course name lowercase
            const courseId = course.getAttribute('data-course-id').toLowerCase();  // Make course ID lowercase

            // Show the course if the name or ID matches the query
            if (courseName.includes(query) || courseId.includes(query)) {
                course.style.display = 'block';  // Show course if match found
            } else {
                course.style.display = 'none';  // Hide course if no match found
            }
        });
    });
</script>

</body>
</html>
