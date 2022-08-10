<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" type="image/x-icon" href="assets/img/Logo.png">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Registro</title>

    <!-- Custom fonts for this template-->
    <link href="assets/css/themeStyle.css" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
    <script src="js/FBLogin.js"></script>
</head>

<body class="bg-gradient-primary">

<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
                <div class="col-lg-5 d-none d-lg-block">
                    <img src="https://images.unsplash.com/photo-1573475620830-d9f2e9459ffe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80" width="100%" height="100%" alt="">
                </div>
                <div class="col-lg-7">
                    <div class="p-5">
                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4">Crear Cuenta!</h1>
                        </div>
                        <form action="registroUsuario" method="post" class="user">
                            <div class="form-group row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <input type="text" class="form-control form-control-user" id="nombre"
                                           placeholder="Nombre" name="nombre">
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control form-control-user" id="user"
                                           placeholder="Usuario" name="user" onchange="validUser()">
                                    <label id="userAlert" style="display: none;"></label>
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control form-control-user" id="email"
                                       placeholder="Email" name="email">
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <input type="password" class="form-control form-control-user"
                                           id="pass1" placeholder="Password">
                                </div>
                                <div class="col-sm-6">
                                    <input type="password" class="form-control form-control-user"
                                           id="pass2" placeholder="Repetir Password" name="pass2" onchange=" 
                                            //Verificar que las contraseñas coincidan
                                            if(document.getElementById('pass1').value != document.getElementById('pass2').value) {
                                                alert('Las contraseñas no coinciden');
                                                document.getElementById('pass2').value = '';
                                            }">
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="date" class="form-control form-control-user" id="fec_nac" name="fec_nac">
                            </div>
                            <button type="subtmit" class="btn btn-primary btn-user btn-block">
                                Registrar Cuenta
                            </button>
                            <hr>
                            <!--<a href="index.jsp" class="btn btn-google btn-user btn-block">
                                <i class="fab fa-google fa-fw"></i> Register with Google
                            </a>-->
                            <div class="btn btn-facebook btn-user btn-block" onclick="onLogin();">
                                        <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                            </div>
                        </form>
                        <hr>
                        <div class="text-center">
                            <a class="small" href="login.jsp">Ya tienes una cuenta? Inicia Sesion!</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
    
<script src="js/jquery-3.6.0.min.js"></script>
<script>
    function validUser () {
        var user = $("#user").val();
        $.ajax ({
                url: "jsp/Login/validarUsuario",
            data: {
                user: user,
                col: "usr"
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
