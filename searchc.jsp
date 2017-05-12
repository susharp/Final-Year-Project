<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<%@page import="factory.connfac"%>
<%@page import="java.sql.ResultSet"%>
<html ng-app="DSWMatter">
    <head>
        <!--Css-->
        <link rel="stylesheet" href="css/complaint.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/dsw.css">
        <script src="js/jquery-3.1.1.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/angular.min.js"></script>
        <script src="js/app.js"></script>
        <script src="js/DSWController.js"></script>
        <script>
            $(document).ready(function () {
                $('.dropdown-submenu a.test').on("click", function (e) {
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
                <a><img src="images/logo.png" width="100%" height="100%"></a>
            </div>
        </nav>
        <div id="mySideNav" class="sidenav">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <a href="index.html">Home</a>
            <a href="index.html"><i class="fa fa-envelope-open-o" aria-hidden="true"></i> Complaints</a>
        </div>
        <div id="main">
            <div class="container-fluid">
                <div>
                    <div class="dropdown-container">
                        <button class="btn btn-default pull-right info-button dropdown-toggle" data-toggle="dropdown">&#9776;</button>
                        <ul class="dropdown-menu pull-right" id="dropdown-top">
                            <li><a href="profile.html" tabindex="-1"><i class="fa fa-user-circle-o" aria-hidden="true"></i> Change Profile</a></li>
                            <li><a href="#" tabindex="-1"><i class="fa fa-sign-out" aria-hidden="true"></i> Sign out</a></li>
                        </ul>
                    </div>
                    <img src="prateek1.jpg" class="img-circle img-thumbnail pull-right" width="40" height="50">
                    <label id="user-name" class="pull-right">Prateek Gogia</label>
                </div>
            </div>
            <span onClick="openNav()">&#9776;</span>
            <div class="container">
                <div class="text-center">
                    <form action="searchc.jsp" method="post">
                        <select name="cgroup">
                            <option>select</option>
                            <option>mess</option>
                            <option>library</option>
                        </select>
                        <button type="submit">submit</button>
                    </form>
                    <br><br>
                    <%
                        String cgroup = (String) request.getParameter("cgroup");
                        if (cgroup != null) {
                    %>
                    <br><br><br>
                    <table class="table table-bordered table-responsive">
                        <thead>
                            <tr>
                                <th class="text-center">amity_id</th>
                                <th class="text-center">comp_id</th>
                                <th class="text-center">Comp_cat</th>
                                <th class="text-center">Comp_desc</th>
                                <th class="text-center">date</th>
                                <th class="text-center">status</th>
                                <th class="text-center">Action</th>
                                    
                            </tr>
                            <%
                                String t1, t2, t3, t4, t5, t6;
                                String amity_id = "", comp_id = "", cat = "", desc = "", dat = "", status = "";
                                Connection con = null;
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/complaint management?zeroDateTimeBehavior=convertToNull", "root", "nanu");
                                ResultSet rs = connfac.getCon().createStatement().executeQuery("select * from complaints where comp_cat='" + cgroup + "'");
                                while (rs.next()) {
                                    t1 = rs.getString(1);
                                    t2 = rs.getString(2);
                                    t3 = rs.getString(3);
                                    t4 = rs.getString(4);
                                    t5 = rs.getString(5);
                                    t6 = rs.getString(6);
                            %>
                            <tr>
                                <td> <%=t1%> </td>
                                <td> <%=t2%> </td>
                                <td> <%=t3%> </td>
                                <td> <%=t4%> </td>
                                <td> <%=t5%> </td>
                                <td> <%=t6%> </td>
                            </tr>


                            <%
                                }

                            %>

                        </thead>

                        <%--  <tbody>
                        <tr>
                            <td>1</td>
                            <td>Prateek Gogia</td>
                            <td>Hostel</td>
                            <td>WiFi not working.</td>
                            <td><a href="mailto:gogia.prateek@hotmail.com">Mr. IT Uncle</a></td>
                            <td>
                                <select class="form-control">
                                    <option>Pending</option>
                                    <option>Processing</option>
                                    <option>Resolved</option>
                                </select>
                            </td>
                        </tr>
                        </tbody>--%>
                    </table>
                    <%                 }


                    %>

                </div>
            </div>
        </div>

        <!--Javascript-->
        <script src="js/complaint.js"></script>
    </body>
</html>