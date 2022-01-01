<%-- 
    Document   : index
    Created on : 07-Jul-2021, 3:59:57 pm
    Author     : shubhangi
--%>


<%@page import="com.techblog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--css-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> 
        <link href="css/style1.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>TechBlog</title>
    </head>
    <body>
        <!--navbar-->
        <%@include file="Navbar.jsp" %>
        <!--Banner-->
        
        <div class="container-fluid p-0 m-0">
            <div class="jumbotron p-5 primary-background text-white banner-backgroud">
                <div class="container mb-3">
                    <h3 class="display-3">Welcome to Technical Blog</h3>
                    <P>A programming language is a formal language comprising a set of strings that produce various kinds of machine code output. Programming languages are one kind of computer language, and are used in computer programming to implement algorithms.</P>
                    <p>A programming language is a formal language comprising a set of strings that produce various kinds of machine code output. Programming languages are one kind of computer language, and are used in computer programming to implement algorithms.</p>
                    <button class="btn btn-outline-light primary-background"><span class="fa fa-check-square"></span>&nbsp;start Free</button>
                    <a href="Login.jsp" class="btn btn-outline-light primary-background"><span class="fa fa-user-circle-o fa-spin"></span>&nbsp;Login</a>
                    <a href="Register.jsp" class="btn btn-outline-light primary-background"><span class="fa fa-user-circle-o"></span>&nbsp;Sign Up</a>
                </div>
                
            </div>
            
         </div>
        
        <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="card" style="">
                            <div class="card-body">
                              <h5 class="card-title">Programing language</h5>
                              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                              <a href="#" class="btn btn-primary">Read More</a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="card" style="">
                            <div class="card-body">
                              <h5 class="card-title">Programing language</h5>
                              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                              <a href="#" class="btn btn-primary">Read More</a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="card" style="">
                            <div class="card-body">
                              <h5 class="card-title">Programing language</h5>
                              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                              <a href="#" class="btn btn-primary">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
            
            <div class="row">
                    <div class="col-md-4">
                        <div class="card" style="">
                            <div class="card-body">
                              <h5 class="card-title">Programing language</h5>
                              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                              <a href="#" class="btn btn-primary">Read More</a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="card" style="">
                            <div class="card-body">
                              <h5 class="card-title">Programing language</h5>
                              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                              <a href="#" class="btn btn-primary">Read More</a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="card" style="">
                            <div class="card-body">
                              <h5 class="card-title">Programing language</h5>
                              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                              <a href="#" class="btn btn-primary">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
                
            </div>
        
        
        

        
        
        
  <script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>      
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    
    <script>
        $(document).ready(function(){
            
        });
    </script>
    </body>
</html>
