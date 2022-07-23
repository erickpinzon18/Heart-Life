<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>About</title>
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

    <section style="min-height: 100vh; background-size: cover; background-image: url(&quot;https://images.unsplash.com/photo-1524749292158-7540c2494485?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=7d5a353ebfa0d9c8ade95cc02bf18e1e&quot;);" class="pb-5 mt-0 align-items-bottom d-flex bg-dark">
        <div class="container">
            <div class="row  justify-content-end text-left text-md-right  align-items-end d-flex  h-100 ">
                <div class="col-12 col-md-7  ">
                    <h1 class="  text-uppercase text-light  mb-2  "><strong>Build Your
                        Website in Minutes Not Months</strong> </h1>
                    <p class="lead  text-light  mb-2">Sub-heading. Header 100% height
                        with bottom align items</p>
                    <p>
                        <a href="#" class="btn btn-outline-light btn-round m-2 ms-0 btn-lg  ">GET
                            NOW </a>
                        <a href="#" class="btn bg-light btn-round m-2   btn-lg btn-rised">
                            <i class="fa fa-play  mr-md-2" aria-hidden="true"></i>TRY
                            DEMO</a>
                    </p>
                </div>
            </div>
        </div>
    </section>
    <br>
    <section style="display: block;" class="">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-4  ">
                    <div class="card">
                        <div class="card-body">
                            <label for="exampleDataList" class="form-label">Datalist example</label>
                            <input class="form-control" list="datalistOptions" id="exampleDataList" placeholder="Type to search...">
                            <datalist id="datalistOptions">
                                <option value="San Francisco">
                                </option><option value="New York">
                            </option><option value="Seattle">
                            </option><option value="Los Angeles">
                            </option><option value="Chicago">
                            </option></datalist>
                        </div>
                    </div>
                    <div class="list-group">
                        <a href="#" class="list-group-item active">Cras justo odio</a>
                        <a href="#" class="list-group-item">Dapibus ac facilisis in</a>
                        <a href="#" class="list-group-item">Morbi leo risus</a>
                        <a href="#" class="list-group-item">Porta ac consectetur ac</a>
                        <a href="#" class="list-group-item">Vestibulum at eros</a>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <img class="img-fluid" src=" https://dummyimage.com/430x200/5fa9f8/efefef" alt="">
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <img class="img-fluid" src=" https://dummyimage.com/430x200/5fa9f8/efefef" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-8  ">
                    <div id="carousel-726829" class="carousel slide mb-5">
                        <ol class="carousel-indicators">
                            <li data-bs-target="#carousel-726829" data-bs-slide-to="0" class="active"></li>
                            <li data-bs-target="#carousel-726829" data-bs-slide-to="1" class="">
                            </li>
                            <li data-bs-target="#carousel-726829" data-bs-slide-to="2" class="">
                            </li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="item carousel-item active" style="left: 0px;">
                                <img class="img-fluid" src=" https://dummyimage.com/860x400/5fa9f8/efefef" alt="thumb">
                                <div class="carousel-caption">Carousel caption. Here goes
                                    slide description. Lorem ipsum dolor set amet.</div>
                            </div>
                            <div class="item carousel-item" style="left: 0px;">
                                <img class="img-fluid" src=" https://dummyimage.com/860x400/5fa9f8/efefef" alt="thumb">
                                <div class="carousel-caption">Carousel caption 2. Here goes
                                    slide description. Lorem ipsum dolor set amet.
                                </div>
                            </div>
                            <div class="item carousel-item" style="left: 0px;">
                                <img class="img-fluid" src=" https://dummyimage.com/860x400/5fa9f8/efefef" alt="thumb">
                                <div class="carousel-caption">Carousel caption 3. Here goes
                                    slide description. Lorem ipsum dolor set amet.
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="margin-top-20">
                        <div class="row">
                            <div class="col-4 col-md-4 col-lg-4 col-xl-4">
                                <img class="img-fluid" src=" https://dummyimage.com/250x100/5fa9f8/efefef" alt="">
                            </div>
                            <div class="col-8 col-md-8 col-lg-8 col-xl-8">
                                <h3>
                                    h2. Bootstrap Heading
                                </h3>
                                <p class="lead">Vivamus sagittis lacus vel augue laoreet
                                    rutrum faucibus dolor auctor. Duis mollis, est non commodo
                                    luctus.</p>
                            </div>
                        </div>
                    </div>
                    <div class="margin-top-20">
                        <div class="row">
                            <div class="col-4 col-md-4 col-lg-4 col-xl-4">
                                <img class="img-fluid" src=" https://dummyimage.com/250x100/5fa9f8/efefef" alt="">
                            </div>
                            <div class="col-8 col-md-8 col-lg-8 col-xl-8">
                                <h3>
                                    h2. Bootstrap Heading
                                </h3>
                                <p class="lead">Vivamus sagittis lacus vel augue laoreet
                                    rutrum faucibus dolor auctor. Duis mollis, est non commodo
                                    luctus.</p>
                            </div>
                        </div>
                    </div>
                    <div class="margin-top-20">
                        <div class="row">
                            <div class="col-4 col-md-4 col-lg-4 col-xl-4">
                                <img class="img-fluid" src=" https://dummyimage.com/250x100/5fa9f8/efefef" alt="">
                            </div>
                            <div class="col-8 col-md-8 col-lg-8 col-xl-8">
                                <h3>
                                    h2. Bootstrap Heading
                                </h3>
                                <p class="lead">Vivamus sagittis lacus vel augue laoreet
                                    rutrum faucibus dolor auctor. Duis mollis, est non commodo
                                    luctus.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="pt-5 pb-5">
        <div class="container pl-md-5 pr-md-5 pt-md-4 pb-md-4">
            <div class="row align-items-center h-100 justify-content-between">
                <div class="col-12 col-md-6  text-left">
                    <h2 class="fw-bold">Why people trust us</h2>
                    <p class=" mt-4">Lorem ipsum dolor sit amet, consectetur adipiscing
                        elit. Duis pharetra varius quam sit amet vulputate. Quisque mauris
                        augue, molestie tincidunt condimentum vitae, gravida a libero.
                        Aenean sit amet felis dolor, in sagittis nisi. </p>
                    <blockquote class="card  text-left py-3 px-4 mb-3 mt-4  ">
                        <div class="row align-items-center justify-content-between">
                            <div class="col-3  p-md-1 text-center rounded">
                                <img src=" https://dummyimage.com/115x80/5fa9f8/fff&amp;text=[ IMG ]" class="img-fluid py-0 rounded" alt="features">
                                <footer class="blockquote-footer small p-1 mt-2">
                <span class="small">John Doe
                  <cite class="font-weight-bold">COMPANY NAME</cite>
                </span>
                                </footer>
                            </div>
                            <div class="col-9">
                                <p class=" m-0 text-muted small">
                                    Quisque mauris augue, molestie tincidunt condimentum vitae,
                                    gravida a libero. Aenean sit amet felis dolor, in sagittis
                                    nisi. Etiam sed iaculis libero, at euismod massain venenatis
                                    ligula.
                                </p>
                                <i class="fa fa-quote-right fa-2x text-muted pull-right mt-3" aria-hidden="true"></i>
                            </div>
                        </div>
                    </blockquote>
                </div>
                <div class="col-12 col-md-5 mb-4 d-none d-md-block   h-100">
                    <div class="logos row row-grid  mt-5 h-100 align-self-end justify-content-between" style="bottom:90px; top:auto; left:20px; right:20px;">
                        <div class="col-6 my-1 pt-3 pb-2">
                            <div class="card shadow">
                                <div class="card-body">
                                    <img src=" https://dummyimage.com/200x80/5fa9f8/fff&amp;text=L O G O" alt="" class="d-md-block d-none mx-auto img-fluid">
                                </div>
                            </div>
                        </div>
                        <div class="col-6 my-1 pt-3 pb-2">
                            <div class="card shadow">
                                <div class="card-body">
                                    <img src=" https://dummyimage.com/200x80/5fa9f8/fff&amp;text=L O G O" alt="" class="d-md-block d-none mx-auto img-fluid">
                                </div>
                            </div>
                        </div>
                        <div class="col-6 my-1 pt-3 pb-2">
                            <div class="card shadow">
                                <div class="card-body">
                                    <img src=" https://dummyimage.com/200x80/5fa9f8/fff&amp;text=L O G O" alt="" class="d-md-block d-none mx-auto img-fluid">
                                </div>
                            </div>
                        </div>
                        <div class="col-6 my-1 pt-3 pb-2">
                            <div class="card shadow">
                                <div class="card-body">
                                    <img src=" https://dummyimage.com/200x80/5fa9f8/fff&amp;text=L O G O" alt="" class="d-md-block d-none mx-auto img-fluid">
                                </div>
                            </div>
                        </div>
                        <div class="col-6 my-1 pt-3 pb-2">
                            <div class="card shadow">
                                <div class="card-body">
                                    <img src=" https://dummyimage.com/200x80/5fa9f8/fff&amp;text=L O G O" alt="" class="d-md-block d-none mx-auto img-fluid">
                                </div>
                            </div>
                        </div>
                        <div class="col-6 my-1 pt-3 pb-2">
                            <div class="card shadow">
                                <div class="card-body">
                                    <img src=" https://dummyimage.com/200x80/5fa9f8/fff&amp;text=L O G O" alt="" class="d-md-block d-none mx-auto img-fluid">
                                </div>
                            </div>
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
