<%@page import="modelos.Notifications"%>
<%@page import="modelos.Alergia"%>
<%@page import="modelos.Enfermedad"%>
<%@page import="modelos.EmergencyContacts"%>
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
    List <Enfermedad> le = c.mostrarEnfermedad(user);    
    List <Alergia> la = c.mostrarAlergia(user);
    List <Notifications> ln = c.mostrarNotifications(user);
    int maxE = c.maxEnfermedad(user);
    int maxA = c.maxAlergia(user);
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
            <li class="nav-item">
                <a class="nav-link" href="security.jsp">
                    <i class="fas fa-fw fa-lock"></i>
                    <span>Seguridad</span>
                </a>
            </li>

            <!-- Nav Item - Charts -->
            <li class="nav-item active">
                <a class="nav-link" href="healt.jsp">
                    <i class="fas fa-fw fa-heart"></i>
                    <span>Salud</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">
            
            <!-- Nav Item - Charts -->
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
                                    <a class="dropdown-item disabled text-danger">
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
                
                <div class="container">
                    <div class="container-xl">
                        <div class="table-responsive">
                            <div class="table-wrapper">
                                <div class="table-title">
                                    <div class="row">
                                        <div class="col-sm-8 text-danger">
                                            <h2>Administrar <b>Enfermedades</b></h2>
                                        </div>
                                        <div class="col-sm-4 text-right">
                                            <a class="btn btn-success" data-bs-toggle="modal" data-bs-target="#modalAddEnf">Agregar</a>
                                        </div>
                                    </div>
                                </div>
                                <table class="table table-striped table-hover">
                                    <thead>
                                    <tr>
                                        <th>Enfermedad</th>
                                        <th>Gravedad</th>
                                        <th>Fecha de Detección</th>
                                        <th>Tratado</th>
                                        <th>Acciones</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                        for (int i = 0; i < le.size(); i++) {
                                    %>
                                        <tr>
                                            <td style="display: none;"> <p id="nEnf"><%=le.get(i).getnEnfer()%></p></td>
                                            <td> <p id="name<%=le.get(i).getnEnfer()%>Enf"><%=le.get(i).getNombre()%></p></td>
                                            <td> <p id="grav<%=le.get(i).getnEnfer()%>Enf"><%=le.get(i).getGravedad()%></p></td>
                                            <td> <p id="fec_det<%=le.get(i).getnEnfer()%>Enf"><%=le.get(i).getFec_det()%></p></td>
                                            <td> <p id="trat<%=le.get(i).getnEnfer()%>Enf"><%=le.get(i).getTratado()%></p></td>
                                            <td>
                                                <a type="button" class="btn-sm btn-success" data-bs-toggle="modal" data-bs-target="#modalEditEnf" 
                                                    onclick="editEnfermedad(<%=le.get(i).getnEnfer()%>)">
                                                   Editar
                                                </a>
                                                <a type="button" class="btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#modalDeleteEnf"
                                                    onclick="deleteEnfermedad(<%=le.get(i).getnEnfer()%>)">
                                                    Borrar
                                                </a>
                                            </td>
                                        </tr>
                                    <%
                                        }
                                    %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                                    <br><br><br> 
                        <div class="table-responsive">
                            <div class="table-wrapper">
                                <div class="table-title">
                                    <div class="row">
                                        <div class="col-sm-8 text-danger">
                                            <h2>Administrar <b>Alergias</b></h2>
                                        </div>
                                        <div class="col-sm-4 text-right">
                                            <a class="btn btn-success" data-bs-toggle="modal" data-bs-target="#modalAddAle">Agregar</a>
                                        </div>
                                    </div>
                                </div>
                                <table class="table table-striped table-hover">
                                    <thead>
                                    <tr>
                                        <th>Alergia</th>
                                        <th>Gravedad</th>
                                        <th>Fecha de Detección</th>
                                        <th>Tratado</th>
                                        <th>Acciones</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                        for (int i = 0; i < la.size(); i++) {
                                    %>
                                        <tr>
                                            <td style="display: none;"> <p id="nAlergia"><%=la.get(i).getnAler()%></p></td>
                                            <td> <p id="name<%=la.get(i).getnAler()%>Ale"><%=la.get(i).getNombre()%></p></td>
                                            <td> <p id="grav<%=la.get(i).getnAler()%>Ale"><%=la.get(i).getGravedad()%></p></td>
                                            <td> <p id="fec_det<%=la.get(i).getnAler()%>Ale"><%=la.get(i).getFec_det()%></p></td>
                                            <td> <p id="trat<%=la.get(i).getnAler()%>Ale"><%=la.get(i).getTratado()%></p></td>
                                            <td>
                                                <a type="button" class="btn-sm btn-success" data-bs-toggle="modal" data-bs-target="#modalEditAle" 
                                                    onclick="editAlergia(<%=la.get(i).getnAler()%>)">
                                                   Editar
                                                </a>
                                                <a type="button" class="btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#modalDeleteAle"
                                                    onclick="deleteAlergia(<%=la.get(i).getnAler()%>)">
                                                    Borrar
                                                </a>
                                            </td>
                                        </tr>
                                    <%
                                        }
                                    %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End of Content Wrapper -->
        </div>
    </div>
