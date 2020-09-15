<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link href="css/home.css" rel="stylesheet" type="text/css"/>

<html> 
    <head> 
        <title>Quick Math Calculator</title>
        <script>
            //function that display value 
            function dis(val)
            {
                document.getElementById("result").value += val
            }

            //function that evaluates the digit and return result 
            function solve()
            {
                let x = document.getElementById("result").value
                let y = eval(x)
                document.getElementById("result").value = y
            }

            //function that clear the display 
            function clr()
            {
                document.getElementById("result").value = ""
            }
        </script> 
        <!-- for styling -->
        <style> 
            .center{
                align-content: center;
                color:#2f3542;

            }
            .title{ 
                margin-bottom: 10px; 
                text-align:center; 
                width: 820px; 
                height: 50px;
                color:#2f3542; 
                border: solid black 2px; 
            } 

            input[type="button"] 
            { 
                background-color:#2f3542; 
                color: #7DF9FF; 
                border: solid black 2px; 
                width:200px; 
                height: 50px;
            } 

            input[type="text"] 
            { 
                background-color:white; 
                border: solid black 2px; 
                width:610px; 
                height: 50px;
            } 
        </style> 
    </head> 
    <!-- create table -->
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

        <div class="center">
            <div class = title > Quick Math Calculator</div> 
            <table border="1"> 
                <tr> 
                    <td colspan="3"><input type="text" id="result"/></td> 
                    <!-- clr() function will call clr to clear all value -->
                    <td><input type="button" value="c" onclick="clr()"/> </td> 
                </tr> 
                <tr> 
                    <!-- create button and assign value to each button -->
                    <!-- dis("1") will call function dis to display value -->
                    <td><input type="button" value="1" onclick="dis('1')"/> </td> 
                    <td><input type="button" value="2" onclick="dis('2')"/> </td> 
                    <td><input type="button" value="3" onclick="dis('3')"/> </td> 
                    <td><input type="button" value="/" onclick="dis('/')"/> </td> 
                </tr> 
                <tr> 
                    <td><input type="button" value="4" onclick="dis('4')"/> </td> 
                    <td><input type="button" value="5" onclick="dis('5')"/> </td> 
                    <td><input type="button" value="6" onclick="dis('6')"/> </td> 
                    <td><input type="button" value="-" onclick="dis('-')"/> </td> 
                </tr> 
                <tr> 
                    <td><input type="button" value="7" onclick="dis('7')"/> </td> 
                    <td><input type="button" value="8" onclick="dis('8')"/> </td> 
                    <td><input type="button" value="9" onclick="dis('9')"/> </td> 
                    <td><input type="button" value="+" onclick="dis('+')"/> </td> 
                </tr> 
                <tr> 
                    <td><input type="button" value="." onclick="dis('.')"/> </td> 
                    <td><input type="button" value="0" onclick="dis('0')"/> </td> 
                    <!-- solve function call function solve to evaluate value -->
                    <td><input type="button" value="=" onclick="solve()"/> </td> 
                    <td><input type="button" value="*" onclick="dis('*')"/> </td> 
                </tr> 
            </table>
        </div>
    </body> 
</html>    