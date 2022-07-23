<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Buy</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/x-icon" href="assets/img/Logo.png">
    <link rel="stylesheet"
          href=" https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css ">
    <link rel="stylesheet"
          href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-light bg-white  navbar-expand-md">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="assets/img/Logo.png" width="16%"  alt="image">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav3" aria-controls="navbarNav3" aria-expanded="true" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="navbar-collapse collapse " id="navbarNav3" style="">
                <ul class="navbar-nav ms-auto">
                    <%
                        if(session.getAttribute("user") != null) {
                    %>
                    <li class="nav-item dropdown">
    
                        <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Perfil
                        </a>
                        <div class="dropdown-menu dropdown-menu-right p-3" aria-labelledby="navbarDropdown" style="min-width:300px">
                            <h6 class="text-danger"><%=session.getAttribute("user")%></h6>
                            <div class="dropdown-divider"></div>
                            <ul class="shopping-cart-items pt-2 pl-0">
                                <li class="row mt-3">
                                    <div class="col-4">
                                        <img src="https://img.icons8.com/dotty/50/1A1A1A/ambulance.png" alt="" class="img-fluid d-none d-md-block rounded mb-2 shadow ">
                                    </div>
                                    <div class="col-8">
                                        <h6>
                                            <a href="profile/mail.jsp" class="text-danger">EMERGENCIA</a>
                                        </h6>
                                        <span class="text-muted">Si necesitas ayuda da click aqui y mandaremos informacion a tus contactos de emergencia</span>
                                    </div>
                                </li>
                                <li class="row mt-3">
                                    <div class="col-4">
                                        <img src="https://img.icons8.com/ios-glyphs/50/1A1A1A/gear.png" alt="" class="img-fluid d-none d-md-block rounded mb-2 shadow ">
                                    </div>
                                    <div class="col-8">
                                        <h6>
                                            <a href="profile/general.jsp" class="text-danger">General</a>
                                        </h6>
                                        <span class="text-muted">Modifica tu informacion en general</span>
                                    </div>
                                </li>
                                <li class="row mt-3">
                                    <div class="col-4">
                                        <img src="https://img.icons8.com/ios/50/undefined/hospital.png" alt="" class="img-fluid d-none d-md-block rounded mb-2 shadow ">
                                    </div>
                                    <div class="col-8">
                                        <h6>
                                            <a href="profile/emergencyContacts.jsp" class="text-danger">Contactos de Emergencia</a>
                                        </h6>
                                        <span class="text-muted">Agrega o modifica contactos en caso de emergencia</span>
                                    </div>
                                </li>
                                <li class="row mt-3">
                                    <div class="col-4">
                                        <img src="https://img.icons8.com/ios/50/undefined/apple-contacts.png" alt="" class="img-fluid d-none d-md-block rounded mb-2 shadow ">
                                    </div>
                                    <div class="col-8">
                                        <h6>
                                            <a href="profile/relatives.jsp" class="text-danger">Familiares Cercanos</a>
                                        </h6>
                                        <span class="text-muted">Agrega o modifica a tus familiares mas cercanos</span>
                                    </div>
                                </li>
                                <li class="row mt-3">
                                    <div class="col-4">
                                        <img src="https://img.icons8.com/ios/50/1A1A1A/heart-health.png" alt="" class="img-fluid d-none d-md-block rounded mb-2 shadow ">
                                    </div>
                                    <div class="col-8">
                                        <h6>
                                            <a href="profile/healt.jsp" class="text-danger">Salud</a>
                                        </h6>
                                        <span class="text-muted">Agrega o modifica alergias o enfermedades</span>
                                    </div>
                                </li>
                                <li class="row mt-3">
                                    <div class="col-4">
                                        <img src="https://img.icons8.com/ios/50/1A1A1A/good-pincode.png" alt="" class="img-fluid d-none d-md-block rounded mb-2 shadow ">
                                    </div>
                                    <div class="col-8">
                                        <h6>
                                            <a href="profile/security.jsp" class="text-danger">Seguridad</a>
                                        </h6>
                                        <span class="text-muted">Cambia tu contrasena</span>
                                    </div>
                                </li>
                            </ul>
                            <a href="profile/general.jsp" class="btn btn-md btn-block btn-danger mt-3" style="margin: 0;">Ver Perfil</a>
                        </div>
                    </li>
                    <%    
                        }
                    %>
                    
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Inicio</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="blog.jsp">Blog</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="buy.jsp">Comprar</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.jsp">Acerca</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about-us.jsp">Nosotros</a>
                    </li>
                    <%
                        if(session.getAttribute("user") == null) {
                    %>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Iniciar Sesion</a>
                    </li>
                    <%    
                        } else {
                    %>
                    <li class="nav-item">
                        <a class="nav-link" href="logout">Cerrar Sesion</a>
                    </li>   
                    <%
                        }
                    %>
                </ul>
            </div>
        </div>
    </nav>

