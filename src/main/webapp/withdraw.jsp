<!DOCTYPE html>
<html>
    <head>
        <title>WithdrawForm</title>
        <style>
           h1{
                color: red;
            }
            tr{
                color:blue;
            }
            h2,h4{
            color:green;
            }
        </style>
    </head>
    <body>
    <fieldset>
    <center>
    <h1>SDFC BANK</h1>
<h3>EXTRAORDINARY SERVICES</h3>
<a href="bankhome.jsp">Home</a>  

<a href="newaccount.jsp">New Account</a>

<a href="balance.jsp">Balance</a>

<a href="deposit.jsp">Deposit</a>

<a href="withdraw.jsp">Withdraw</a>

<a href="transfer.jsp">Transfer</a>

<a href="close.jsp">Close A/C</a>

<a href="">AboutUs</a><br>




</center>
    
    
        <center>
        
            <form action="WithdrawCode.jsp" method="post">
                <fieldset>
                    <h4>WITHDRAW FORM </h4>
                    <table>
                        <tr>
                            <td>Account Number:</td>
                            <td><input type="text" name="ano"></td>
                        </tr>
                        <tr>
                            <td>Name:</td>
                            <td><input type="text" name="uname"></td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td><input type="password" name="psw"></td>
                        </tr>
                        <tr>
                            <td>Amount:</td>
                            <td><input type="text" name="amt"></td>
                        </tr>

                        <tr>
                            <td><input type="submit" value="Submit"></td>
                            <td><input type="reset" value="Reset"></td>
                        </tr>
                        </table>


                        </fieldset>
                        </form>
                        </center>
                        </fieldset>
    </body>
</html>