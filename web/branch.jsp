
<%@page import="java.util.List"%>
<%@page import="newpackage.Medicine"%>
<%@page import="newpackage.MedicineDatabase"%>
<%@page import="java.util.Hashtable"%>
<%@page import="newpackage.ConnectionPro"%>

<% MedicineDatabase medCnt1 = new MedicineDatabase(ConnectionPro.getConnection());
                                 Hashtable<Integer, String> med1 = medCnt1.getMedicineCountB1();
                           %>

<% MedicineDatabase medCnt2 = new MedicineDatabase(ConnectionPro.getConnection());
                                 Hashtable<Integer, String> med2 = medCnt2.getMedicineCountB2();
                           %>

<% MedicineDatabase medCnt3 = new MedicineDatabase(ConnectionPro.getConnection());
                                 Hashtable<Integer, String> med3 = medCnt3.getMedicineCountB3();
                           %> 
                           
                           
<% MedicineDatabase medTbl1 = new MedicineDatabase(ConnectionPro.getConnection());
                                 List<Medicine> medB1 = medTbl1.getMedicineTable1();
                           %>     

<% MedicineDatabase medTbl2 = new MedicineDatabase(ConnectionPro.getConnection());
                                 List<Medicine> medB2 = medTbl2.getMedicineTable2();
                           %> 

<% MedicineDatabase medTbl3 = new MedicineDatabase(ConnectionPro.getConnection());
                                 List<Medicine> medB3 = medTbl3.getMedicineTable3();
                           %>                            
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Branch</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link href="css/branch.css" rel="stylesheet" type="text/css"/>
  
                           
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
   
 
<div class="container-fluid">

  <div class="row">
      <div class="col" style="background-color:#2f3542;">
          <h1>Branch 1</h1>
          
          <h4>Branch location: Sector : 7, Road : 7, House : 7 Uttara,Dhaka-1230</h4>
          <h3>Contact No: 01xxxxxxxxx</h3>
          <h3>Total Medicine : <%= med1.size() %></h3> 
          <h1></h1>
          <table class="table table-striped table-dark">
  <thead class="thead">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Medicine Name</th>
      <th scope="col">Supplier Name</th>
      <th scope="col">Purchase Price</th>
      <th scope="col">Quantity</th>
    </tr>
  </thead>
  <tbody>
      <% for (Medicine medicine : medB1 ){      %>
    <tr>
      <td><%=medicine.getMId()  %></td>
      <td><%=medicine.getMName()  %></td>
      <td><%=medicine.getSName()  %></td>
      <td><%=medicine.getPurchasePrice()  %></td>
      <td><%=medicine.getQuantity()  %></td>
    </tr>
    <%}%>
  </tbody>
</table>
      </div>
      
      
      <div class="col" style="background-color:#495F75;">
          <h1>Branch 2</h1>
          <h4>Branch location: Sector : 7, Block : 7, Plot : 7 Mirpur,Dhaka-1216</h4>
          <h3>Contact No: 01xxxxxxxxx</h3>
          <h1></h1>
          
          <h3>Total Medicine : <%= med2.size() %></h3>
          
          
          <table class="table table-striped table-dark">
  <thead class="thead">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Medicine Name</th>
      <th scope="col">Supplier Name</th>
      <th scope="col">Purchase Price</th>
      <th scope="col">Quantity</th>
    </tr>
  </thead>
  <tbody>
      <% for (Medicine medicine : medB2 ){      %>
    <tr>
      <td><%=medicine.getMId()  %></td>
      <td><%=medicine.getMName()  %></td>
      <td><%=medicine.getSName()  %></td>
      <td><%=medicine.getPurchasePrice()  %></td>
      <td><%=medicine.getQuantity()  %></td>
    </tr>
    <%}%>
  </tbody>
</table>
      </div>
      
      
    <div class="col" style="background-color:#2f3542;">
        <h1>Branch 3</h1>
          <h4>Branch location: Road : 11, House : 7 Bonani,Dhaka-1213</h4>
          <h3>Contact No: 01xxxxxxxxx</h3>
          <h3>Total Medicine : <%= med3.size() %></h3>
          <h1></h1>
        
          <table class="table table-striped table-dark">
  <thead class="thead">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Medicine Name</th>
      <th scope="col">Supplier Name</th>
      <th scope="col">Purchase Price</th>
      <th scope="col">Quantity</th>
    </tr>
  </thead>
  <tbody>
      <% for (Medicine medicine : medB3 ){      %>
    <tr>
      <td><%=medicine.getMId()  %></td>
      <td><%=medicine.getMName()  %></td>
      <td><%=medicine.getSName()  %></td>
      <td><%=medicine.getPurchasePrice()  %></td>
      <td><%=medicine.getQuantity()  %></td>
    </tr>
    <%}%>
  </tbody>
</table>
    </div>
  </div>
  <button type="button" class="btn btn-warning btn-lg btn-block"><a href="branchCus.jsp">View All Customer</a></button>
</div>

</body>
</html>