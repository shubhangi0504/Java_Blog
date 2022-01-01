
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <!--css-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> 
        <link href="css/style1.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
       
        <title>Register Page</title>
    </head>
    <body>
        <!--Navbar-->
        <%@include file="Navbar.jsp" %>
        <!--Register page-->
        <main class="d-flex banner-backgroud primary-background p-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-3">
                        <div class="card">
                            <div class="card-header text-center primary-background text-white">
                                <span class="fa fa-user-circle-o fa-3x"></span>
                                <h3>Register Here!!</h3>
                            </div>
                            <div class="card-body">
                                <form id="reg-form" action="Register">
                                    <div class="mb-3">
                                      <label for="username" class="form-label">Name :</label>
                                      <input name="name" type="text" class="form-control" id="username" placeholder="Enter Username" aria-describedby="emailHelp">
                                      
                                    </div>
                                    <div class="mb-3">
                                      <label for="username" class="form-label">Email :</label>
                                      <input name="email" type="email" class="form-control" id="email" placeholder="Enter Email" aria-describedby="emailHelp">
                                      
                                    </div>
                                    <div class="mb-3">
                                      <label for="exampleInputPassword1" class="form-label">Password :</label>
                                      <input name="password" type="password" class="form-control" placeholder="Enter Password" id="exampleInputPassword1">
                                    </div>
                                      
                                      <div class="mb-3">
                                          <label for="exampleInputPassword1" class="form-label">Select Gender :</label>
                                          <input type="radio" class="" id="Male" name="gender" value="Male"><label>Male</label>
                                          <input type="radio" class="" id="Feamle" name="gender" value="Female"><label>Female</label>
                                      </div>
                                      <div class="mb-3">
                                          <label for="exampleInputPassword1" class="form-label">About :</label><br>
                                          <textarea name="about" rows="2" class="form-control" placeholder="Tell us something about you"></textarea>
                                      </div>
                                    <div class="mb-3 form-check">
                                        <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
                                      <label class="form-check-label" for="exampleCheck1">Accept terms and conditions..</label>
                                    </div>
                                    <div class="container text-center" id="wait" style="display: none">
                                        <span class="fa fa-spinner fa-3x fa-spin" style="color: green"></span>
                                        <p>Please Wait..</p>
                                    </div>
                                     <div class="mb-3 text-center">
                                         <button type="submit" class="btn btn-primary text-center" id="sub-btn">Submit</button>
                                        <p>If already have an account then login <a href="Login.jsp">here</a></p>
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
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script>
        $(document).ready(function(){
            console.log("loaded..")
            $("#reg-form").on("submit",function(event){
                event.preventDefault();
                let form=new FormData(this);
                $("#wait").show();
                $("#sub-btn").hide();
                
                $.ajax({
                    url: "Register",
                    type: 'POST',
                    data: form,
                  
                    success: function (data, textStatus, jqXHR) {
                        console.log(data);
                        $("#wait").hide();
                        $("#sub-btn").show();
                        
                        if(data.trim()==="Done"){
                            swal("Registered Successfully, We are going to redirect to login page")
                            .then((value) => {
                              window.location="Login.jsp";
                            });
                        }
                        else{
                            swal(data);
                        }
                        
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        $("#wait").hide();
                        $("#sub-btn").show();
                        swal("Sorry ! Something went wrong, please try again..");
                        console.log(jqXHR);
                    },
                    processData: false,
                    contentType: false
                    
                });
            });
        });
    </script>
    </body>
</html>
