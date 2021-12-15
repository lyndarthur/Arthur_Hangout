<?php
require_once __DIR__ . '/../lib/database_connection.php';
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Create User Info</title>
  

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
    
</head>
<body>

    <div class="main">
        <div class="container">
            <div class="signup-content">
                <div class="signup-img">
                    <img src="images/signup-img.jpg" alt="">
                </div>
                <div class="signup-form">
                <button style= "  width: 140px;height: 40px;display: inline-block;font-family: 'Poppins';font-weight: 400;font-size: 13px; text-decoration:none; padding: 10px;border: none;cursor: pointer; background: #ff4a17;color: #ffffff;"><a href='edituserinfo.php' alt='Broken Link'>Edit profile</a></button>
                    <form method="POST" class="register-form" id="register-form">
                        <h2>Create User Info</h2>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="name">First name :</label>
                                <input type="text" name="fname" id="name" required/>
                            </div>
                            


                            <div class="form-group">
                                <label for="lastr_name">Last Name :</label>
                                <input type="text" name="lname" id="father_name" required/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="nationality">Nationality :</label>
                            <input type="text" name="nationality" id="father_name" required/>
                        </div>

                        <div class="form-group">
                            <label for="phone_number">Tel :</label>
                            <input type="text" name="tel" id="birth_date">
                        </div>

                        <div class="form-group">
                            <label for="email">Email :</label>
                            <input type="email" name="email" id="email" />
                        </div>
                        
                        <div class="form-group">
                            <label for="address">Address| streetname : </label>
                            <input type="text" name="streetname" id="address" required/>
                        </div>

                        <div class="form-group">
                            <label for="address">House number :</label>
                            <input type="text" name="houseno" id="address" required/>
                        </div>

                        <div class="form-radio">
                            <label for="gender" class="radio-label">Gender :</label>
                            <div class="form-radio-item">
                                <input type="radio" name="gender" id="male" checked>
                                <label for="male">Male</label>
                                <span class="check"></span>
                            </div>
                            <div class="form-radio-item">
                                <input type="radio" name="gender" id="female">
                                <label for="female">Female</label>
                                <span class="check"></span>
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="form-group">
                                <label for="state">Region :</label>
                                <div class="form-select">
                                    <select name="region" id="region">
                                        <option value=""></option>
                                        <option value="Oti">Oti</option>
                                        <option value="Bono East">Bono East</option>
                                        <option value="Ahafo">Ahafo</option>
                                        <option value="Bono">Bono</option>
                                        <option value="Northern Eastern">North East</option>
                                        <option value="Savannah">Savannah</option>
                                        <option value="Western North">Western North</option>
                                        <option value="Western">Western</option>
                                        <option value="Greater Accra">Greater Accra</option>
                                        <option value="Eastern">Eastern</option>
                                        <option value="Ashanti">Ashanti</option>
                                        <option value="Central">Central</option>
                                        <option value="Northern">Northern</option>
                                        <option value="Upper East">Upper East</option>
                                        <option value="Upper West">Upper West</option>
                                                                               

                                    </select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="city">City :</label>
                                <input type="text" name="city" id="pincode">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="birth_date">DOB :</label>
                            <input id="date" name="dob" placeholder="YYYY-DD-YY" type="text"/>
                        </div>

                        
                        <div class="form-group">
                            <label for="age">Age :</label>
                            <input type="text" name="age" id="pincode">
                        </div>

                        <div class="form-row">
                            <div class="form-group">
                                <label for="state">Results :</label>
                                <div class="form-select">
                                    <select name="results" id="state">
                                        <option value="yes">Yes</option>
                                        <option value="no">No</option>
                                    </select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="birth_date">Reason :</label>
                            <input type="text" name="reason" id="birth_date">
                        </div>
                        
                        <div class="form-submit">
                            <input type="submit" value="Reset All" class="submit" name="reset" id="reset" />
                            <input type="submit" value="Submit Form" class="submit" name="submit" id="submit" />
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>

<?php

if(isset($_POST['submit']))
{	 
	 $fname = $_POST['fname'];
	 $lname = $_POST['lname'];
	 $nationality = $_POST['nationality'];
     $tel = $_POST['tel'];
     $email = $_POST['email'];
	 $streetname = $_POST['streetname'];
	 $houseno = $_POST['houseno'];
     $gender = $_POST['gender'];
	 $region  = $_POST['region'];
	 $city = $_POST['city'];
     $dob = $_POST['dob'];
     $age = $_POST['age'];
     $reason = $_POST['reason'];
     $results = $_POST['results'];
     $id = $fname[0].$lname[0].substr($tel, -3); // user_id is the first letter of their first and last name and the last 3 digits of their telephone number 

	 $sql = "INSERT INTO `person` (`personID`, `fname`, `lname`, `gender`, `age`, `dob`, `nationality`, `tel`, `personal_email`) VALUES ('$id','$fname','$lname','$gender','$age','$dob','$nationality','$tel','$email')";
     $sql_address = "INSERT INTO `address`(`personid`,`Streetname`,`houseNumber`,`city`,`region`) VALUES ('$id','$streetname','$houseno','$city','$region')";
     $sql_testresults = "INSERT INTO `testresults` (`personID`, `results`, `reason`) VALUES ('$id','$results','$reason')";   
	 if (mysqli_query($conn, $sql)) {
		echo "New record created successfully !";
	 } else {
		echo "Error: " . $sql . "
" . mysqli_error($conn);
	 }

     if (mysqli_query($conn, $sql_address)) {
		echo "New record created successfully !";
	 } else {
		echo "Error: " . $sql_address . "
" . mysqli_error($conn);
	 }
         
	 if (mysqli_query($conn, $sql_testresults)) {
		echo "New record created successfully !";
	 } else {
		echo "Error: " . $sql_testresults . "
" . mysqli_error($conn);
	 }
	 mysqli_close($conn);
}
?>