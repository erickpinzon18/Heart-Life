<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" type="image/x-icon" href="assets/img/Logo.png">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="assets/css/themeStyle.css" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
    <title>Login</title>
    <script src="js/FBLogin.js"></script>
</head>

<body class="bg-gradient-primary">
    
<div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-xl-20 col-lg-12 col-md-9">

            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg-6 d-none d-lg-block">
                            <img width="100%" height="100%"
                                 src="https://images.unsplash.com/photo-1559963043-3d19915bec6b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80" alt="">
                        </div>
                        <div class="col-lg-6">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Bienvenido de Nuevo!</h1>
                                </div>
                                <form class="user" action="login" method="post">
                                    <div class="form-group">
                                        <input type="text" class="form-control form-control-user"
                                               id="user" name="user" aria-describedby="emailHelp"
                                               placeholder="Usuario">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user"
                                               id="pass" name="pass" placeholder="Contraseña">
                                    </div>
                                    <label id="userAlert" style="display: none;"></label>
                                    <button onclick="login();" class="btn btn-primary btn-user btn-block">
                                        Iniciar Sesion
                                    </button>
                                    <hr>
                                    <a href="index.jsp" class="btn btn-google btn-user btn-block">
                                        <i class="fab fa-google fa-fw"></i> Login with Google
                                    </a>
                                    <div class="btn btn-facebook btn-user btn-block" onclick="onLogin();">
                                        <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                                    </div>
                                </form>
                                <hr>
                                <div class="text-center">
                                    <a class="small" href="forgot-password.jsp">Olvidaste tu contraseña?</a>
                                </div>
                                <div class="text-center">
                                    <a class="small" href="register.jsp">Registrarse</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>
<script src="../../js/jquery-3.6.0.min.js"></script>
<script>
    function login () {
        var user = $("#user").val();
        var pass = $("#pass").val();
        $.ajax ({
            url: "login",
            data: {
                user: user,
                pass: pass
            },
            type: 'POST',
            success: function (result) {
                $("#userAlert").html(result);
            }
        });
    }
</script>
</body>

</html>
