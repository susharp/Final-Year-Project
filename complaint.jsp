<!DOCTYPE html>
<html>
    <head>
             <!--Css-->
        <link rel="stylesheet" href="css/complaint.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/postComplaint.css">
        <script src="js/jquery-3.1.1.js"></script>
        <script>
            $(document).ready(function(){
                $('.dropdown-submenu a.test').on("click", function(e){
                    $(this).next('ul').toggle();
                    e.stopPropagation();
                    e.preventDefault();
                });
            });
        </script>
    </head>
    <body>
    <nav class="navbar">
        <div class="navbar-inner">
            <a><img src="images/logo.png" width="100%" height="100%"></a>
        </div>
    </nav>
        <div>
           
        </div>
        <div id="mySideNav" class="sidenav">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            
            <a href="complaint.jsp">Post a Complaint</a>
            <a href="status.jsp">
                <%
                    String email = session.getAttribute("emails").toString();
                    session.setAttribute("id", email);
                %>
                Check Status</a>
            <a href="DSW.jsp">Write to DSW</a>
        </div>
        <div id="main">
            <div class="container-fluid">
                <div>
                    <div class="dropdown-container">
                        <button class="btn btn-default pull-right info-button dropdown-toggle" data-toggle="dropdown">&#9776;</button>
                        <ul class="dropdown-menu pull-right" id="dropdown-top">
                            <li><a href="profile.jsp" tabindex="-1">Change Profile</a></li>
                            <li><a href="usertest" tabindex="-1">Sign out</a></li>
                        </ul>
                    </div>
                    <img src="prateek1.jpg" class="img-circle img-thumbnail pull-right" width="40" height="50">
                    <label id="user-name" class="pull-right">
                        <%
                        out.print(email);
                        %>  
                  </label>
                </div>
            </div>
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
        <h2>Post a Complaint</h2>
            <span onClick="openNav()">&#9776;</span>
            
        <div>
            <form action="cregister" method="post">
        <div class="form-group text-center">
            
            <label class="form-inline" >Category:</label>
            <label class="form-inline" for="ids" >
                <input type="hidden" value="<% out.print(email); %>" name="ids">
                
            </label>
            <div class="dropdown">
               
                  
                <select class="selectpicker show-tick dropup" data-width="auto" data-size="auto" name="cname">
                    <option>Mess</option>
                    <option>Hostel</option>
                    <option>Student Resource Center (SRC)</option>
                    <option>Transport</option>
                    <option>MI Room</option>
                    <option>Food Trucks</option>
                    <option>Fees</option>
                    <option>Library</option>
                    <option>ASET</option>
                    <option>ABS</option>
                    <option>ALS</option>
                    <option>AIIT</option>
                </select>
                   
                </div>
            <div class="top">
                <label>Complaint will be forwarded to: </label>
                <div>
                // Has to be done from backend<br>
                // The complaint will be forwarded to the concerned faculty/ concerned member<br>
                </div>
            </div>
            <div class="top">
                <label>Please tell in brief about the complaint: </label>
                <div>
                    <textarea name="textarea"></textarea>
                </div>
            </div>
            <button class="btn btn-success">Submit</button>
        </div>
        </form>
        </div>
        </div>

        <!--Javascript-->
        <script src="js/bootstrap.min.js"></script>
<script src="js/complaint.js"></script>

    </body>
</html>