</div>


<!-- Modal Editar ENFERMEDAD-->
<div class="modal fade" id="modalEditEnf" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Modificar Enfermedad</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="updateEnfermedad" method="POST">
                <div class="modal-body">
                    <div class="form-group">
                        <label class="control-label">User</label>
                        <input type="text" name="user" id="userModalEnf" class="form-control" value="<%=user%>" readonly maxlength="25" minlength="2">             
                    </div>
                    <div class="form-group">
                        <label class="control-label">ID Enfermedad</label>
                        <input type="text" name="id" id="idModalEnf" class="form-control" readonly>             
                    </div>
                    <div class="form-group">
                        <label class="control-label">Nombre</label>
                        <input type="text" name="name" id="nameModalEnf" class="form-control"  maxlength="50" minlength="2">             
                    </div>
                    <div class="form-group">
                        <label class="control-label">Gravedad</label>
                        <input type="text" name="grav" id="gravModalEnf" class="form-control"  maxlength="50" minlength="2">             
                    </div>
                    <div class="form-group">
                        <label class="control-label">Fecha de Deteccion</label>
                        <input type="date" name="fec_det" id="fecModalEnf" class="form-control">             
                    </div>
                    <div class="form-group">
                        <label class="control-label">Tratado</label>
                        <input type="text" name="trat" id="tratModalEnf" class="form-control" maxlength="5" minlength="2">     
                    </div>
                </div>
                <div class="modal-footer">
                    <a class="btn btn-danger" data-bs-dismiss="modal">Cancelar</a>
                    <button type="submit" class="btn btn-success">Guardar</button>
                </div>
            </form>
        </div>
    </div>
</div>
                    
<!-- Modal Agregar -->
<div class="modal fade" id="modalAddEnf" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Agregar Enfermedad</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="addEnfermedad" method="POST">
                <div class="modal-body">
                    <div class="form-group">
                        <label class="control-label">User</label>
                        <input type="text" name="user" id="userModalEnf" required class="form-control" value="<%=user%>" readonly>             
                    </div>
                    <div class="form-group">
                        <label class="control-label">ID Enfermedad</label>
                        <input type="text" name="id" id="idModalAddEnf" required class="form-control" readonly value="<%=maxE%>">             
                    </div>
                    <div class="form-group">
                        <label class="control-label">Nombre</label>
                        <input type="text" name="name" id="nameModalAddEnf" required class="form-control" maxlength="50" minlength="2">             
                    </div>
                    <div class="form-group">
                        <label class="control-label">Gravedad</label>
                        <input type="text" name="grav" id="gravModalAddEnf" required class="form-control" maxlength="50" minlength="2">             
                    </div>
                    <div class="form-group">
                        <label class="control-label">Fecha de Deteccion</label>
                        <input type="date" name="fec_det" id="fecModalAddEnf" required class="form-control">             
                    </div>
                    <div class="form-group">
                        <label class="control-label">Tratado</label>
                        <input type="text" name="trat" id="tratModalAddEnf" required class="form-control" maxlength="5" minlength="2">     
                    </div>
                </div>
                <div class="modal-footer">
                    <a class="btn btn-danger" data-bs-dismiss="modal">Cancelar</a>
                    <button type="submit" class="btn btn-success">Registrar</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Modal Eliminar -->
