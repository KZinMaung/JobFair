<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AdminPage</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">




<style>
body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
body {font-size:16px;}
.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w3-half img:hover{opacity:1}


.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}

.button2 {background-color: #008CBA;} /* Blue */
.button3 {background-color: #f44336;} /* Red */ 
.button4 {background-color: #4d4d33; color: black;} /* Gray */ 
.button5 {background-color: #555555;} /* Black */
.button6 {background-color: #c68c53;} /* Black */
.button7 {background-color: #e600ac;} /* Black */



body 				 { background:url(https://scotch.io/wp-content/uploads/2014/07/61.jpg); }
.container 		{ 
 
  font-family:'Roboto';
  width:400px; 
  margin:30px auto 0; 
  display:block; 
  background:#FFF;
  padding:10px 50px 50px;
}
.registerbtn {
    background-color: #000000;
    color: white;
    padding: 16px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}
h2 	 { 
  text-align:center; 
  margin-bottom:50px; 
}
h2 small { 
  font-weight:normal; 
  color:#888; 
  display:block; 
}
.footer 	{ text-align:center; }
.footer a  { color:#53B2C8; }

/* form starting stylings ------------------------------- */
.group 			  { 
  margin-top:45px;
  position:relative; 
  margin-bottom:2px; 
  margin-left:80px;
}
input 				{
  font-size:18px;
  padding:10px 10px 10px 5px;
  display:block;
  width:300px;
  border:none;
  border-bottom:1px solid #757575;
}
input:focus 		{ outline:none; }

/* LABEL ======================================= */
label 				 {
  color:#999; 
  font-size:12px;
  font-weight:normal;
  position:absolute;
  pointer-events:none;
  left:5px;
  top:10px;
  transition:0.2s ease all; 
  -moz-transition:0.2s ease all; 
  -webkit-transition:0.2s ease all;
}

/* active state */
input:focus ~ label, input:valid ~ label 		{
  top:-20px;
  font-size:14px;
  color:#5264AE;
}

/* BOTTOM BARS ================================= */
.bar 	{ position:relative; display:block; width:300px; }
.bar:before, .bar:after 	{
  content:'';
  height:2px; 
  width:0;
  bottom:1px; 
  position:absolute;
  background:#5264AE; 
  transition:0.2s ease all; 
  -moz-transition:0.2s ease all; 
  -webkit-transition:0.2s ease all;
}
.bar:before {
  left:50%;
}
.bar:after {
  right:50%; 
}

/* active state */
input:focus ~ .bar:before, input:focus ~ .bar:after {
  width:50%;
}

/* HIGHLIGHTER ================================== */
.highlight {
  position:absolute;
  height:60%; 
  width:100px; 
  top:25%; 
  left:0;
  pointer-events:none;
  opacity:0.5;
}

/* active state */
input:focus ~ .highlight {
  -webkit-animation:inputHighlighter 0.3s ease;
  -moz-animation:inputHighlighter 0.3s ease;
  animation:inputHighlighter 0.3s ease;
}

/* ANIMATIONS ================ */
@-webkit-keyframes inputHighlighter {
	from { background:#5264AE; }
  to 	{ width:0; background:transparent; }
}
@-moz-keyframes inputHighlighter {
	from { background:#5264AE; }
  to 	{ width:0; background:transparent; }
}
@keyframes inputHighlighter {
	from { background:#5264AE; }
  to 	{ width:0; background:transparent; }
}
body {
    background:#d3d3d3;
}

.content {
    max-width: 500px;
    margin: auto;
    background: white;
    padding: 10px;
}
.registerbtn:hover {
    opacity: 1;
}

/* Add a blue text color to links */
a {
    color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
    background-color: #f1f1f1;
    text-align: center;
}


</style>
</head>
<body>


<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-light-grey w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
  <div class="w3-container">
    <h3 class="w3-padding-64"><b>Administrator</b></h3>
  </div>
  <div class="w3-bar-block">
         <a onclick="myAccFunc()" href="javascript:void(0)" class="w3-button w3-block w3-left-align" id="myBtn"><i class="fa fa-eye" aria-hidden="true"></i>
      View<i class="fa fa-caret-down"></i>
    </a>
    <div id="demoAcc" class="w3-bar-block w3-hide w3-padding-large w3-medium">
    <form action="/jobfair/totalComMembers" method="get">
        <button class="w3-bar-item w3-button w3-light-grey">CompanyMembers</button>
     </form>  
     <form action="/jobfair/CompanyHistory" method="get">
        <button class="w3-bar-item w3-button w3-light-grey">CompanyHistory</button>
     </form>  
     <form action="/jobfair/RegisteredStudents" method="get">
        <button class="w3-bar-item w3-button w3-light-grey">RegisteredStudents</button>
     </form>  
      <form action="/jobfair/ApplyedStudents" method="get">
        <button class="w3-bar-item w3-button w3-light-grey">ApplyedStudents</button>
     </form>  
       <form action="/jobfair/ApprovedStudents" method="get">
        <button class="w3-bar-item w3-button w3-light-grey">ApprovedStudents</button>
     </form>  
       <form action="/jobfair/Event" method="get">
        <button class="w3-bar-item w3-button w3-light-grey">Event</button>
     </form>  
   </div>
   <form action="/jobfair/approveCompanies">
      <button onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white"><i class="fa fa-check" aria-hidden="true"></i>
    Approve Companies</button>
    </form>
  <form action="/jobfair/approveSchedule">
      <button onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white"><i class="fa fa-check" aria-hidden="true"></i>
    Approve Schedule</button>
    </form>
     
    <form action="/jobfair/checkSchedule">
      <button onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white"><i class="fa fa-check" aria-hidden="true"></i>
    Check Schedule</button>
    </form>
    <a href="#edit" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white"><i class="fa fa-pencil" aria-hidden="true"></i>
    Edit Profile</a> 
    <a href="#chgPwd" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white"><i class="fa fa-lock" aria-hidden="true"></i>
    Change Password</a> 
    <a href="#addNewAdmin" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white"><i class="fa fa-plus" aria-hidden="true"></i>
    Add New Admin</a>
  </div>
</nav>

<!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-light-grey w3-xlarge w3-padding">
  <a href="javascript:void(0)" class="w3-button w3-light-grey w3-margin-right" onclick="w3_open()">   <i class="fa fa-bars" aria-hidden="true"></i>
  </a>
  <span>Adminstrator</span>
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:340px;margin-right:40px">
  <div class="w3-container" style="margin-top:80px" >
      <div class="w3-third">
    
      <div class="w3-white w3-text-grey w3-card-4">
        <div class="w3-display-container">
          <img src="/w3images/avatar_hat.jpg" style="width:100%">
          <div class="w3-display-bottomleft w3-container w3-text-black">
            <h2>Dr.Kay Zin Maung</h2>
          </div>
        </div>
        <div class="w3-container">
          <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i>Designer</p>
          <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>London, UK</p>
          <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>ex@mail.com</p>
          <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>1224435534</p>
          <hr>
      </div>
      </div>
      </div>
  
  
    
    
  </div>
  
 

  <!-- Modal for full size images on click-->
  <div id="modal01" class="w3-modal w3-black" style="padding-top:0" onclick="this.style.display='none'">
    <span class="w3-button w3-black w3-xxlarge w3-display-topright">×</span>
    <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
      <img id="img01" class="w3-image">
      <p id="caption"></p>
    </div>
  </div>

  <!-- Services -->
  <div class="w3-container" id="approveComs" style="margin-top:75px">
    
  </div>
  
  <!-- Edit Profile -->
  <div class="w3-container" id="edit" style="margin-top:75px">
  
  
    <h4 ><b>Edit Your Profile</b></h4>
    <div class="w3-row-padding w3-center w3-padding-24" style="margin:0 -16px">
      <div class="w3-third w3-dark-grey">
        <p><i class="fa fa-edit w3-xxlarge w3-text-light-grey"></i></p>
        <p>It's a good idea to use a right information</p>
      </div>
     
     
    </div>
    <hr class="w3-opacity">
    <form action="/action_page.php" target="_blank">
      <div class="w3-section">
        <label>Email</label>
        <input class="w3-input w3-border" type="text" name="admEmail" required>
      </div>
      <div class="w3-section">
        <label>Phone Number</label>
        <input class="w3-input w3-border" type="text" name="admPhno" required>
      </div>
      <div class="w3-section">
        <label>Position</label>
        <input class="w3-input w3-border" type="text" name="admPosition" required>
      </div>
      <button type="submit" class="w3-button w3-black w3-margin-bottom"><i class="fa fa-edit w3-margin-right"></i>Update</button>
      <button type="submit" class="w3-button w3-black w3-margin-bottom">  <i class="fa fa-times" aria-hidden="true"></i>
      Cancel</button>
    </form>
 
  </div>
    
    
 

 
  

  <!-- Change Password -->
 
   <div class="w3-container" id="chgPwd" style="margin-top:75px">
  
  
    <div class="w3-container w3-padding-large w3-grey">
    <h4 ><b>Change Your Password</b></h4>
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
      <button type="submit" class="w3-button w3-black w3-margin-bottom"><i class="fa fa-times" aria-hidden="true"></i>Cancel</button>
    </form>
  </div>
    
    
  </div>

  
  
  <!-- Contact -->
  <div class="w3-container" id="addNewAdmin" style="margin-top:75px">
    
    
    
 <form action="/jobfair/adminRegistration" method="get">
 <div class="content">
    
   <h5 align="center"><font  face="verdana" color="black">AdminRegistration</font></h5>
    
    <div class="group" >      
      <input type="text"  name="admEmail" required>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label ><i class="fa fa-envelope" aria-hidden="true"></i>Email</label>
    </div>
      
    <div class="group">      
      <input type="text" name="admPwd" required>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label><i class="fa fa-lock" aria-hidden="true"></i>Password</label>
    </div>
    
    
    <div class="group">      
      <input type="text" name="admFname" required>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label><i class="fa fa-user" aria-hidden="true"></i>
      FirstName</label>
    </div>
    <div class="group">      
      <input type="text" name="admLname" required>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label><i class="fa fa-user" aria-hidden="true"></i>
      LastName</label>
    </div>
    <div class="group">      
      <input type="text" name="faculty" required>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label><i class="fa fa-building-o" aria-hidden="true"></i>
       
      Faculty</label>
    </div>
    <div class="group">      
      <input type="text" name="position" required>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label><i class="fa fa-building-o" aria-hidden="true"></i>
       
      Position</label>
    </div>
   
   
    <h6 align="center">By creating an account you agree to our <a href="#">Terms & Privacy</a>.</h6>

    <button type="submit" class="registerbtn">Register</button>
  </div>
  </form>
  <div class="container signin">
    <p>Already have an account? <a href="#">Sign in</a>.</p>
  </div>
  </div>
  
  
    
    
    
    
    
  </div>

<!-- End page content -->


<!-- W3.CSS Container -->
<div class="w3-light-grey w3-container w3-padding-12" style="margin-top:75px;padding-left:320px">
 
 <footer class="w3-container w3-padding-32 w3-light-grey">
  <div class="w3-row-padding">
    
  
  <footer class="w3-center w3-light-grey w3-padding-32">

  <a href="#" class="w3-button w3-black"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>

 </footer>

  </div>
  </footer>
  
 
 
 
 
 
</div>

<script>

function myAccFunc() {
    var x = document.getElementById("demoAcc");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}

// Click on the "Jeans" link on page load to open the accordion for demo purposes
document.getElementById("myBtn").click();





// Script to open and close sidebar
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}

// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}
</script>

</body>
</html>