<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Sign-Up/Login Form</title>
  <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/style.css">
         <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
         <script type="text/javascript" src="countryStateCity.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
  $(function() {
    $("#dialog").dialog();
 
    $( "#opener" ).on( "click", function() {
      $( "#dialog" ).dialog( "open" );
    });
  } );
     </script>
     
  
</head>

<body>
  <div class="form">
                <% 
 String status=(String) request.getAttribute("status");
if(status!=null)
{
             %>
                 <h2>
                     <font color="green">   
                     <center>
             Dear Student ,
             <%=status%><br>
             Thank you ! For your time.
                     </center>
             </font>
                     
             </h2>      
             
             <%
                 }
%>
      <ul class="tab-group">
        <li class="tab active"><a href="#signup">Sign Up</a></li>
        <li class="tab"><a href="#login">Log In</a></li>
      </ul>
      
      <div class="tab-content">
        <div id="signup">   
          <h1>Sign Up for new account</h1>
         
          
          <form action="sreg" method="post">
          
          <div class="top-row">
            <div class="field-wrap">
              <label>
                First Name<span class="req">*</span>
              </label>
                <input type="text" name="fname" required autocomplete="off"  />
            </div>
        
            <div class="field-wrap">
              <label>
                Last Name<span class="req">*</span>
              </label>
                <input type="text" name="lname" required autocomplete="off"/>
            </div>
          </div>

          <div class="field-wrap">
            <label>
                Amizone Email Address<span class="req">*</span>
            </label>
            <input type="email" name="email" required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Set A Password<span class="req">*</span>
            </label>
              <input type="password" name="password" id="password" required autocomplete="off"/>
          </div>
               
               <div class="field-wrap">
            <label>
                Department<span></span>
            </label>
                 <select class="selectpicker form-control" id="country" name="dept" data-width="auto">
                     <option>ASET</option>
                     <option>AIB</option>
                  </select>
               </div>
              <div class="field-wrap">
            <label>
                Branch<span></span>
            </label>
                 <select class="selectpicker form-control" id="state" name="branch" data-width="auto">
                     <option>CSE</option>
                     <option>IT</option>
                                     </select>
               </div>
               <div class="field-wrap">
                <label>
                 ID Card Number<span class="req">*</span>
                </label>
                   <input type="number" name="idno" required="off"/>
               </div>
              
                  <div class="field-wrap">
                      <label>
                  Image Link
                      </label>
        
          <input type="file" name="photo" id="file">
        
      
  
              </div>
                    
          <button type="submit" id="opener" class="button button-block">Get Started</button>
            <div id="dialog" title="Basic dialog">
         <p> The dialog window can be moved, resized and closed with the 'x' icon.</p>
            </div>
          </form>

        </div>
        
        <div id="login">   
          <h1>Login for existing user</h1>
          
          <form action="usertest" method="post">
          
            <div class="field-wrap">
            <label>
             Amizone Email Address<span class="req">*</span>
            </label>
            <input type="email" name="email" required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password" name="password" required autocomplete="off"/>
          </div>
          
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          
          <button class="button button-block">Log In</button>
          
          </form>

        </div>
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
 <script src="js/bootstrap.min.js"></script>
 <script src="js/countries.js"></script>
    <script src="js/index.js"></script>
    
    

</body>
</html>