<div class="modal fade" id="modalDeleteEnf" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Eliminar Enfermedad</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="removeEnfermedad" method="POST">
                <div class="modal-body">
                    <div class="form-group">
                        <label class="control-label">User</label>
                        <input type="text" name="user" id="userModalDelEnf" class="form-control" value="<%=user%>" readonly>             
                    </div>
                    <div class="form-group">
                        <label class="control-label">ID Enfermedad</label>
                        <input type="text" name="id" id="idModalDelEnf" class="form-control" readonly>             
                    </div>
                    <div class="form-group">
                        <label class="control-label">Nombre</label>
                        <input type="text" name="name" id="nameModalDelEnf" class="form-control" readonly>             
                    </div>
                    <div class="form-group">
                        <label class="control-label">Gravedad</label>
                        <input type="text" name="grav" id="gravModalDelEnf" class="form-control" readonly>             
                    </div>
                    <div class="form-group">
                        <label class="control-label">Fecha de Deteccion</label>
                        <input type="date" name="fec_det" id="fecModalDelEnf" class="form-control" readonly>             
                    </div>
                    <div class="form-group">
                        <label class="control-label">Tratado</label>
                        <input type="text" name="trat" id="tratModalDelEnf" class="form-control" readonly>     
                    </div>
                </div>
                <div class="modal-footer">
                    <a class="btn btn-primary" data-bs-dismiss="modal">Cancelar</a>
                    <button type="submit" class="btn btn-danger">Eliminar</button>
                </div>
            </form>
        </div>
    </div>
</div>       
                    
<!-- Modal Editar ALERGIA-->
<div class="modal fade" id="modalEditAle" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Modificar Alergia</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="updateAlergia" method="POST">
                <div class="modal-body">
                    <div class="form-group">
                        <label class="control-label">User</label>
                        <input type="text" name="user" id="userModalAle" class="form-control" value="<%=user%>" readonly >             
                    </div>
                    <div class="form-group">
                        <label class="control-label">ID Alergia</label>
                        <input type="text" name="id" id="idModalAle" class="form-control" readonly>             
                    </div>
                    <div class="form-group">
                        <label class="control-label">Nombre</label>
                        <input type="text" name="name" id="nameModalAle" class="form-control" maxlength="50" minlength="2">             
                    </div>
                    <div class="form-group">
                        <label class="control-label">Gravedad</label>
                        <input type="text" name="grav" id="gravModalAle" class="form-control" maxlength="50" minlength="2">             
                    </div>
                    <div class="form-group">
                        <label class="control-label">Fecha de Deteccion</label>
                        <input type="date" name="fec_det" id="fecModalAle" class="form-control">             
                    </div>
                    <div class="form-group">
                        <label class="control-label">Tratado</label>
                        <input type="text" name="trat" id="tratModalAle" class="form-control" maxlength="5" minlength="2">     
                    </div>
                </div>
                <div class="modal-footer">
                    <a class="btn btn-danger" data-bs-dismiss="modal">Cancelar</a>
                    <button type="submit" class="btn btn-success">Guardar</button>
                </div>
            </form>
        </div>
    </div>
</div>
                    
