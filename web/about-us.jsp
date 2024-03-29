<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>About Us</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/x-icon" href="assets/img/Logo.png">
    <link rel="stylesheet" href="assets/css/personalStyle.css">
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

    <section class="pt-4 pb-3 mt-0 d-flex bg-dark" style="background-image: url(https://images.unsplash.com/photo-1505238680356-667803448bb6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80); min-height: 100vh; background-size: cover;">
        <div class="container-fluid p-md-4">
            <div class="row    d-flex  h-100 ">
                <div class="position-relative  w-100 h-25  d-flex">
                    <div class="container-fluid align-self-start   mt-2 mb-2">
                        <div class="row">
                            <div class="col-10 col-md-1">
                                <img alt="image" class="d-block rounded img-fluid" src="assets/img/Logo.png" href="assets/img/Logo.png">
                            </div>
                            <div class="col-11 d-none d-md-block text-right">
                                <div class="row align-items-center">
                                    <div class="col-12 align-self-center">
                                        <hr class="border border-border-light mt-3">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="position-relative  w-100 h-50  d-flex">
                    <div class="container-fluid align-self-center   pt-5 pt-md-1 mb-2">
                        <div class="row justify-content-center">
                            <div class="col-12 col-md-5">
                                <h3 class="small badge badge-danger text-light">B I E N V E N I D O
                                </h3>
                                <h1 class="  mb-0 pt-sm-4 text-light font-weight-bold display-5">
                                    Somos la mejor empresa en el sector</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="position-relative  w-100  h-25 d-flex">
                    <div class="container-fluid align-self-end  mt-5 mb-2">
                        <div class="row">
                            <div class="col-md-6 col-7">
                                <div class=" pt-0 d-inline-block">
                                    <a href="#" role="button" class=" btn btn-link mr-2">
                                        <i class="fab fa-twitter fa-lg text-light" aria-hidden="true"></i>
                                    </a>
                                    <a href="#" role="button" class=" btn btn-link mr-2">
                                        <i class="fab fa-facebook fa-lg text-light" aria-hidden="true"></i>
                                    </a>
                                    <a href="#" role="button" class=" btn btn-link mr-2">
                                        <i class="fab fa-linkedin fa-lg text-light" aria-hidden="true"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-6 col-5 text-right">
                                <a href="#" class="btn btn-light">Contactanos</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> <br>

    <section class="pt-0 pb-0">
        <div class="container-fluid m-0 ">
            <div class="row d-md-flex-row  overflow-hidden">
                <div class="col-md-4  p-0 col-12 bg-light d-flex overflow-hidden ">
                    <div class="card p-0   w-100 h-100 text-light   border-0 ">
                        <img class="card-img h-100 w-100" src="https://images.unsplash.com/photo-1572985025310-cc8cafbbf394?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=682&q=80" alt="Card image">
                        <div class="card-img-overlay p-1 p-md-3    ">
                            <div class="position-relative  w-100 h-25  d-flex">
                                <div class="container-fluid align-self-start   mt-2 mb-2">
                                    <div class="row">
                                        <div class="col-7 col-md-5">
                                            <h4 class="mt-1">Heart Designs</h4>
                                        </div>
                                        <div class="col-md-7 col-7 text-right">
                                            <div class="row align-items-center">
                                                <div class="col-12 align-self-center">
                                                    <hr class="border border-border-light mt-3">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="position-relative  w-100 h-50  d-flex">
                                <div class="container-fluid align-self-center   mt-5 mb-2">
                                    <div class="row">
                                        <div class="col-12">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="position-relative  w-100  h-25 d-flex">
                                <div class="container-fluid align-self-end  mt-5 mb-2">
                                    <div class="row">
                                        <div class="col-md-6 col-7">
                                            <div class=" pt-0 d-inline-block">
                                                <a href="#" role="button" class=" btn btn-link me-2">
                                                    <i class="fab fa-twitter fa-lg text-light" aria-hidden="true"></i>
                                                </a>
                                                <a href="#" role="button" class=" btn btn-link me-2">
                                                    <i class="fab fa-facebook fa-lg text-light" aria-hidden="true"></i>
                                                </a>
                                                <a href="#" role="button" class=" btn btn-link me-2">
                                                    <i class="fab fa-dribbble fa-lg text-light" aria-hidden="true"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-5 text-end">
                                            <a href="#" class="btn btn-outline-light">Buscanos</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8  pt-5 pt-md-1 pb-5 overflow-hidden bg-light">
                    <div class="container-fluid p-md-5 d-flex align-items-center h-100">
                        <div class="row justify-content-md-center">
                            <div class="col-md-8">
                                <h3 class="small">HEART DESINGS</h3>
                                <h1 class="  mb-5 pt-md-2 pt-sm-4">Somos empresa l��der
                                    <br>en desarrollo de tecnolog��as.
                                </h1>
                                <p>Fundada como una agencia comercial de desarrollo de software, Heart Designs se convirti� r�pidamente en una empresa
                                    l��der en la programaci�n y desarrollo de nuevas tecnolog��as que ahora opera en la zona del baj��o.
                                    En la d�cada de 2020, la agencia comercial original se especializan en la producci�n de aplicaciones web y bases de datos.
                                    En la actualidad (2022), se pone en marcha la realizaci�n de su primer proyecto importante: Heart Life �,
                                    la cual se encargar� de revolucionar la forma en la que se ayuda a las personas de la tercera edad,
                                    tambi�n personas con problemas de sobrepeso, deportistas, personas con discapacidades que necesitan
                                    ayuda en un momento inoportuno.
                                </p>


                            </div>

                            <div class="col-12 col-md-4 pt-md-5">
                                <h5 class="">Technologies used:</h5>
                                <br>
                                <h5 class="mt-md-4 mb-3 small text-uppercase">Frontend</h5>
                                <div class="progress mb-3 mt-2">
                                    <div class="progress-bar bg-dark" role="progressbar" style="width: 60%">
                                        <span class="stacked-label">HTML</span>
                                    </div>
                                </div>
                                <div class="progress mb-3 mt-2">
                                    <div class="progress-bar bg-dark" role="progressbar" style="width: 70%">
                                        <span class="stacked-label">CSS</span>
                                    </div>
                                </div>
                                <div class="progress mb-3 mt-2">
                                    <div class="progress-bar bg-dark" role="progressbar" style="width: 80%">
                                        <span class="stacked-label">JavaScript</span>
                                    </div>
                                </div>
                                <h5 class="mt-md-5 mb-3 small text-uppercase">Backend</h5>
                                <div class="progress mb-3 mt-2">
                                    <div class="progress-bar bg-dark" role="progressbar" style="width: 70%">
                                        <span class="stacked-label">PHP</span>
                                    </div>
                                </div>
                                <div class="progress mb-3 mt-2">
                                    <div class="progress-bar bg-dark" role="progressbar" style="width: 80%">
                                        <span class="stacked-label">Java</span>
                                    </div>
                                </div>
                                <div class="progress mb-3 mt-2">
                                    <div class="progress-bar bg-dark" role="progressbar" style="width: 60%">
                                        <span class="stacked-label">Pyton</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="pt-5 pb-5">
        <div class="container  ">
            <div class="row   justify-content-center    d-flex  ">
                <div class="col-md-4 mx-auto mb-3">
                    <div class="card">
                        <img class="card-img-top shadow" src=" https://user-images.githubusercontent.com/65203105/172616006-7a6fd0fc-2302-48e1-bf3c-012d1dd5ef96.jpeg" alt="Profile">
                        <div class="card-body text-center">
                            <h4 class="card-title">Erick Pinzon Huerta</h4>
                            <p class="card-text text-muted">Srum Master</p>
                            <a href="#" class="social twitter m-2">
                                <i class="fab fa-github text-danger"></i>
                            </a>
                            <a href="#" class="social facebook m-2">
                                <i class="fab fa-facebook text-danger"></i>
                            </a>
                            <a href="#" class="social google-plus m-2">
                                <i class="fab fa-instagram text-danger"></i>
                            </a>
                            <a href="#" class="social linkedin m-2">
                                <i class="fab fa-linkedin text-danger"></i>
                            </a>
                            <p class="mt-4">
                                <a href="https://api.whatsapp.com/send?phone=4271635691&text=Hola%20Erick,%20como%20estas?" class="btn btn-outline-danger">Contactame!</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mx-auto mb-3 card">
                    <div class="card">
                        <img class="card-img-top shadow" src="https://user-images.githubusercontent.com/65203105/172616017-3fbf0236-6d48-4be1-8ace-23831e5fcf2f.jpeg" alt="Profile">
                        <div class="card-body text-center">
                            <h4 class="card-title">Ricardo Manuel Maga�a Calva</h4>
                            <p class="card-text text-muted">Product Owner</p>
                            <a href="#" class="social twitter m-2">
                                <i class="fab fa-github text-danger"></i>
                            </a>
                            <a href="#" class="social facebook m-2">
                                <i class="fab fa-facebook text-danger"></i>
                            </a>
                            <a href="#" class="social google-plus m-2">
                                <i class="fab fa-instagram text-danger"></i>
                            </a>
                            <a href="#" class="social linkedin m-2">
                                <i class="fab fa-linkedin text-danger"></i>
                            </a>
                            <p class="mt-4">
                                <a href="https://api.whatsapp.com/send?phone=4271221773&text=Hola%20Ricardo,%20como%20estas?" class="btn btn-outline-danger">Contactame!</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mx-auto mb-3">
                    <div class="card">
                        <img class="card-img-top shadow" src="https://user-images.githubusercontent.com/65203105/172616011-bb7952d2-0f3e-4181-8c98-db87e01ed454.jpeg" alt="Profile">
                        <div class="card-body text-center">
                            <h4 class="card-title">Uriel Gomez Becerril</h4>
                            <p class="card-text text-muted">Developer</p>
                            <a href="#" class="social twitter m-2">
                                <i class="fab fa-github text-danger"></i>
                            </a>
                            <a href="#" class="social facebook m-2">
                                <i class="fab fa-facebook text-danger"></i>
                            </a>
                            <a href="#" class="social google-plus m-2">
                                <i class="fab fa-instagram text-danger"></i>
                            </a>
                            <a href="#" class="social linkedin m-2">
                                <i class="fab fa-linkedin text-danger"></i>
                            </a>
                            <p class="mt-4">
                                <a href="https://api.whatsapp.com/send?phone=4272276427&text=Hola%20Uriel,%20como%20estas?" class="btn btn-outline-danger">Contactame!</a>
                            </p>
                        </div>
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
                    ayudar a los sectores mas vulnerables poniendo en sus manos tecnolog��as sensillas y accesibles
                    para darles un apoyo m�s en su salud diaria.</p>
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
                � 2022 Heart-Design. All Rights Reserved
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
