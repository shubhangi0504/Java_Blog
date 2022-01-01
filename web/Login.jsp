
<%@page import="com.techblog.entities.Massege"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--css-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> 
        <link href="css/style1.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      
        <title>Login: TechBlog</title>
    </head>
    <body>
       <!--Navbar-->
       <%@include file="Navbar.jsp" %>
       <main class="d-flex align-items-center primary-background banner-backgroud" style="height: 70vh">
           <div class="container">
           <div class="row">
               <div class="col-md-4 offset-4">
                   <div class="card">
                       <div class="card-header  text-center primary-background text-white"><span class="fa fa-user-plus fa-3x"></span><h3>Login page</h3></div>
                        <% 
                            Massege msg=(Massege)session.getAttribute("msg");
                            if(msg!=null){
                            %>
                              <div class="alert <%= msg.getCssClass() %>" role="alert">
                                <%= msg.getContent() %>
                              </div>
                             <%
                                 session.removeAttribute("msg");
                            }
                        %>
                       
                       <div class="card-body">
                           
                           <form action="Login" method="post">
                            <div class="mb-3">
                              <label for="exampleInputEmail1" class="form-label">Email address</label>
                              <input type="email" name="email" required placeholder="Email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                              <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                            </div>
                            <div class="mb-3">
                              <label for="exampleInputPassword1" class="form-label">Password</label>
                              <input type="password" placeholder="password" name="password" required class="form-control" id="exampleInputPassword1">
                            </div>
                            
                            <div class="mb-3 text-center">
                              <button type="submit" class="btn btn-primary text-center">Submit</button>
                              <p>If you are new user then please Register <a href="Register.jsp">here</a></p>
                            </div>
                          </form>
                           
                       </div>
                     
                   </div>
               </div>
           </div>
           
       </div>
           
       </main>
       
        
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
