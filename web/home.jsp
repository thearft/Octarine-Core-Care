<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<%@page import="newpackage.UserDatabase"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Enumeration"%>
<%@page import="newpackage.ConnectionPro"%>
<%@page import="java.lang.String"%>
<%@page import="newpackage.User"%>
<%@page import="newpackage.MedicineDatabase"%>
<%@page import="newpackage.CustomerDatabase"%>
<%@page import="java.util.Hashtable"%>
<%@page import="java.util.List"%>
<%@page import="newpackage.ConnectionPro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% User user = (User) session.getAttribute("logUser");
    if (user == null) {
        response.sendRedirect("index.jsp");
    }
%>
<% MedicineDatabase medCnt = new MedicineDatabase(ConnectionPro.getConnection());
    Hashtable<Integer, String> med = medCnt.getMedicineCount();
%>

<% CustomerDatabase cusCnt = new CustomerDatabase(ConnectionPro.getConnection());
    Hashtable<Integer, String> cus = cusCnt.getCustomerCount();
%>



<html>
    <head>
        <title>Octarine Core Care</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link href="css/home.css" rel="stylesheet" type="text/css"/>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">


    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="home.jsp"><img src="image/logo.png" alt=""/></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!------------navbar start------>     
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="branch.jsp">Branches</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="medicine.jsp">Medicine</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="customer.jsp">Customer</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="calculator.jsp">Calculator</a>
                    </li>

                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><a href="index.jsp">Log Out</a></button>
                </form>
            </div>
        </nav>
        <!------------navbar end------>   


        <div class="demo">
            <div class="container">
                <div class="row text-center">
                </div>

                <div class="row">
                    <div class="col-md-6 col-sm-6">
                        <div class="serviceBox">
                            <div class="service-icon">
                                <i class="fa fa-user"></i>
                            </div>
                            <h3 class="title">Profile</h3>
                            <p class="description">
                            <h5>Name : <%= user.getName()%></h5>  
                            <h5>Your Account ID : <%= user.getId()%> </h5>
                            <h5>Your Email : <%= user.getEmail()%> </h5>
                            <h5>Your Password : <%= user.getPassword()%></h5>
                            </p>

                        </div>
                    </div>

                    <div class="col-md-6 col-sm-6">
                        <a href="branch.jsp"><div class="serviceBox">
                                <div class="service-icon">
                                    <i class="fa fa-building"></i>
                                </div>
                                <h3 class="title">Branch</h3>
                                <p class="description">
                                <h5> Branch 1 : Uttara Branch </h5>                       
                                <h5> Branch 2 : Mirpur Branch </h5> 
                                <h5> Branch 3 : Bonani Branch </h5> 
                                <h6> <u> Click for Details</u></h6>
                                </p>
                            </div>                    </a>
                    </div>
                </div>
                <div>
                    <p>

                    </p>
                </div>

                <div class="row">
                    <div class="col-md-6 col-sm-6">
                        <a href="medicine.jsp"><div class="serviceBox">
                                <div class="service-icon">
                                    <i class="fa fa-leaf"></i>
                                </div>
                                <h3 class="title">Medicine</h3>
                                <p class="description">
                                <h3>Total Medicine : <%= med.size()%></h3>   
                                <h5><u>Click here to <b>ADD MEDICINE </b></u></h5>

                                </p>
                            </div></a>
                    </div>            




                    <div class="col-md-6 col-sm-6">
                        <a href="customer.jsp"><div class="serviceBox">
                                <div class="service-icon">
                                    <i class="fa fa-users"></i>
                                </div>
                                <h3 class="title">Customer</h3>
                                <p class="description">
                                <h3>Total Customer : <%= cus.size()%></h3>   
                                <h5><u>Click here to <b>SELL MEDICINE </b></u></h5>

                                </p>
                            </div></a>
                    </div>
                </div>
            </div>
        </div>





        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>