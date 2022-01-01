<% 
            User user=(User)session.getAttribute("current-user");
            if(user==null){
                response.sendRedirect("Login.jsp");
            }
  %>

<%@page import="com.techblog.entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="Error_page.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <!--css-->
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> 
   
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/style1.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
       
                <title>Profile Page</title>
    </head>
    
    <body>
        
        <!--navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark primary-background">
  <div class="container-fluid">
      <a class="navbar-brand" href="index.jsp"><span class="fa fa-handshake-o"></span>&nbsp;Tech Blog</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#"><span class="fa fa-book"></span>&nbsp;Learn code</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#"><span class="fa fa-user-circle"></span>&nbsp;contact</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              <span class="fa fa-mortar-board"></span>&nbsp;categories
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">programming languages</a></li>
            <li><a class="dropdown-item" href="#">Data structure and algorithms</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Project Implementation</a></li>
          </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#" tabindex="-1" aria-disabled="true"><span class="fa fa-asterisk"></span>&nbsp;More..</a>
        </li>
       
      </ul>
     
        <ul class="navbar-nav mr-right">
        <li class="nav-item">
            <a class="nav-link" id="profile" href="#!"><span class="fa fa-user-circle"></span>&nbsp;<%= user.getName() %></a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Logout_servlet"><span class="fa fa-user-plus"></span>&nbsp;Logout</a>
        </li>
        </ul>
    </div>
  </div>
</nav>
        
     <!--end navbar-->
     
     <!--modal-->
     
     <div class="container" id="modal" style="display:none">
         <div class="row">
             <div class="col-md-5 offset-4" style="">
                 <div class="card">
         <div class="card-header primary-background text-white">
             <h4>TechBlog</h4>
         </div>
         <div class="card-body">
             <div class="container text-center">
                 <img src="pics/<%= user.getProfile() %>" class="img-fluid" style="border-radius: 50%;width: 150px;height: 150px">
                 <br><br><h5><%= user.getName() %></h5>
             </div>
             
             <div class="container text-center">
                 
                 <table class="table table-striped">
  
                        <tbody>
                          <tr>
                            <th scope="row">ID : </th>
                            <td><%= user.getId() %></td>
                            
                          </tr>
                          <tr>
                            <th scope="row">Email : </th>
                            <td><%= user.getEmail() %></td>
                            
                          </tr>
                          <tr>
                            <th scope="row">Gender : </th>
                            <td><%= user.getGender() %></td>
                            
                          </tr>
                          <tr>
                            <th scope="row">Status : </th>
                            <td><%= user.getAbout() %></td>
                           
                          </tr>
                        </tbody>
                  </table>
             </div>
             
         </div>
       </div>
             </div>
         </div>
     </div>
            
  
     <!--end modal-->
     
     <div class="para" style="">
         <h6>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</h6>
     </div>
       
       <script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>      
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-modal/2.2.6/js/bootstrap-modalmanager.min.js" integrity="sha512-/HL24m2nmyI2+ccX+dSHphAHqLw60Oj5sK8jf59VWtFWZi9vx7jzoxbZmcBeeTeCUc7z1mTs3LfyXGuBU32t+w==" crossorigin="anonymous" referrerpolicy="no-referrer"></script> 
   
     <script>
        $(document).ready(function(){
          $("#profile").click(function(){
              
//              $("#modal").css("display","block");
        
              $("#modal").slideToggle(100,function (){
                  
              });
        });
        });
    </script>
    </body>
</html>
