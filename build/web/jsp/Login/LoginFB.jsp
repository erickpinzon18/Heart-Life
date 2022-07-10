<%@page import="bd.Conexion"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" type="image/x-icon" href="../../assets/img/Logo.png">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="../../assets/css/themeStyle.css" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
    <title>Login</title>
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
                                    <h1 class="h4 text-gray-900 mb-4">Registro con Facebook!</h1>
                                    <h1 class="h5 text-gray-900 mb-4">Por favor termine de completar sus datos para un registro exitoso</h1>
                                </div>
                                <form class="user" action="loginFB" method="POST">
                                    <div class="form-group">
                                        <label>ID Facebook</label>
                                        <input type="number" class="form-control form-control-user"
                                               id="id_fb" name="id_fb" aria-describedby="id_fb"  value="<%=request.getParameter("user_id")%>" required readonly>
                                    </div>
                                    <div class="form-group">
                                        <label>Nombre</label>
                                        <input type="text" class="form-control form-control-user"
                                               id="nombre" name="nombre" aria-describedby="nombre" value="<%=request.getParameter("user_name")%>" readonly required>
                                    </div>
                                    <div class="form-group">
                                        <label>Usuario</label>
                                        <input type="text" class="form-control form-control-user"
                                               id="user" name="user" aria-describedby="user" placeholder="Cree un usuaio" onchange="validUser()" required>
                                        <label id="userAlert" style="display: none;"></label>
                                    </div>
                                    <div class="form-group">
                                        <label>Email</label>
                                        <input type="email" class="form-control form-control-user"
                                               id="email" name="email" aria-describedby="emailHelp" placeholder="example@exam.org" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Cree una contrasena</label>
                                        <input type="password" class="form-control form-control-user"
                                               id="pass1" name="pass1" placeholder="Cree una contrasena segura" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Repita contrasena</label>
                                        <input type="password" class="form-control form-control-user" id="pass2"  onchange=" 
                                            //Verificar que las contraseñas coincidan
                                            if(document.getElementById('pass1').value != document.getElementById('pass2').value) {
                                                alert('Las contraseñas no coinciden');
                                                document.getElementById('pass2').value = '';
                                            }"
                                                name="pass2" placeholder="Repita su contrasena" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Fecha Nacimiento</label>
                                        <input type="date" class="form-control form-control-user"
                                               id="fec_nac" name="fec_nac" placeholder="Fecha de Nacimiento" min="1920-01-01" max="2022-1-1" required>
                                    </div> <br>
                                    <button type="submit" class="btn btn-primary btn-user btn-block">
                                        Terminar registro
                                    </button>
                                </form>
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
    function validUser () {
        var user = $("#user").val();
        $.ajax ({
            url: "validarUsuario",
            data: {
                user: user,
                col: "user"
            },
            success: function (result) {
                $("#userAlert").html(result);
            }
        });
    }
</script>

</body>

</html>
