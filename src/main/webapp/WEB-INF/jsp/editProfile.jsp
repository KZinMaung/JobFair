<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
  <!-- for date picker////////////////// -->
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css">
	<style type="text/css">
		.container {
			margin-top: 40px;
		}
		.btn-primary {
			width: 100%;
		}
	</style>

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/2.14.1/moment.min.js"></script> 
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> 
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>

	<script type='text/javascript'>
		$( document ).ready(function() {
			$('#datetimepicker1').datetimepicker();
		});
	</script>

<style>
.w3-sidebar a {font-family: "Roboto", sans-serif}
body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Montserrat", sans-serif;}



input[type=text], select {
    width: 100%;
    
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
textarea {
    width: 100%;
    height:20%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

div.box {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style>
<body class="w3-content" style="max-width:1200px"><!-- STARTING BODYYYYYYYYYYYYYYYYYYYYYYYYYYYYY -->

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-bar-block w3-white w3-collapse w3-top" style="z-index:3;width:250px" id="mySidebar">
  <div class="w3-container w3-display-container w3-padding-16">
    <i onclick="w3_close()" class="fa fa-remove w3-hide-large w3-button w3-display-topright"></i>
    <h3 class="w3-wide"><b>COMPANY</b></h3>
  </div>
  <div class="w3-padding-64 w3-large w3-text-grey" style="font-weight:bold">
    <a href="#postJob" class="w3-bar-item w3-button"><i class="fa fa-briefcase" aria-hidden="true"></i>Post Job</a>
    <a href="#postSchedule" class="w3-bar-item w3-button"><i class="fa fa-calendar" aria-hidden="true"></i>Post Schedule</a>
    <form action="loadProfile" method="post" >
      <button    type="submit" class="w3-bar-item w3-button"><i class="fa fa-user" aria-hidden="true"></i>Edit Profile</button>
      </form>
       <form>
   <button type="submit" class="w3-bar-item w3-button"><i class="fa fa-unlock-alt" aria-hidden="true"></i>Change Password</button>
   </form>
   <form>
   <button type="submit" class="w3-bar-item w3-button"><i class="fa fa-list-alt" aria-hidden="true"></i>Approved List</button>
   </form>
    <form action="viewAppliedList" method="post">
    
    <button type="submit" class="w3-bar-item w3-button"><i class="fa fa-list-alt" aria-hidden="true"></i>Applied List</button>
     </form>
  </div>

</nav>

<!-- Top menu on small screens -->
<header class="w3-bar w3-top w3-hide-large w3-black w3-xlarge">
  <div class="w3-bar-item w3-padding-24 w3-wide">COMPANY</div>
  <a href="javascript:void(0)" class="w3-bar-item w3-button w3-padding-24 w3-right" onclick="w3_open()"><i class="fa fa-bars"></i></a>
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:250px">

  <!-- Push down content on small screens -->
  <div class="w3-hide-large" style="margin-top:83px"></div>
  
   <header class="w3-container w3-xlarge">
 
    <p class="w3-right">
    <!-- This is where Logout button and views should exit////////////////////////////////////////// -->
     
     
      <button type="button" class="btn btn-info"><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</button>
    </p>
  </header>
  
  <!--   editProfile.jsp//////////////////////////////////////////////// -->
<div class="w3-row-padding w3-padding-16" id="edit">
    <h4 id="about"><b>Edit Your Profile</b></h4>
    <div class="w3-row-padding w3-center w3-padding-24" style="margin:0 -16px">
      <div class="w3-third w3-dark-grey">
        <p><i class="fa fa-edit w3-xxlarge w3-text-light-grey"></i></p>
        <p>It's a good idea to use a right information</p>
      </div>
     
     
    </div>
    <hr class="w3-opacity">
    <form action="updateProfile"  method="post"  >
      <div class="w3-section" >
        <label><i class="fa fa-envelope" aria-hidden="true"></i>
        Email</label>
        <input class="w3-input w3-border" type="text" name="com_Email"  required value="${profile.comEmail}">
      </div>
      <div class="w3-section">
        <label><i class="fa fa-globe" aria-hidden="true"></i>
        WebSite</label>
        <input class="w3-input w3-border" type="text" name="com_Website" required value="${profile.comWebsite}">
      </div>
      <div class="w3-section">
        <label><i class="fa fa-user" aria-hidden="true"></i>
        Name</label>
        <input class="w3-input w3-border" type="text" name="com_Name" required value="${profile.comName}">
      </div>
      <div class="w3-section">
        <label><i class="fa fa-phone-square" aria-hidden="true"></i>
        Phone Number</label>
        <input class="w3-input w3-border" type="text" name="com_Phno" required value="${profile.comPhno}">
      </div>
      <div class="w3-section">
        <label><i class="fa fa-map-marker" aria-hidden="true"></i>
        Address</label>
        <input class="w3-input w3-border" type="text" name="com_Address" required value="${profile.comAddress}">
      </div>
      <button type="submit" class="w3-button w3-black w3-margin-bottom"><i class="fa fa-edit w3-margin-right"></i>Update</button>
      <form>
      <button type="submit" class="w3-button w3-black w3-margin-bottom"><i class="glyphicon glyphicon-remove"></i>Cancel</button>
      </form>
    </form>
 
  </div>
<!-- end of editProfile.jsp ////////////////////////////////////////////////////////////-->
 
  <!--  Post Job.jsp////////////////////////////////// -->
  <div class="box" id="postJob">
  <form action="postJob" method="post">
    <label for="fname">Job Title</label>
    <input type="text"   name="jobTitle" placeholder="Enter job title..." required>

    <label for="lname">Number of Openings</label>
    <input type="text"   name="noOfOpening" placeholder="Write a number..." required>
    
    <label for="lname">Salary</label>
    <input type="text"  name="salary" placeholder="Enter salary...">
	
	<label for="lname">Requirements</label>
    <textarea  name="requirement" placeholder="Enter required skills..."></textarea> 
    
    <label for="lname">Descriptions</label>
    <textarea   name="description" placeholder="Enter additional facts your company needs..."></textarea>
   
  
    <input type="submit" value="Post Now">
  </form>
</div>
 <!-- end of Post Job.jsp /////////////////////////////////////-->

<!-- post schedule section////////////////////////////////////////////////////////////////// -->

  <div class="panel panel-primary" id="postSchedule">
    
      <div class="panel-body">
         
              <form action="postSchedule" method="post">
                  <label class="control-label">Date and Time</label>
                  <div class='input-group date' id='datetimepicker1'>
                     <input type="text"  name="sdate_time" placeholder="Select date & time..."/>
                     <span class="input-group-addon">
                     <span class="glyphicon glyphicon-calendar"></span>
                     </span>
                  </div>
               
           
           
           
           
   			
              
                  <label class="control-label">Location</label>
                  <input type="text" name="location" id="fname" placeholder="Write a location..."/>
              
           
            
        <input type="submit" class="btn btn-primary" value="Submit">
        </form>
      </div>
   </div>
<!-- end of post schedule section/////////////////////////////////////////////////////////////////////// -->





<!-- Change Password Section ///////////////////////////////////////////////////////////-->
  <div class="w3-container w3-padding-large w3-grey" id="changepw">
    <h4 id="contact"><b>Change Your Password</b></h4>
    <div class="w3-row-padding w3-center w3-padding-24" style="margin:0 -16px">
      <div class="w3-third w3-dark-grey">
        <p><i class="fa fa-key w3-xxlarge w3-text-light-grey"></i></p>
        <p>It's a good idea to use a strong password that you're not using elsewhere</p>
      </div>
     
     
    </div>
    <hr class="w3-opacity">
    <form action="../changepwd" target="_blank">
      <div class="w3-section">
        <label>Current password</label>
        <input class="w3-input w3-border" type="text" name="stdPwd" required>
      </div>
      <div class="w3-section">
        <label>New password</label>
        <input class="w3-input w3-border" type="text" name="stdnewpwd" required>
      </div>
      <div class="w3-section">
        <label>Retype new password</label>
        <input class="w3-input w3-border" type="text" name="stdretypepwd" required>
      </div>
      <button type="submit" class="w3-button w3-black w3-margin-bottom"><i class="fa fa-save w3-margin-right"></i>Save Changes</button>
      <button type="submit" class="w3-button w3-black w3-margin-bottom"><i class="glyphicon glyphicon-remove"></i>Cancel</button>
    </form>
  </div>
<!-- end of Change Password Section ///////////////////////////////////////////-->



</div>





<!-- functions............. -->
<script>
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}
</script>
</body>
</html>