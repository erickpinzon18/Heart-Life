<%@page import="modelos.Notifications"%>
<%@page import="bd.Conexion"%>
<%@page import="java.util.List"%>
<%
    if(session.getAttribute("user") == null) {
        response.sendRedirect("../index.jsp");
    }
    Conexion c = new Conexion();
    String user = (String) session.getAttribute("user");
    List <Notifications> ln = c.mostrarNotifications(user);
    int maxN = c.maxNotifications(user);
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
            <li class="nav-item">
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
            <li class="nav-item active">
                <a class="nav-link" href="security.jsp">
                    <i class="fas fa-fw fa-lock"></i>
                    <span>Seguridad</span>
                </a>
            </li>

            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="healt.jsp">
                    <i class="fas fa-fw fa-heart"></i>
                    <span>Salud</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">
            
            <center>
                <li class="nav-item">
                    <a class="btn btn-warning btn-lg" href="mail.jsp">
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

                    <!-- Topbar Search -->
                    <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search" autocomplete="off">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Escribe lo que estas buscando"
                                   aria-label="Search" aria-describedby="basic-addon2" list="datalistOptions" id="dataList" onchange="redirect()">
                            <datalist id="datalistOptions">
                                <option value="Usuario">
                                <option value="Correo">
                                <option value="Tipo de Sangre">    
                                <option value="Domicilio">
                                <option value="Contactos de Emergencia">
                                <option value="Familiares Cercanos">
                                <option value="Seguridad">
                                <option value="Enfermedades">
                                <option value="Alergias">
                            </datalist>
                            <div class="input-group-append">
                                <div class="btn btn-danger">
                                    <i class="fas fa-search fa-sm"></i>
                                </div>
                            </div>
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                        </li>

                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropstart no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" id="alertsDropdown" role="button"
                               data-bs-toggle="dropdown"  aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->
                                <span class="badge badge-danger badge-counter"><%=maxN%></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a class="dropdown-item text-danger disabled">
                                        NOTIFICACIONES
                                    </a>
                                </li>
                                <li><hr class="dropdown-divider"></li>
                                <%
                                    String url = "";
                                    for (int i = 0; i < ln.size(); i++) {
                                        switch (ln.get(i).getGrado()) {
                                            case 1: url = "emergencyContacts.jsp"; break;
                                            case 2: url = "relatives.jsp"; break;
                                            case 3: url = "general.jsp"; break;
                                            case 4: url = "healt.jsp"; break;
                                            case 5: url = "../blog.jsp"; break;
                                        }
                                %>
                                <li>
                                    <a class="dropdown-item" href="<%=url%>" id="notif<%=ln.get(i).getnNotif()%>">
                                        <%=ln.get(i).getDesc()%>
                                    </a>
                                </li>
                                <li><hr class="dropdown-divider"></li>
                                <%
                                    }
                                %>
                                
                            </ul>
                        </li>
                        
                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><%=session.getAttribute("user")%></span>
                                <img class="img-profile rounded-circle" src="https://img.icons8.com/ios/50/undefined/user--v1.png">
                            </a>
                        </li>
                    </ul>
                </nav>
                <!-- End of Topbar -->

                <div class="container row">
                    <div class="col-8 container">
                        <form method="POST">
                            <div class="form-group"> <!-- Full Name -->
                                <label for="pass_old" class="control-label">Usuario</label>
                                <input type="text" readonly class="form-control" id="user" name="user" value="<%=session.getAttribute("user")%>">
                            </div>
                            <div class="form-group"> <!-- Full Name -->
                                <label for="pass_old" class="control-label">Contraseña Anterior</label>
                                <input type="password" class="form-control" id="pass_old" name="pass_old" placeholder="Contraseña anterior">
                            </div>
                            <label id="userAlert" style="display: none;"></label>
                            <div class="form-group"> <!-- Full Name -->
                                <label for="pass_id" class="control-label">Contraseña Nueva</label>
                                <input type="password" class="form-control form-control-user"
                                           id="pass1" placeholder="Password">
                            </div>

                            <div class="form-group"> <!-- Street 1 -->
                                <label for="passr_id" class="control-label">Repita Contraseña</label>
                                <input type="password" class="form-control form-control-user"
                                           id="pass2" placeholder="Repetir Password" name="pass2" onchange=" 
                                            //Verificar que las contraseÃ±as coincidan
                                            if(document.getElementById('pass1').value != document.getElementById('pass2').value) {
                                                alert('Las contraseÃ±as no coinciden');
                                                document.getElementById('pass2').value = '';
                                            }">
                            </div>

                            <div class="form-group text-right"> <!-- Submit Button -->
                                <button onclick="validPass()" class="btn btn-success">Guardar</button>
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
                                    <h6 class="my-0">Verificar que se guardó</h6>
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
        crossorigin="anonymous">
</script>
<script src="../js/jquery-3.6.0.min.js"></script>
<script>
    function validPass() {
        var pass = $("#pass_old").val();
        var pass2 = $("#pass2").val();
        $.ajax ({
            url: "../changePassword",
            data: {
                pass_old: pass,
                user: "<%=session.getAttribute("user")%>",
                pass2: pass2
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
