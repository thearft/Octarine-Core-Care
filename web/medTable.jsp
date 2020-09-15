<%@page import="newpackage.Medicine"%>
<%@page import="newpackage.MedicineDatabase"%>
<%@page import="java.util.Hashtable"%>
<%@page import="newpackage.ConnectionPro"%>
<%@page import="newpackage.UserDatabase"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Enumeration"%>
<%@page import="newpackage.ConnectionPro"%>
<%@page import="java.lang.String"%>
<%@page import="newpackage.User"%>
<%@page import="newpackage.MedicineDatabase"%>
<%@page import="java.util.Hashtable"%>
<%@page import="java.util.List"%>
<%@page import="newpackage.ConnectionPro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link href="css/branch.css" rel="stylesheet" type="text/css"/>

<% MedicineDatabase medCnt = new MedicineDatabase(ConnectionPro.getConnection());
                                 List<Medicine> med = medCnt.getMedicineTable();
                           %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Medicine Table</title>
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
 
 
 <table class="table table-striped table-dark">
  <thead class="thead">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Branch No</th>
      <th scope="col">Medicine Name</th>
      <th scope="col">Supplier Name</th>
      <th scope="col">Purchase Price</th>
      <th scope="col">Quantity</th>
    </tr>
  </thead>
  <tbody>
      <% for (Medicine medicine : med ){      %>
    <tr>
      <td><%=medicine.getMId()  %></td>
      <td><%=medicine.getBranch()  %></td>
      <td><%=medicine.getMName()  %></td>
      <td><%=medicine.getSName()  %></td>
      <td><%=medicine.getPurchasePrice()  %></td>
      <td><%=medicine.getQuantity()  %></td>
    </tr>
    <%}%>
  </tbody>
</table>
 
 
 
 
 
 
    </body>
</html>
