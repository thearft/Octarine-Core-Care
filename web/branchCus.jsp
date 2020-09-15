
<%@page import="java.util.List"%>
<%@page import="newpackage.Customer"%>
<%@page import="newpackage.CustomerDatabase"%>
<%@page import="java.util.Hashtable"%>
<%@page import="newpackage.ConnectionPro"%>

<% CustomerDatabase cusCnt1 = new CustomerDatabase(ConnectionPro.getConnection());
    Hashtable<Integer, String> cus1 = cusCnt1.getCustomerCountB1();
%>

<% CustomerDatabase cusCnt2 = new CustomerDatabase(ConnectionPro.getConnection());
    Hashtable<Integer, String> cus2 = cusCnt2.getCustomerCountB2();
%>

<% CustomerDatabase cusCnt3 = new CustomerDatabase(ConnectionPro.getConnection());
    Hashtable<Integer, String> cus3 = cusCnt3.getCustomerCountB3();
%> 


<% CustomerDatabase cusTbl1 = new CustomerDatabase(ConnectionPro.getConnection());
    List<Customer> cusB1 = cusTbl1.getCustomerTable1();
%>     

<% CustomerDatabase cusTbl2 = new CustomerDatabase(ConnectionPro.getConnection());
    List<Customer> cusB2 = cusTbl2.getCustomerTable2();
%> 

<% CustomerDatabase cusTbl3 = new CustomerDatabase(ConnectionPro.getConnection());
    List<Customer> cusB3 = cusTbl3.getCustomerTable3();
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
                    <h3>Total Customer : <%= cus1.size()%></h3> 
                    <h1></h1>
                    <table class="table table-striped table-dark">
                        <thead class="thead">
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Customer Name</th>
                                <th scope="col">Medicine Name</th>
                                <th scope="col">Selling Price</th>
                                <th scope="col">Quantity</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (Customer customer : cusB1) {%>
                            <tr>
                                <td><%=customer.getCId()%></td>
                                <td><%=customer.getCName()%></td>
                                <td><%=customer.getMName()%></td>
                                <td><%=customer.getSellingPrice()%></td>
                                <td><%=customer.getQuantity()%></td>
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

                    <h3>Total Customer : <%= cus2.size()%></h3>


                    <table class="table table-striped table-dark">
                        <thead class="thead">
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Branch No</th>
                                <th scope="col">Customer Name</th>
                                <th scope="col">Medicine Name</th>
                                <th scope="col">Selling Price</th>
                                <th scope="col">Quantity</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (Customer customer : cusB2) {%>
                            <tr>
                                <td><%=customer.getCId()%></td>
                                <td><%=customer.getBranch()%></td>
                                <td><%=customer.getCName()%></td>
                                <td><%=customer.getMName()%></td>
                                <td><%=customer.getSellingPrice()%></td>
                                <td><%=customer.getQuantity()%></td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                </div>


                <div class="col" style="background-color:#2f3542;">
                    <h1>Branch 3</h1>
                    <h4>Branch location: Road : 11, House : 7 Bonani,Dhaka-1213</h4>
                    <h3>Contact No: 01xxxxxxxxx</h3>
                    <h3>Total Customer : <%= cus3.size()%></h3>
                    <h1></h1>

                    <table class="table table-striped table-dark">
                        <thead class="thead">
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Customer Name</th>
                                <th scope="col">Medicine Name</th>
                                <th scope="col">Selling Price</th>
                                <th scope="col">Quantity</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (Customer customer : cusB3) {%>
                            <tr>
                                <td><%=customer.getCId()%></td>
                                <td><%=customer.getCName()%></td>
                                <td><%=customer.getMName()%></td>
                                <td><%=customer.getSellingPrice()%></td>
                                <td><%=customer.getQuantity()%></td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </body>
</html>