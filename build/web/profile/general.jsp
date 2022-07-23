<%@page import="modelos.General"%>
<%@page import="java.util.List"%>
<%@page import="modelos.Usuario"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="bd.Conexion"%>
<%
    if(session.getAttribute("user") == null) {
        response.sendRedirect("../index.jsp");
    }

    Conexion c = new Conexion();
    String user = (String) session.getAttribute("user");
    List <Usuario> lu = c.mostrarUsuarios(user);
    List <General> lg = c.mostrarGeneral(user);
%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Proyecto Web</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet"
          href=" https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css ">
    <link rel="stylesheet"
          href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
    <link rel="stylesheet" href="../assets/css/themeStyle.css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">
</head>
<body>

<div>

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-danger sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-heart"></i>
                </div>
                <div class="sidebar-brand-text mx-3">HEART-LIFE</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="general.jsp">
                    <i class="fas fa-fw fa-home"></i>
                    <span>General</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Emergencia
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link" href="emergencyContacts.jsp">
                    <i class="fas fa-fw fa-phone"></i>
                    <span>Contactos Emergencia</span>
                </a>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link" href="relatives.jsp">
                    <i class="fas fa-fw fa-user"></i>
                    <span>Familiares Cercanos</span>
                </a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Extras
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link" href="security.jsp">
                    <i class="fas fa-fw fa-lock"></i>
                    <span>Seguridad</span>
                </a>
            </li>

            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="healt.jsp">
                    <i class="fas fa-fw fa-random"></i>
                    <span>Salud</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">
            
            <!-- Nav Item - Charts -->
            <center>
                <li class="nav-item">
                    <a class="btn btn-warning" href="mail.jsp">
                        <span>EMERGENCIA</span>
                    </a>
                </li>
            </center>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                        </li>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="" id="userDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small" id="user"><%=session.getAttribute("user")%></span>
                                <img class="img-profile rounded-circle" src="https://img.icons8.com/ios/50/undefined/user--v1.png">
                            </a>
                        </li>
                    </ul>
                </nav>
                <!-- End of Topbar -->
                
                <div class="container row">
                    <div class="col-8 container">
                        <form action="updateGeneral" method="POST">

                            <div class="form-group"> <!-- Full Name -->
                                <label for="name" class="control-label">Nombre</label>
                                <input type="text" class="form-control" id="name" name="name" placeholder="Nombre" value="<%=lu.get(0).getNombre()%>">
                            </div>
                            
                            <div class="form-group"> <!-- Full Name -->
                                <label for="name" class="control-label">Tipo de Sangre</label>
                                <input type="text" class="form-control" id="sangre" name="sangre" placeholder="Tipo de Sangre" value="<%=lg.get(0).getSangre()%>" maxlength="5">
                            </div>
                                
                             <div class="form-group"> <!-- Full Name -->
                                <label for="name" class="control-label">Usuario</label>
                                <input type="text" class="form-control" id="usuario" name="usuario" placeholder="Nombre" value="<%=lu.get(0).getUsuario()%>" onchange="validUser()" maxlength="25">
                                <label id="userAlert" style="display: none;"></label>
                            </div>
                            
                            <div class="form-group"> <!-- Full Name -->
                                <label for="name_id" class="control-label">Correo</label>
                                <input type="email" class="form-control" id="email" name="email" placeholder="Email" value="<%=lu.get(0).getCorreo()%>" maxlength="50">
                            </div>

                            <div class="form-group"> <!-- Street 1 -->
                                <label for="street1_id" class="control-label">Direccion</label>
                                <input type="text" class="form-control" id="direc" name="direc" placeholder="Calle, #, Colonia, CP"  value="<%=lg.get(0).getDirec()%>" maxlength="100">
                            </div>

                            <div class="form-group"> <!-- City-->
                                <label for="city_id" class="control-label">Ciudad</label>
                                <input type="text" class="form-control" id="city" name="city" placeholder="Ciudad"  value="<%=lg.get(0).getCiudad()%>" maxlength="100">
                            </div>

                            <div class="form-group"> <!-- State Button -->
                                <label for="state_id" class="control-label">Estado</label>
                                <input type="text" class="form-control" id="estado" name="estado" value="<%=lg.get(0).getEstado()%>" maxlength="100">
                            </div>

                            <div class="form-group"> <!-- Zip Code-->
                                <label for="zip_id" class="control-label">Codigo Postal</label>
                                <input type="number" class="form-control" id="cp" name="cp" placeholder="#####" value="<%=lg.get(0).getCp()%>" maxlength="7">
                            </div>

                            <div class="form-group"> <!-- Zip Code-->
                                <label for="date_id" class="control-label">Fecha de Nacimiento</label>
                                <input type="date" class="form-control" id="fec_nac" name="fec_nac" value="<%=lu.get(0).getFec_nac()%>">
                            </div>

                            <div class="form-group text-right"> <!-- Submit Button -->
                                <button type="submit" class="btn btn-success">Guardar</button>
                                <button type="reset" class="btn btn-outline-danger">Cancelar</button>
                            </div>

                        </form>
                    </div>
                    <div class="col-4 container">
                        <h4 class="d-flex justify-content-between align-items-center mb-3">
                            <span class="text-danger">Recomendaciones</span>
                            <span class="badge bg-danger rounded-pill">!</span>
                        </h4>
                        <ul class="list-group mb-3">
                            <li class="list-group-item d-flex justify-content-between lh-sm">
                                <div>
                                    <h6 class="my-0">Utiliza datos reales</h6>
                                    <small class="text-muted">Por tu seguridad utiliza datos reales para poder salvar
                                        tu vida</small>
                                </div>
                            </li>
                            <li class="list-group-item d-flex justify-content-between lh-sm">
                                <div>
                                    <h6 class="my-0">Tus datos estan seguros</h6>
                                    <small class="text-muted">Sabemos lo importante que son para ti tus datos privados asi que
                                        no lo compartiremos con nadie</small>
                                </div>
                            </li>
                            <li class="list-group-item d-flex justify-content-between lh-sm">
                                <div>
                                    <h6 class="my-0">Actualiza tus datos</h6>
                                    <small class="text-muted">Si has cambiado de domicilio recientemente actualiza
                                        tus datos en cuanto antes</small>
                                </div>
                            </li>
                            <li class="list-group-item d-flex justify-content-between lh-sm">
                                <div>
                                    <h6 class="my-0">Verificar que se guardo</h6>
                                    <small class="text-muted">Verifica que tus datos se hayan guardado correctamente
                                        despues de cualquier cambio</small>
                                </div>
                            </li>
                        </ul>
                    </div> <!-- -->
                </div>
            </div>
            <!-- End of Content Wrapper -->
        </div>
    </div>
</div>

<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script src="../js/jquery-3.6.0.min.js"></script>
<script>
    function validUser () {
        var user = $("#usuario").val();
        $.ajax ({
            url: "../jsp/Login/validarUsuario",
            data: {
                user: user,
                col: "usr"
            },
            type : 'POST',
            success: function (result) {
                $("#userAlert").html(result);
            }
        });
    }
</script>
</body>
</html>
