<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Heart-Life</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/x-icon" href="assets/img/Logo.png">
    <link rel="stylesheet"
          href=" https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css ">
    <link rel="stylesheet"
          href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
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
                                    <img src="https://img.icons8.com/ios/50/undefined/hospital.png" alt="" class="img-fluid d-none d-md-block rounded mb-2 shadow ">
                                </div>
                                <div class="col-8">
                                    <h6>
                                        <a href="profile/general.jsp" class="text-danger">Emergencia</a>
                                    </h6>
                                    <span class="text-muted">Completa tus datos para una mejor solucion</span>
                                </div>
                            </li>
                            <li class="row mt-3">
                                <div class="col-4">
                                    <img src="https://img.icons8.com/ios/50/undefined/apple-contacts.png" alt="" class="img-fluid d-none d-md-block rounded mb-2 shadow ">
                                </div>
                                <div class="col-8">
                                    <h6>
                                        <a href="profile/general.jsp" class="text-danger">Contactos</a>
                                    </h6>
                                    <span class="text-muted">Agrega o modifica contactos en caso de emergencia</span>
                                </div>
                            </li>
                            <li class="row mt-3">
                                <div class="col-4">
                                    <img src="https://img.icons8.com/ios/50/undefined/buy-for-cash.png" alt="" class="img-fluid d-none d-md-block rounded mb-2 shadow ">
                                </div>
                                <div class="col-8">
                                    <h6>
                                        <a href="buy.jsp" class="text-danger">Comprar</a>
                                    </h6>
                                    <span class="text-muted">Comprar dispositivo para salvar vidas</span>
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

    <section class="pt-0 pb-0 mt-0 align-items-end d-flex" style="min-height: 100vh; background-size: cover; background-image: url(https://images.unsplash.com/photo-1513378628213-b8f36d8c2878?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80);">
        <div class="container-fluid">
            <div class="row  justify-content-center align-items-end d-flex text-center h-100 ">
                <div class="col-12 col-md-8   ">
                    <h1 class="   text-light mb-2 mt-5"><strong><font color="#D92713">HEART - LIFE</font>
                    </strong> </h1>
                    <p class="lead  text-light mb-3"> Unete a nosotros y prueba todos los beneficios que tenemos para ti
                    </p>
                    <p>
                        <a href="#" class="btn btn-danger btn-round text-light btn-lg btn-rised">Empieza Ahora!</a>
                    </p>
                    <div class="btn-container-wrapper p-relative d-block  zindex-1">
                        <a class="btn btn-outline-light border-0 btn-lg pr-2 pl-2 pt-3 pb-3  mt-md-3  scroll align-self-center  " href="#">
                            <i class="fa fa-angle-down fa-2x  "></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <br>

    <section id="about-us" class="bg-dark text-white pt-5 pb-5">
        <div class="container cards cards-hover">
            <div class="row">
                <div class="col-xs-12 col-lg-12 text-center">
                    <h3 class="display-5 mb-5 text-white">Beneficios</h3>
                </div>
                <div class="row">
                    <div class="col-md-6 col-lg-4">
                        <div class="card card-block card-default text-center animated mb-4 shadow-lg  text-white bg-danger">
                            <div class="card-body">
                                <img alt="image" class="img-fluid d-block mx-auto mt-2 mb-4" src="https://img.icons8.com/ios/80/undefined/keyhole-shield.png">
                                <h4 class="display-5 mt-3 text-white">Seguridad</h4>
                                <p>Te sentirás más seguro al tener una herramienta que pida ayuda por ti en caso de que sufras algún percance.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                            <div class="card card-block card-default text-center animated mb-4 shadow-lg  text-white bg-danger">
                                <div class="card-body">
                                    <img alt="image" class="img-fluid d-block mx-auto mt-2 mb-4" src="https://img.icons8.com/ios/80/undefined/trust--v1.png">
                                    <h4 class="display-5 mt-3 text-white">Confianza</h4>
                                    <p>Ten la seguridad de salir a hacer lo que más te gusta, y tener una herramienta que te
                                        apoye en una situación de crisis. Siempre estaremos contigo.</p>
                                </div>
                            </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                            <div class="card card-block card-default text-center animated mb-4 shadow-lg  text-white bg-danger">
                                <div class="card-body">
                                    <img alt="image" class="img-fluid d-block mx-auto mt-2 mb-4" src="https://img.icons8.com/ios/80/undefined/accessibility2.png">
                                    <h4 class="display-5 mt-3 text-white">Accesibilidad</h4>
                                    <p>No te preocupes por grandes tarifas, Heart Designs es una empresa que tiene un plan pensado en ti.
                                    </p>
                                </div>
                            </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                            <div class="card card-block card-default text-center animated mb-4 shadow-lg  text-white bg-danger">
                                <div class="card-body">
                                    <img alt="image" class="img-fluid d-block mx-auto mt-2 mb-4" src="https://img.icons8.com/ios-glyphs/80/undefined/guarantee--v1.png">
                                    <h4 class="display-5 mt-3 text-white">Garantia</h4>
                                    <p>Heart Disigns constantemente trabaja en actualizaciones que permiten brindar mejores comunicaciones.</p>
                                </div>
                            </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                            <div class="card card-block card-default text-center animated mb-4 shadow-lg  text-white bg-danger">
                                <div class="card-body">
                                    <img alt="image" class="img-fluid d-block mx-auto mt-2 mb-4" src="https://img.icons8.com/ios/80/undefined/check-file.png">
                                    <h4 class="display-5 mt-3 text-white">Calidad</h4>
                                    <p>Ten la seguridad de recibir un producto confiable y que constantemente trabajamos en mejoras.</p>
                                </div>
                            </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                            <div class="card card-block card-default text-center animated mb-4 shadow-lg  text-white bg-danger">
                                <div class="card-body">
                                    <img alt="image" class="img-fluid d-block mx-auto mt-2 mb-4" src="https://img.icons8.com/ios/80/undefined/box-important--v1.png">
                                    <h4 class="display-5 mt-3 text-white">Atencion</h4>
                                    <p>Atención las 24 horas del dia, los 7 dias de la semana. Contactanos en cualquier momento. </p>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="mt-0 mb-0">
        <div class="header  pt-5 pb-5 " style=" ">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="col-sm-12 col-md-5 text-xs-center align-content-center text-md-right img-container my-2">
                        <img src=" https://images.unsplash.com/photo-1553969546-6f7388a7e07c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80" alt="" class="img-fluid d-sm-none d-md-block d-lg-block mt-5">
                    </div>
                    <div class="col-sm-12 col-md-6 align-content-center      flex-wrap d-flex">
                        <h1 class="display-4mb-3 mt-5">Siéntete libre de salir a cualquier lugar sin preocupaciones</h1>
                        <p class="lead">Con nuestros sensores de caidas y de geolocalización podras pedir ayuda en cualquier lugar</p>
                        <div class="btn-container  mt-1 btn-stack-lg ">
                            <a class="btn btn-danger  btn-pill btn-lg me-md-3 " href="#" role="button" style=" ">¡Únete ahora!</a>
                            <div class="mb-1 mt-2 me-3 align-self-right pt-4 d-inline-block">
                                <a href="#" role="button" class="  p-2 m-2">
                                    <i class="fab fa-twitter fa-lg text-danger" aria-hidden="true"></i>
                                </a>
                                <a href="#" role="button" class="  p-2 m-2">
                                    <i class="fab fa-facebook fa-lg text-danger" aria-hidden="true"></i>
                                </a>
                                <a href="#" role="button" class="  p-2 m-2">
                                    <i class="fab fa-linkedin fa-lg text-danger" aria-hidden="true"></i>
                                </a>
                                <a href="#" role="button" class="  p-2 m-2">
                                    <i class="fab fa-google fa-lg text-danger" aria-hidden="true"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="pt-5 pb-5">
        <div class="container mb-5 pb-5 pt-md-5 border-bottom border-grey">
            <div class="row align-items-center justify-content-between ">
                <div class="col-12 col-md-4 ">
                    <h2 class="mb-3 mt-5 fw-bold">Más sobre nosotros</h2>
                    <p class="lead">Ve un poco mas sobre nosotros y el porque de este proyecto</p>
                </div>
                <div class="col-12 col-md-7   mt-4 mt-md-0">
                    <div class="ratio ratio-16x9 shadow-lg">
                        <iframe class="ratio ratio-16x9" src="https://www.youtube.com/watch?v=b89CnP0Iq30" allowfullscreen=""></iframe>
                    </div>
                </div>
            </div>
        </div>
        <div class="container mt-5">
            <div class="row text-center">
                <div class="col-lg-4 mb-5 mb-lg-0">
                    <div class="display-4 text-primary mb-2">
                        <i class="fab fa-grav text-danger"></i>
                    </div>
                    <h4 class="h5 text-danger">Mejora Continua</h4>
                    <p>La constante entrega y esfuerzo en mejorar nuestros productos nos coloca como empresa
                    lider en nuestro sector, ofreciendo ademas a nuestros clientes la mejor experiencia de usuario</p>
                    <a href="about-us.html" class="text-danger">
                        Ver mas
                        <i class="fas fa-arrow-right ml-1"></i>
                    </a>
                </div>
                <div class="col-lg-4 mb-5 mb-lg-0">
                    <div class="display-4 text-primary mb-2">
                        <i class="fab fa-connectdevelop text-danger"></i>
                    </div>
                    <h4 class="h5 text-danger">Transparencia</h4>
                    <p>En nuestra empresa buscamos ser claros y conscisos en la informacion que compartimos con
                    nuestros usuarios, siendo nuestra intención, generar confianza con nuestros clientes y seguridad al
                    momento de escogernos.</p>
                    <a href="about-us.html" class="text-danger">
                        Learn More
                        <i class="fas fa-arrow-right ml-1"></i>
                    </a>
                </div>
                <div class="col-lg-4 mb-5 mb-lg-0">
                    <div class="display-4 text-primary mb-2">
                        <i class="far fa-gem text-danger"></i>
                    </div>
                    <h4 class="h5 text-danger">Responsabilidad</h4>
                    <p>Guiandonos en los valores de confianza y respeto, buscamos cuidar los datos de nuestros clientes,
                        entregar productos de la mas alta calidad y trabajando constantemente en la busqueda de la excelencia
                        para mejorar como empresa.
                    </p>
                    <a href="about-us.html" class="text-danger">
                        Learn More
                        <i class="fas fa-arrow-right ml-1"></i>
                    </a>
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
