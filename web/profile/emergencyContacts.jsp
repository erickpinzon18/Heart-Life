<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="bd.Conexion"%>
<%
    if(session.getAttribute("user") == null) {
        response.sendRedirect("../index.jsp");
    }
    
//Relleno de datos
                    Conexion c = new Conexion();
                    String user = (String) session.getAttribute("user");
                    String sql = "SELECT nContacto, nombre, email, direc, numero FROM emergencyContacts WHERE user = '"+user+"'";
                    String nombre = null, email = null, direc = null, numero = null;
                    int nContacto = 0;
                    try {
                        c.conectar();
                        c.rs = c.smt.executeQuery(sql);
                        
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
            <li class="nav-item active">
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
                <a class="nav-link">
                    <i class="fas fa-fw fa-random"></i>
                    <span>Otros</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Topbar Search -->
                    <form
                            class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                   aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-danger" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
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
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->
                                <span class="badge badge-danger badge-counter">3+</span>
                            </a>
                        </li>

                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter">7</span>
                            </a>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">User</span>
                                <img class="img-profile rounded-circle" src="https://img.icons8.com/ios/50/undefined/user--v1.png">
                            </a>
                        </li>
                    </ul>
                </nav>
                <!-- End of Topbar -->

                <div class="container">
                    <div class="container-xl">
                        <div class="table-responsive">
                            <div class="table-wrapper">
                                <div class="table-title">
                                    <div class="row">
                                        <div class="col-sm-8 text-danger">
                                            <h2>Administrar <b>Contactos de Emergencia</b></h2>
                                        </div>
                                        <div class="col-sm-4 text-right">
                                            <a href="#addModal" class="btn btn-success" data-toggle="modal" data-target="#exampleModal"><i class="material-icons"></i> <span>Agregar</span></a>
                                        </div>
                                    </div>
                                </div>
                                <table class="table table-striped table-hover">
                                    <thead>
                                    <tr>
                                        <th>Nombre</th>
                                        <th>Email</th>
                                        <th>Direccion</th>
                                        <th>Numero</th>
                                        <th>Acciones</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                        if (c.rs != null) {
                                                while (c.rs.next()) {
                                                    nContacto = c.rs.getInt("nContacto");
                                                    nombre = c.rs.getString("nombre");
                                                    email = c.rs.getString("email");
                                                    direc = c.rs.getString("direc");
                                                    numero = c.rs.getString("numero");
                                    %>
                                        <tr>
                                            <td style="display: none;"> <p id="nContacto"><%=nombre%></p></td>
                                            <td> <p id="name<%=nContacto%>"><%=nombre%></p></td>
                                            <td> <p id="email<%=nContacto%>"><%=email%></p></td>
                                            <td> <p id="direc<%=nContacto%>"><%=direc%></p></td>
                                            <td> <p id="num<%=nContacto%>"><%=numero%></p></td>
                                            <td>
                                                <a type="button" class="btn-sm btn-success" data-bs-toggle="modal" data-bs-target="#modalEdit" 
                                                    onclick="editContact(<%=nContacto%>)">
                                                   Editar
                                                </a>
                                                <a type="button" class="btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#modalDelete">
                                                    Borrar
                                                </a>
                                            </td>
                                        </tr>
                                    <%
                                                }
                                            }
                                            c.desconectar();
                                        } catch (SQLException ex) {
                                            System.out.println("Error al insertar contacto de emergencia "+ ex +" | SQL: "+ sql);
                                        }  
                                    %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal Editar -->
<div class="modal fade" id="modalEdit" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Modificar Contacto de Emergencia</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label class="control-label">Nombre</label>
                    <input type="text" name="name" id="nameModal" class="form-control">             
                </div>
                <div class="form-group">
                    <label class="control-label">Email</label>
                    <input type="text" name="email" id="emailModal" class="form-control">             
                </div>
                <div class="form-group">
                    <label class="control-label">Direccion</label>
                    <input type="text" name="direc" id="direcModal" class="form-control">             
                </div>
                <div class="form-group">
                    <label class="control-label">Numero</label>
                    <input type="text" name="num" id="numModal" class="form-control">             
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancelar</button>
                <button type="button" class="btn btn-success">Guardar</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal Eliminar -->
<div class="modal fade" id="modalDelete" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Modal Delete</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Understood</button>
            </div>
        </div>
    </div>
</div>
<script src="../js/jquery-3.6.0.min.js"></script>
<script>
    function editContact(id) {
        $("#nameModal").val($("#name"+id).text());
        $("#emailModal").val($("#email"+id).text());
        $("#direcModal").val($("#direc"+id).text());
        $("#numModal").val($("#num"+id).text());
        //$("#userAlert").html(result);
    }    
</script>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous">
            
</script>

</body>
</html>