<!-- Modal Agregar -->
<div class="modal fade" id="modalAddAle" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Agregar Alergia</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="addAlergia" method="POST">
                <div class="modal-body">
                    <div class="form-group">
                        <label class="control-label">User</label>
                        <input type="text" name="user" id="userModalAle" class="form-control" value="<%=user%>" readonly>             
                    </div>
                    <div class="form-group">
                        <label class="control-label">ID Alergia</label>
                        <input type="text" name="id" id="idModalAddAle" class="form-control" readonly value="<%=maxA%>">             
                    </div>
                    <div class="form-group">
                        <label class="control-label">Nombre</label>
                        <input type="text" name="name" id="nameModalAddAle" class="form-control" required maxlength="50" minlength="2">             
                    </div>
                    <div class="form-group">
                        <label class="control-label">Gravedad</label>
                        <input type="text" name="grav" id="gravModalAddAle" class="form-control" required maxlength="50" minlength="2">             
                    </div>
                    <div class="form-group">
                        <label class="control-label">Fecha de Deteccion</label>
                        <input type="date" name="fec_det" id="fecModalAddAle" class="form-control">             
                    </div>
                    <div class="form-group">
                        <label class="control-label">Tratado</label>
                        <input type="text" name="trat" id="tratModalAddAle" class="form-control" required maxlength="5" minlength="2">     
                    </div>
                </div>
                <div class="modal-footer">
                    <a class="btn btn-danger" data-bs-dismiss="modal">Cancelar</a>
                    <button type="submit" class="btn btn-success">Registrar</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Modal Eliminar -->
<div class="modal fade" id="modalDeleteAle" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Eliminar Alergia</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="removeAlergia" method="POST">
                <div class="modal-body">
                    <div class="form-group">
                        <label class="control-label">User</label>
                        <input type="text" name="user" id="userModalDelAle" class="form-control" value="<%=user%>" readonly>             
                    </div>
                    <div class="form-group">
                        <label class="control-label">ID Alergia</label>
                        <input type="text" name="id" id="idModalDelAle" class="form-control" readonly>             
                    </div>
                    <div class="form-group">
                        <label class="control-label">Nombre</label>
                        <input type="text" name="name" id="nameModalDelAle" class="form-control" readonly>             
                    </div>
                    <div class="form-group">
                        <label class="control-label">Gravedad</label>
                        <input type="text" name="grav" id="gravModalDelAle" class="form-control" readonly>             
                    </div>
                    <div class="form-group">
                        <label class="control-label">Fecha de Deteccion</label>
                        <input type="date" name="fec_det" id="fecModalDelAle" class="form-control" readonly>             
                    </div>
                    <div class="form-group">
                        <label class="control-label">Tratado</label>
                        <input type="text" name="trat" id="tratModalDelAle" class="form-control" readonly>     
                    </div>
                </div>
                <div class="modal-footer">
                    <a class="btn btn-primary" data-bs-dismiss="modal">Cancelar</a>
                    <button type="submit" class="btn btn-danger">Eliminar</button>
                </div>
            </form>
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
    function editEnfermedad(id) {
        $("#idModalEnf").val(id);
        $("#nameModalEnf").val($("#name"+id+"Enf").text());
        $("#gravModalEnf").val($("#grav"+id+"Enf").text());
        $("#fecModalEnf").val($("#fec_det"+id+"Enf").text());
        $("#tratModalEnf").val($("#trat"+id+"Enf").text());
    }   
    function deleteEnfermedad(id) {
        $("#idModalDelEnf").val(id);
        $("#nameModalDelEnf").val($("#name"+id+"Enf").text());
        $("#gravModalDelEnf").val($("#grav"+id+"Enf").text());
        $("#fecModalDelEnf").val($("#fec_det"+id+"Enf").text());
        $("#tratModalDelEnf").val($("#trat"+id+"Enf").text());
    }   
    function editAlergia(id) {
        $("#idModalAle").val(id);
        $("#nameModalAle").val($("#name"+id+"Ale").text());
        $("#gravModalAle").val($("#grav"+id+"Ale").text());
        $("#fecModalAle").val($("#fec_det"+id+"Ale").text());
        $("#tratModalAle").val($("#trat"+id+"Ale").text());
    }   
    function deleteAlergia(id) {
        $("#idModalDelAle").val(id);
        $("#nameModalDelAle").val($("#name"+id+"Ale").text());
        $("#gravModalDelAle").val($("#grav"+id+"Ale").text());
        $("#fecModalDelAle").val($("#fec_det"+id+"Ale").text());
        $("#tratModalDelAle").val($("#trat"+id+"Ale").text());
    }   
</script>
</body>
</html>
