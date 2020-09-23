<%-- 
    Document   : regJSP
    Created on : Sep 18, 2020, 11:00:33 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up Page</title>
    </head>
        <style>
body{
	margin:25px;
	color:#6a6f8c;
	background-image: url(Images/bc1.jpg);
        background-size: cover;
        background-repeat: no-repeat;
	font:600 16px/18px 'Open Sans',sans-serif;
}
*,:after,:before{box-sizing:border-box}
.clearfix:after,.clearfix:before{content:'';display:table}
.clearfix:after{clear:both;display:block}
a{color:inherit;text-decoration:none}

.login-wrap{
	width:100%;
	margin:auto;
	max-width:500px;
	min-height:690px;
	position:relative;
	background:url(Images/bc6.png) no-repeat center;
        box-shadow:0 12px 15px 0 rgba(0,0,0,.24),0 17px 50px 0 rgba(0,0,0,.19);
}
.login-html{
	width:100%;
	height:100%;
	position:absolute;
	padding:50px 100px 50px 100px;
	background:rgba(40,57,101,.9);
}


.login-html .tab,
.login-form .group .label,
.login-form .group .button{
	text-transform:uppercase;
}
.login-html .tab{
	font-size:22px;
	padding-bottom:3px;
	margin:0 10px 10px 0;
	display:inline-block;
	border-bottom:2px solid transparent;
}
.login-html .sign-up:checked + .tab{
	color:#fff;
	border-color:#1161ee;
}
.login-form{
	min-height:80px;
	position:relative;
	transform-style:preserve-3d;
}
.login-form .group{
	margin-bottom:8px;
}
.login-form .group .label,
.login-form .group .input,
.login-form .group .button{
	width:100%;
	color:#fff;
	display:block;
}
.login-form .group .input,
.login-form .group .button{
	border:none;
	padding:15px 20px;
	border-radius:25px;
	background:rgba(255,255,255,.1);
}
.login-form .group input[data-type="password"]{
	text-security:circle;
	-webkit-text-security:circle;
}
.login-form .group .label{
	color:#aaa;
	font-size:12px;
}
.login-form .group .button{
	background:#24282b;
}
.login-form .group label .icon{
	width:15px;
	height:15px;
	border-radius:2px;
	position:relative;
	display:inline-block;
	background:rgba(255,255,255,.1);
}

.hr{
	height:2px;
	margin:60px 0 50px 0;
	background:rgba(255,255,255,.2);
}
.foot-lnk{
	text-align:center;
}
            



    </style>
    <body>
        
        <form action="Register_servlet" method="post">
           <div class="login-wrap">
	<div class="login-html">
		<div class="login-form">
                    
                    <center><label for="tab-1" class="tab">Sign Up</label></center>
                    
                    
                                        <div class="group">
					<label for="user" class="label">Full name</label>
					<input name="fname" type="text" class="input">
                                        </div>
                    
                                         <div class="group">
					<label for="user" class="label">Username</label>
					<input name="uname" type="text" class="input">
                                        </div>
                    
                                        <div class="group">
					<label for="pass" class="label">Password</label>
                                        <input name="pass" type="password" class="input" data-type="password">
                                        </div>
                    
                                        <div class="group">
					<label for="pass" class="label">Confirm Password</label>
					<input name="cnfrm" type="password" class="input" data-type="password">
                                        </div>
                    
                                       <div class="group">
                                        <label for="user" class="label">Email</label>
					<input name="email" type="text" class="input">
                                        </div>
                    
                                          <div class="group">
					<label for="user" class="label">Phone</label>
					<input name="phone" type="text" class="input">
                                        </div>
                    
                                        <div class="group" >
					<input type="submit" class="button" value="Sign Up" >
                                        </div>
                    
                                        <div class="group">
					<input type="reset" class="button" value="Cancel">
                                        </div>
			</div>
			
		</div>
	</div>
        </form>
        

    </body>
</html>