<div class="container main-container">

    <section class="pt-2 pb-5 mt-0 align-items-start d-flex" style="min-height: 100vh; background-size: cover;
    background-image: url(https://images.unsplash.com/photo-1643513473450-f2b4a0ee4fbf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80);">
        <div class="container-fluid">
            <div class="row  justify-content-center align-items-start d-flex text-center h-100">
                <div class="col-12 col-md-6  h-50 ">
                    <h1 class="   mb-2 mt-5">
                        <strong>
                            EL ACCESORIO QUE CUIDA DE TI
                        </strong>
                    </h1>
                    <p class="lead mb-5">Un accesorio a la moda que se encarga de cuidarte cuando no puedes hacerlo</p>
                    <p>
                        <a href="#" class="btn btn-outline-danger shadow-lg btn-round  btn-lg btn-rised">
                            Unete Ahora!</a>
                    </p>
                    <div class="btn-container-wrapper p-relative d-block  zindex-1">
                        <a class="btn btn-outline-light border-0 btn-lg pr-2 pl-2 pt-3 pb-3  mt-md-5 mb-4 scroll align-self-center  " href="#section-1">
                            <i class="fa fa-angle-down fa-2x text-danger "></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="pt-5 pb-5">
        <div class="container my-5">
            <div class="row p-4 pb-0 pe-lg-0 pt-lg-5 align-items-center rounded-3 border shadow-lg">
                <div class="col-lg-7 p-3 p-lg-5 pt-lg-3">
                    <h1 class="display-4 fw-bold lh-1">
                        Unete a la comunidad de usuarios
                    </h1>
                    <p class="lead">
                        Crea una cuenta y disfruta de todos los beneficios que tenemos para ti, además
                        configura tu perfil para obtener todas las ventajas que ofrecemos y asi estar
                        mas seguro de salir sin preocupaciones mientras nosotros nos encargamos de
                        cuidate aun cuando tu no puedas hacerlo.
                    </p>
                    <div class="d-grid gap-2 d-md-flex justify-content-md-start mb-4 mb-lg-3">
                        <button type="button" class="btn btn-danger btn-lg px-4 me-md-2 fw-bold">Unirme</button>
                        <button type="button" class="btn btn-outline-danger btn-lg px-4">Ver mas</button>
                    </div>
                </div>
                <div class="col-lg-4 offset-lg-1 p-0 overflow-hidden shadow-lg">
                    <img class="rounded" src="https://images.unsplash.com/photo-1517048676732-d65bc937f952?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" alt="" width="160%">
                </div>
            </div>
        </div>
    </section>

    <section class="bg-light text-dark pt-5 pb-5 mb-0">
        <div class="container-fluid pt-5 ">
            <div class="row align-items-start justify-content-around">
                <div class="col-12 col-md-4 offset-md-1">
                    <h2 class="fw-bold">Mira todos los beneficios que tenemos para ti</h2>
                    <p class="text-h3 mt-3  lead">Unete a nosotros y prueba todos los beneficios que tenemos para ti
                    </p>
                    <a class="btn btn-danger shadow-lg btn-lg    mt-md-3 " href="#" role="button">Ver mas</a>
                </div>
                <div class="col-12 col-md-5  align-self-end mt-4 mt-md-0">
                    <h5>Beneficios</h5>
                    <div class="row align-items-center text-danger justify-content-start pb-5">
                        <div class="col-6 col-md-4">
                            <div class="my-1">
                                <div class=" d-inline mr-2">
                                    <i class=" p-2  fa fa-check"></i>
                                </div>
                                <h4 class="d-inline small ">Aumento de la seguridad.</h4>
                            </div>
                        </div>
                        <div class="col-6 col-md-4">
                            <div class="my-1">
                                <div class=" d-inline mr-2">
                                    <i class=" p-2  fa fa-check"></i>
                                </div>
                                <h4 class="d-inline small ">Mejor toma de decisiones.</h4>
                            </div>
                        </div>
                        <div class="col-6 col-md-4">
                            <div class="my-1">
                                <div class=" d-inline mr-2">
                                    <i class=" p-2  fa fa-check"></i>
                                </div>
                                <h4 class="d-inline small ">Mejor eficiencia de la atención.</h4>
                            </div>
                        </div>
                        <div class="col-6 col-md-4">
                            <div class="my-1">
                                <div class=" d-inline mr-2">
                                    <i class=" p-2  fa fa-check"></i>
                                </div>
                                <h4 class="d-inline small ">Consulta rápida.</h4>
                            </div>
                        </div>
                        <div class="col-6 col-md-4">
                            <div class="my-1">
                                <div class=" d-inline mr-2">
                                    <i class=" p-2  fa fa-check"></i>
                                </div>
                                <h4 class="d-inline small ">Programa accesible.</h4>
                            </div>
                        </div>
                        <div class="col-6 col-md-4">
                            <div class="my-1">
                                <div class=" d-inline mr-2">
                                    <i class=" p-2  fa fa-check"></i>
                                </div>
                                <h4 class="d-inline small ">Interfaz </h4>
                            </div>
                        </div>
                        <div class="col-6 col-md-4">
                            <div class="my-1">
                                <div class=" d-inline mr-2">
                                    <i class=" p-2  fa fa-check"></i>
                                </div>
                                <h4 class="d-inline small ">Familiares comunicados</h4>
                            </div>
                        </div>
                        <div class="col-6 col-md-4">
                            <div class="my-1">
                                <div class=" d-inline mr-2">
                                    <i class=" p-2  fa fa-check"></i>
                                </div>
                                <h4 class="d-inline small ">Rapidez</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="pt-5 pb-5">
        <div class="container mb-5">
            <div class="row">
                <div class="col-12 col-lg-3 mr-lg-auto align-self-center">
                    <div class=" text-center text-md-start">
                        <h2 class="fw-bold  mb-3">PLANES</h2>
                        <p class="lead text-muted">
                            Estos son algunos planes de financiamiento que tenemos para ti, siempre pensando en tu bolsillo
                        </p>
                    </div>
                </div>
                <div class="col-10 col-md-12 col-lg-8 mx-auto">
                    <div class="row">
                        <div class="order-3 relative d-none d-md-block col-12 col-md-6 card card-body shadow my-5" style="margin-left: -15px;">
                            <div class="row align-items-center">
                                <div class="col-10 mx-auto">
                                    <div class="pricing-extra my-3">
                                        <div class="row align-items-center text-md-center text-lg-left">
                                            <div class="col-12">
                                                <h3 class="small fw-bold">
                                                    Seguirdad
                                                </h3>
                                                <p class="text-muted mb-0">
                                                    Mantente seguro siempre que sales
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-10 mx-auto">
                                    <div class="pricing-extra my-3">
                                        <div class="row align-items-center text-md-center text-lg-left">
                                            <div class="col-12">
                                                <h3 class="small fw-bold">
                                                    Confianza
                                                </h3>
                                                <p class="text-muted mb-0">
                                                    Siéntete confiado de salir a cualquier lugar que quieras
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-10 mx-auto">
                                    <div class="pricing-extra my-3">
                                        <div class="row align-items-center text-md-center text-lg-left">
                                            <div class="col-12">
                                                <h3 class="small fw-bold">
                                                    Ubicación
                                                </h3>
                                                <p class="text-muted mb-0">
                                                    Mantendremos tu ubicacion para pedir ayuda en cuanto lo necesites
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-10 mx-auto">
                                    <div class="pricing-extra my-3">
                                        <div class="row align-items-center text-md-center text-lg-left">
                                            <div class="col-12">
                                                <h3 class="small fw-bold">
                                                    Ayuda 24/7
                                                </h3>
                                                <p class="text-muted mb-0">
                                                    El servicio estará presente las 24 horas del dia
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 relative bg-white card card-body shadow d-flex align-items-center">
                            <div class=" text-center align-self-center p-md-3 p-lg-4 p-xl-5">
                                <div class="d-block">
                                    <h3 class="fw-bold display-3">
                                        <sup class="small">$</sup>$$$
                                    </h3>
                                </div>
                                <h4 class="small text-white"><span>Personal plan</span></h4>
                                <ul class="list-unstyled mt-md-4">
                                    <li class="py-2">Vive sin preocupaciones</li>
                                    <li class="py-2">Mantente seguro siempre</li>
                                    <li class="py-2">No te preocupes por tu seguirdad</li>
                                    <li class="py-2">Tus familiares siempre estarán informados</li>
                                </ul>
                                <div class="col text-center mt-md-5">
                                    <a href="#" class="btn btn-lg btn-danger px-5">Comprar ahora</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="pt-5 pb-5">
        <div class="container">
            <div class="row w-100">
                <div class="col-lg-12 col-md-12 col-12">
                    <h3 class="display-5 mb-2">
                        Tabla de planes
                    </h3>
                    <p class="mb-5">Necesitas mas planes, esta es una tabla con todos los planes que tenemos para ti</p>
                    <div class="table-responsive">
                        <table class="table table-striped table-hover text-center">
                            <thead class="">
                            <tr class=" ">
                                <th></th>
                                <th>PLAN 1</th>
                                <th>PLAN 2</th>
                                <th>PLAN 3</th>
                                <th>PLAN 4</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Correo de emergencia</td>
                                <td>
                                    <i class="fas fa-check fa-lg  text-success"></i>
                                </td>
                                <td>
                                    <i class="fas fa-times fa-lg  text-danger"></i>
                                </td>
                                <td>
                                    <i class="fas fa-times fa-lg  text-danger"></i>
                                </td>
                                <td>
                                    <i class="fas fa-times fa-lg  text-danger"></i>
                                </td>
                            </tr>
                            <tr>
                                <td>Sin limite de Contactos</td>
                                <td>
                                    <i class="fas fa-check fa-lg  text-success"></i>
                                </td>
                                <td>
                                    <i class="fas fa-check fa-lg  text-success"></i>
                                </td>
                                <td>
                                    <i class="fas fa-times fa-lg  text-danger"></i>
                                </td>
                                <td>
                                    <i class="fas fa-times fa-lg  text-danger"></i>
                                </td>
                            </tr>
                            <tr>
                                <td>Soporte 24/7</td>
                                <td>
                                    <i class="fas fa-check fa-lg  text-success"></i>
                                </td>
                                <td>
                                    <i class="fas fa-check fa-lg  text-success"></i>
                                </td>
                                <td>
                                    <i class="fas fa-check fa-lg  text-success"></i>
                                </td>
                                <td>
                                    <i class="fas fa-times fa-lg  text-danger"></i>
                                </td>
                            </tr>
                            <tr>
                                <td>Seguridad 24/7</td>
                                <td>
                                    <i class="fas fa-check fa-lg  text-success"></i>
                                </td>
                                <td>
                                    <i class="fas fa-check fa-lg  text-success"></i>
                                </td>
                                <td>
                                    <i class="fas fa-check fa-lg  text-success"></i>
                                </td>
                                <td>
                                    <i class="fas fa-check fa-lg  text-success"></i>
                                </td>
                            </tr>
                            <tr>
                                <td> </td>
                                <td>
                                    <a class="btn btn-danger text-white ">Comprar ahora</a>
                                </td>
                                <td>
                                    <a class="btn btn-danger text-white ">Comprar ahora</a>
                                </td>
                                <td>
                                    <a class="btn btn-danger text-white ">Comprar ahora</a>
                                </td>
                                <td>
                                    <a class="btn btn-danger text-white ">Comprar ahora</a>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>


</div>

<footer class="pt-5 pb-5  bg-dark text-light">
    <div class="container">
        <div class="row align-items-top text-center text-md-start">
            <div class="col-12 col-sm-6 col-md-4">
                <h3><strong>San Juan del Rio</strong></h3>
                <p>Universidad Tecnologica de San Juan del Rio
                    <br>Erick Pinzon
                </p>
                <p>427 163 5691</p>
                <p>
                    <a href="#" class="text-danger">erickph.ti21@utsjr.edu.mx</a>
                </p>
            </div>
            <div class="col-12 col-sm-6 col-md-4 mt-4 mt-sm-0">
                <h3><strong>San Juan del Rio</strong></h3>
                <p>Universidad Tecnologica de San Juan del Rio
                    <br>Uriel Gomez
                </p>
                <p>427 227 6427</p>
                <p>
                    <a href="#" class="text-danger">urielgb.ti21@utsjr.edu.mx</a>
                </p>
            </div>
            <div class="col-12 col-md-4 mt-5 mt-md-0 text-md-start">
                <h3><strong>Acerca de Nosotros</strong></h3>
                <p>Somos una empresa nacida en 2021, creada por 3 estudiantes que buscan generar
                    los productos de mas alta calidad y accesibilidad en nuestro pais. En Heart-Designs busamos
                    ayudar a los sectores mas vulnerables poniendo en sus manos tecnologías sensillas y accesibles
                    para darles un apoyo más en su salud diaria.</p>
                <p class="text-h3">
                    <a href="#">
                        <i class="fab fa-twitter text-danger" aria-hidden="true"></i>
                    </a>&nbsp;&nbsp;
                    <a href="#">
                        <i class="fab fa-facebook text-danger" aria-hidden="true"></i>
                    </a>&nbsp;&nbsp;
                    <a href="#">
                        <i class="fab fa-instagram text-danger" aria-hidden="true"></i>
                    </a>&nbsp;&nbsp;
                    <a href="#">
                        <i class="fab fa-pinterest text-danger" aria-hidden="true"></i>
                    </a>&nbsp;&nbsp;
                    <a href="#">
                        <i class="fab fa-google text-danger" aria-hidden="true"></i>
                    </a>
                </p>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col text-center">
                © 2022 Heart-Design. All Rights Reserved
            </div>
        </div>
    </div>
</footer>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
