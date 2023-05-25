<!DOCTYPE html>
<html>
    <head>
        <title>NewAccount</title>
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
        
        <form action="NewAccountCode.jsp" method="post" name="regform">
            <fieldset>
             <h4>OPEN ACCOUNT FORM</h4>
                <table>
                    <tr>
                        <td>Account Number:</td>
                        <td><input type="tel" name="ano"></td>
                    </tr>
                    <tr>
                        <td>Name:</td>
                        <td><input type="text" name="uname"></td>
                                           <td><span id="uname_span" style="color:red;"></span></td>
                        
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password" name="psw"></td>
                    </tr><tr>
                    <!-- <tr>
				<td><b>Confirm_Password:</td>
				<td><input type="password" name="psw2"></b></td>
			</tr> -->
                        <td>Amount:</td>
                        <td><input type="text" name="amt"></td>
                    </tr>
                    <tr>
                        <td>Address:</td>
                        <td><input type="text" name="add"></td>
                    </tr>
                    <tr>
                        <td>Mobile Number:</td>
                        <td><input type="tel" name="mno"></td>
                    </tr>






                    <tr>
                        <td><input type="submit" value="Submit"></td>
                        <td><input type="reset" value="Reset"></td>
                    </tr>
                </table>
            
            
        </form>
        
    </center>
    </fieldset>
 <!-- <script>
            function register(){
                let uname=document.forms["regform"]["uname"].value;
                let arr1=[];
               let span=document.getElementById("uname_span");
              
               if(/^$/.test(uname))
               {
                arr1.push("cannot be empty");
               }
               else if(!/^[A-Z][a-z 0-9]{6,8}$/.test(uname)){
                arr1.push("should folloe pattern");
               }
               span.innerHTML=arr1.join(",");
               return false;
            }
        </script>     -->
        </body>
</html>