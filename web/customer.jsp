<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
 
         <%@include file="Success.jsp" %>
        <div class="container">
            <div class="regbox box">
                <img class="avatar" src="image/collaboration.png">
                <h1>Customer Details</h1>
                <form action="CustomerServlet" method="post">
                    <p>Customer Name</p>
                    <input type="text" placeholder="Customer Name" name="cName" required>
                    <p>Medicine Name</p>
                    <input type="text" placeholder="Medicine Name" name="mName" required>
                    <p>Selling Price</p>
                    <input type="text" placeholder="Selling Price" name="sPrice" required>
                    <p>Quantity</p>
                    <input type="text" placeholder="Quantity" name="cQuantity" required>
                    <p>Branch No</p>
                    <input type="text" placeholder="Branch No" name="cBranch" required>
                    <input type="submit" value="Sell Medicine">
                    <button type="button" class="btn btn-primary btn-lg btn-block"><a href="cusTable.jsp">View All Customer</a></button>
                    

                </form>
            </div>
        </div>
    </body>
</html>