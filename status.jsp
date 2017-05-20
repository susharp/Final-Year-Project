<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="factory.connfac"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html ng-app="DSWMatter">
<head>
    <!--Css-->
    <link rel="stylesheet" href="css/complaint.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="css/status.css">
    <link rel="stylesheet" href="font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="js/jquery-3.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/angular.min.js"></script>
    <script src="js/app.js"></script>
    <script src="js/DSWController.js"></script>
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
<body ng-controller="DSWController">
<nav class="navbar">
    <div class="navbar-inner">
        <a><img class="img-responsive" src="images/logo.png" width="100%" height="100%"></a>
    </div>
</nav>
<div id="mySideNav" class="sidenav">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <a href="#"> Profile</a>
    <a href="complaint.jsp"><i class="fa fa-envelope-open-o" aria-hidden="true"></i> Post a Complaint</a>
    <a href="#"><i class="fa fa-tasks" aria-hidden="true"></i> Check Status</a>
    <a href="DSW.jsp"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Write to DSW</a>
</div>
<div id="main">
    <div class="container-fluid">
        <div>
            <div class="dropdown-container">
                <button class="btn btn-default pull-right info-button dropdown-toggle" data-toggle="dropdown">&#9776;</button>
                <ul class="dropdown-menu pull-right" id="dropdown-top">
                    <li><a href="#" tabindex="-1"><i class="fa fa-user-circle-o" aria-hidden="true"></i> Change Profile</a></li>
                    <li><a href="usertest" tabindex="-1"><i class="fa fa-sign-out" aria-hidden="true"></i> Sign out</a></li>
                </ul>
            </div>
            <img src="prateek1.jpg" class="img-circle img-thumbnail pull-right" width="40" height="50">
            <label id="user-name" class="pull-right">
                 <%
                    String email = session.getAttribute("emails").toString();
                    session.setAttribute("id", email);
                 %>
                     <%
                        out.print(email);
                        %>
               
            </label>
        </div>
    </div>
    <h2 class="text-center">Complaint Status</h2>
    <span onClick="openNav()">&#9776;</span>
    <form action="cstatus" method="post">
    <div class="status-label">
        <table class="table table-striped" >
            <tr class="info">
                <td>
        <div>
            <label class="label-in">Last complaint posted:   
            
                <%
                
                    
                    String id = session.getAttribute("id").toString();
                    String cat="",dat="";
                    Connection con = null;
                    Class.forName("com.mysql.jdbc.Driver");
             con= DriverManager.getConnection("jdbc:mysql://localhost:3306/complaint management?zeroDateTimeBehavior=convertToNull","root","nanu");
                    String q = "select comp_cat,comp_date from complaints where amity_id='"+id+"' order by comp_date desc";
            Statement stmt = con.createStatement();
           ResultSet rs =stmt.executeQuery(q);
            while(rs.first())
            {
                cat = rs.getString(1);
                dat = rs.getString(2);
               break;
            }
                
               
                
                %>
            
            
            
            
            </label>
        
            <label class="label-out"></label>
        </div>
                <td>
                    <% out.println(cat);%> 
                    
                </td>
                <td>
                    
                    <%out.println(dat);%>
                </td>
            
        </tr>
        <tr class="active">
            <td>
        <div>
            <label class="label-in">Current Status: </label>
            <label class="label-out"></label>
        </div>
            </td>
            <td>
                
            </td>
        </tr>
        
    </table>
    </div>
            </form>

</div>

<!--Javascript-->
<script src="js/complaint.js"></script>
</body>
</html>