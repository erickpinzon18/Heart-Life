<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Blog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="assets/img/Logo.png" rel="icon">
    <link href="assets-blog/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=EB+Garamond:wght@400;500&family=Inter:wght@400;500&family=Playfair+Display:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets-blog/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets-blog/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets-blog/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
    <link href="assets-blog/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">

    <!-- Template Main CSS Files -->
    <link href="assets-blog/css/variables.css" rel="stylesheet">
    <link href="assets-blog/css/main.css" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-light bg-white  navbar-expand-md">
        <div class="container">
            <a class="navbar-brand" >
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

<div class="">

    <!-- ======= Hero Slider Section ======= -->
    <section id="hero-slider" class="hero-slider">
        <div class="container-md" data-aos="fade-in">
            <div class="row">
                <div class="col-12">
                    <div class="swiper sliderFeaturedPosts">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <a  class="img-bg d-flex align-items-end" style="background-image: url('https://images.unsplash.com/photo-1517607648415-b431854daa86?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1634&q=80');">
                                    <div class="img-bg-inner">
                                        <h2>Cuida tu salud, tu coraz??n es muy importante</h2>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem neque est mollitia! Beatae minima assumenda repellat harum vero, officiis ipsam magnam obcaecati cumque maxime inventore repudiandae quidem necessitatibus rem atque.</p>
                                    </div>
                                </a>
                            </div>

                            <div class="swiper-slide">
                                <a  class="img-bg d-flex align-items-end" style="background-image: url('https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80');">
                                    <div class="img-bg-inner">
                                        <h2>Mantente saludable, El ejercicio es tu mejor aliado</h2>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem neque est mollitia! Beatae minima assumenda repellat harum vero, officiis ipsam magnam obcaecati cumque maxime inventore repudiandae quidem necessitatibus rem atque.</p>
                                    </div>
                                </a>
                            </div>

                            <div class="swiper-slide">
                                <a  class="img-bg d-flex align-items-end" style="background-image: url('https://images.unsplash.com/photo-1505935428862-770b6f24f629?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1467&q=80');">
                                    <div class="img-bg-inner">
                                        <h2>La alimentaci??n es una de las mejores herramientas para estar saludable</h2>
                                        <p>Si bien dicen que la forma en la que te alimentas te ayuda a mejorar tu fisico, tambien lo hace con tu salud, es importante comer frutas y verduras y en caso de ser posible ir con un nutriologo para una dieta mas personalizada.</p>
                                    </div>
                                </a>
                            </div>

                            <div class="swiper-slide">
                                <a  class="img-bg d-flex align-items-end" style="background-image: url('https://images.unsplash.com/photo-1597633544424-4da83804df40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80');">
                                    <div class="img-bg-inner">
                                        <h2>Pasea a tu mascota y sal a explorar el mundo que te rodea</h2>
                                        <p>Si bien pasear a la mascota puede ser algo tedioso que muchos se olvidan de hacer. Esto puede ayudar mucho tanto a el como a ti ya que unos minutos u horas de ejercico a la semana puede ayudar a evitar problemas de salud a futuro.</p>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="custom-swiper-button-next">
                            <span class="bi-chevron-right"></span>
                        </div>
                        <div class="custom-swiper-button-prev">
                            <span class="bi-chevron-left"></span>
                        </div>

                        <div class="swiper-pagination"></div>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- End Hero Slider Section -->

    <!-- ======= Post Grid Section ======= -->
    <section id="posts" class="posts">
        <div class="container" data-aos="fade-up">
            <div class="row g-5">
                <div class="col-lg-4">
                    <div class="post-entry-1 lg">
                        <a><img src="assets-blog/img/post-landscape-1.jpg" alt="" class="img-fluid"></a>
                        <div class="post-meta"><span class="date">Culture</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                        <h2><a>11 Work From Home Part-Time Jobs You Can Do Now</a></h2>
                        <p class="mb-4 d-block">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vero temporibus repudiandae, inventore pariatur numquam cumque possimus exercitationem? Nihil tempore odit ab minus eveniet praesentium, similique blanditiis molestiae ut saepe perspiciatis officia nemo, eos quae cumque. Accusamus fugiat architecto rerum animi atque eveniet, quo, praesentium dignissimos</p>

                        <div class="d-flex align-items-center author">
                            <div class="photo"><img src="assets-blog/img/person-1.jpg" alt="" class="img-fluid"></div>
                            <div class="name">
                                <h3 class="m-0 p-0">Cameron Williamson</h3>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="col-lg-8">
                    <div class="row g-5">
                        <div class="col-lg-4 border-start custom-border">
                            <div class="post-entry-1">
                                <a ><img src="assets-blog/img/post-landscape-2.jpg" alt="" class="img-fluid"></a>
                                <div class="post-meta"><span class="date">Sport</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                                <h2><a >Let???s Get Back to Work, New York</a></h2>
                            </div>
                            <div class="post-entry-1">
                                <a ><img src="assets-blog/img/post-landscape-5.jpg" alt="" class="img-fluid"></a>
                                <div class="post-meta"><span class="date">Food</span> <span class="mx-1">&bullet;</span> <span>Jul 17th '22</span></div>
                                <h2><a >How to Avoid Distraction and Stay Focused During Video Calls?</a></h2>
                            </div>
                            <div class="post-entry-1">
                                <a ><img src="assets-blog/img/post-landscape-7.jpg" alt="" class="img-fluid"></a>
                                <div class="post-meta"><span class="date">Design</span> <span class="mx-1">&bullet;</span> <span>Mar 15th '22</span></div>
                                <h2><a >Why Craigslist Tampa Is One of The Most Interesting Places On the Web?</a></h2>
                            </div>
                        </div>
                        <div class="col-lg-4 border-start custom-border">
                            <div class="post-entry-1">
                                <a ><img src="assets-blog/img/post-landscape-3.jpg" alt="" class="img-fluid"></a>
                                <div class="post-meta"><span class="date">Business</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                                <h2><a >6 Easy Steps To Create Your Own Cute Merch For Instagram</a></h2>
                            </div>
                            <div class="post-entry-1">
                                <a ><img src="assets-blog/img/post-landscape-6.jpg" alt="" class="img-fluid"></a>
                                <div class="post-meta"><span class="date">Tech</span> <span class="mx-1">&bullet;</span> <span>Mar 1st '22</span></div>
                                <h2><a >10 Life-Changing Hacks Every Working Mom Should Know</a></h2>
                            </div>
                            <div class="post-entry-1">
                                <a ><img src="assets-blog/img/post-landscape-8.jpg" alt="" class="img-fluid"></a>
                                <div class="post-meta"><span class="date">Travel</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                                <h2><a >5 Great Startup Tips for Female Founders</a></h2>
                            </div>
                        </div>

                        <!-- Trending Section -->
                        <div class="col-lg-4">

                            <div class="trending">
                                <h3>Trending</h3>
                                <ul class="trending-post">
                                    <li>
                                        <a >
                                            <span class="number">1</span>
                                            <h3>The Best Homemade Masks for Face (keep the Pimples Away)</h3>
                                            <span class="author">Jane Cooper</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a >
                                            <span class="number">2</span>
                                            <h3>17 Pictures of Medium Length Hair in Layers That Will Inspire Your New Haircut</h3>
                                            <span class="author">Wade Warren</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a >
                                            <span class="number">3</span>
                                            <h3>13 Amazing Poems from Shel Silverstein with Valuable Life Lessons</h3>
                                            <span class="author">Esther Howard</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a >
                                            <span class="number">4</span>
                                            <h3>9 Half-up/half-down Hairstyles for Long and Medium Hair</h3>
                                            <span class="author">Cameron Williamson</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a >
                                            <span class="number">5</span>
                                            <h3>Life Insurance And Pregnancy: A Working Mom???s Guide</h3>
                                            <span class="author">Jenny Wilson</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>

                        </div> <!-- End Trending Section -->
                    </div>
                </div>

            </div> <!-- End .row -->
        </div>
    </section> <!-- End Post Grid Section -->

    <!-- ======= Culture Category Section ======= -->
    <section class="category-section">
        <div class="container" data-aos="fade-up">

            <div class="section-header d-flex justify-content-between align-items-center mb-5">
                <h2>Culture</h2>
                <div><a   class="more">See All Culture</a></div>
            </div>

            <div class="row">
                <div class="col-md-9">

                    <div class="d-lg-flex post-entry-2">
                        <a  class="me-4 thumbnail mb-4 mb-lg-0 d-inline-block">
                            <img src="assets-blog/img/post-landscape-6.jpg" alt="" class="img-fluid">
                        </a>
                        <div>
                            <div class="post-meta"><span class="date">Culture</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                            <h3><a >What is the son of Football Coach John Gruden, Deuce Gruden doing Now?</a></h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio placeat exercitationem magni voluptates dolore. Tenetur fugiat voluptates quas, nobis error deserunt aliquam temporibus sapiente, laudantium dolorum itaque libero eos deleniti?</p>
                            <div class="d-flex align-items-center author">
                                <div class="photo"><img src="assets-blog/img/person-2.jpg" alt="" class="img-fluid"></div>
                                <div class="name">
                                    <h3 class="m-0 p-0">Wade Warren</h3>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-4">
                            <div class="post-entry-1 border-bottom">
                                <a ><img src="assets-blog/img/post-landscape-1.jpg" alt="" class="img-fluid"></a>
                                <div class="post-meta"><span class="date">Culture</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                                <h2 class="mb-2"><a >11 Work From Home Part-Time Jobs You Can Do Now</a></h2>
                                <span class="author mb-3 d-block">Jenny Wilson</span>
                                <p class="mb-4 d-block">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vero temporibus repudiandae, inventore pariatur numquam cumque possimus</p>
                            </div>

                            <div class="post-entry-1">
                                <div class="post-meta"><span class="date">Culture</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                                <h2 class="mb-2"><a >5 Great Startup Tips for Female Founders</a></h2>
                                <span class="author mb-3 d-block">Jenny Wilson</span>
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="post-entry-1">
                                <a ><img src="assets-blog/img/post-landscape-2.jpg" alt="" class="img-fluid"></a>
                                <div class="post-meta"><span class="date">Culture</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                                <h2 class="mb-2"><a >How to Avoid Distraction and Stay Focused During Video Calls?</a></h2>
                                <span class="author mb-3 d-block">Jenny Wilson</span>
                                <p class="mb-4 d-block">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vero temporibus repudiandae, inventore pariatur numquam cumque possimus</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="post-entry-1 border-bottom">
                        <div class="post-meta"><span class="date">Culture</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                        <h2 class="mb-2"><a >How to Avoid Distraction and Stay Focused During Video Calls?</a></h2>
                        <span class="author mb-3 d-block">Jenny Wilson</span>
                    </div>

                    <div class="post-entry-1 border-bottom">
                        <div class="post-meta"><span class="date">Culture</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                        <h2 class="mb-2"><a >17 Pictures of Medium Length Hair in Layers That Will Inspire Your New Haircut</a></h2>
                        <span class="author mb-3 d-block">Jenny Wilson</span>
                    </div>

                    <div class="post-entry-1 border-bottom">
                        <div class="post-meta"><span class="date">Culture</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                        <h2 class="mb-2"><a >9 Half-up/half-down Hairstyles for Long and Medium Hair</a></h2>
                        <span class="author mb-3 d-block">Jenny Wilson</span>
                    </div>

                    <div class="post-entry-1 border-bottom">
                        <div class="post-meta"><span class="date">Culture</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                        <h2 class="mb-2"><a >Life Insurance And Pregnancy: A Working Mom???s Guide</a></h2>
                        <span class="author mb-3 d-block">Jenny Wilson</span>
                    </div>

                    <div class="post-entry-1 border-bottom">
                        <div class="post-meta"><span class="date">Culture</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                        <h2 class="mb-2"><a >The Best Homemade Masks for Face (keep the Pimples Away)</a></h2>
                        <span class="author mb-3 d-block">Jenny Wilson</span>
                    </div>

                    <div class="post-entry-1 border-bottom">
                        <div class="post-meta"><span class="date">Culture</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                        <h2 class="mb-2"><a >10 Life-Changing Hacks Every Working Mom Should Know</a></h2>
                        <span class="author mb-3 d-block">Jenny Wilson</span>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- End Culture Category Section -->

    <!-- ======= Business Category Section ======= -->
    <section class="category-section">
        <div class="container" data-aos="fade-up">

            <div class="section-header d-flex justify-content-between align-items-center mb-5">
                <h2>Business</h2>
                <div><a   class="more">See All Business</a></div>
            </div>

            <div class="row">
                <div class="col-md-9 order-md-2">

                    <div class="d-lg-flex post-entry-2">
                        <a  class="me-4 thumbnail d-inline-block mb-4 mb-lg-0">
                            <img src="assets-blog/img/post-landscape-3.jpg" alt="" class="img-fluid">
                        </a>
                        <div>
                            <div class="post-meta"><span class="date">Business</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                            <h3><a >What is the son of Football Coach John Gruden, Deuce Gruden doing Now?</a></h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio placeat exercitationem magni voluptates dolore. Tenetur fugiat voluptates quas, nobis error deserunt aliquam temporibus sapiente, laudantium dolorum itaque libero eos deleniti?</p>
                            <div class="d-flex align-items-center author">
                                <div class="photo"><img src="assets-blog/img/person-4.jpg" alt="" class="img-fluid"></div>
                                <div class="name">
                                    <h3 class="m-0 p-0">Wade Warren</h3>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-4">
                            <div class="post-entry-1 border-bottom">
                                <a ><img src="assets-blog/img/post-landscape-5.jpg" alt="" class="img-fluid"></a>
                                <div class="post-meta"><span class="date">Business</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                                <h2 class="mb-2"><a >11 Work From Home Part-Time Jobs You Can Do Now</a></h2>
                                <span class="author mb-3 d-block">Jenny Wilson</span>
                                <p class="mb-4 d-block">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vero temporibus repudiandae, inventore pariatur numquam cumque possimus</p>
                            </div>

                            <div class="post-entry-1">
                                <div class="post-meta"><span class="date">Business</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                                <h2 class="mb-2"><a >5 Great Startup Tips for Female Founders</a></h2>
                                <span class="author mb-3 d-block">Jenny Wilson</span>
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="post-entry-1">
                                <a ><img src="assets-blog/img/post-landscape-7.jpg" alt="" class="img-fluid"></a>
                                <div class="post-meta"><span class="date">Business</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                                <h2 class="mb-2"><a >How to Avoid Distraction and Stay Focused During Video Calls?</a></h2>
                                <span class="author mb-3 d-block">Jenny Wilson</span>
                                <p class="mb-4 d-block">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vero temporibus repudiandae, inventore pariatur numquam cumque possimus</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="post-entry-1 border-bottom">
                        <div class="post-meta"><span class="date">Business</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                        <h2 class="mb-2"><a >How to Avoid Distraction and Stay Focused During Video Calls?</a></h2>
                        <span class="author mb-3 d-block">Jenny Wilson</span>
                    </div>

                    <div class="post-entry-1 border-bottom">
                        <div class="post-meta"><span class="date">Business</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                        <h2 class="mb-2"><a >17 Pictures of Medium Length Hair in Layers That Will Inspire Your New Haircut</a></h2>
                        <span class="author mb-3 d-block">Jenny Wilson</span>
                    </div>

                    <div class="post-entry-1 border-bottom">
                        <div class="post-meta"><span class="date">Business</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                        <h2 class="mb-2"><a >9 Half-up/half-down Hairstyles for Long and Medium Hair</a></h2>
                        <span class="author mb-3 d-block">Jenny Wilson</span>
                    </div>

                    <div class="post-entry-1 border-bottom">
                        <div class="post-meta"><span class="date">Business</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                        <h2 class="mb-2"><a >Life Insurance And Pregnancy: A Working Mom???s Guide</a></h2>
                        <span class="author mb-3 d-block">Jenny Wilson</span>
                    </div>

                    <div class="post-entry-1 border-bottom">
                        <div class="post-meta"><span class="date">Business</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                        <h2 class="mb-2"><a >The Best Homemade Masks for Face (keep the Pimples Away)</a></h2>
                        <span class="author mb-3 d-block">Jenny Wilson</span>
                    </div>

                    <div class="post-entry-1 border-bottom">
                        <div class="post-meta"><span class="date">Business</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                        <h2 class="mb-2"><a >10 Life-Changing Hacks Every Working Mom Should Know</a></h2>
                        <span class="author mb-3 d-block">Jenny Wilson</span>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- End Business Category Section -->

    <!-- ======= Lifestyle Category Section ======= -->
    <section class="category-section">
        <div class="container" data-aos="fade-up">

            <div class="section-header d-flex justify-content-between align-items-center mb-5">
                <h2>Lifestyle</h2>
                <div><a   class="more">See All Lifestyle</a></div>
            </div>

            <div class="row g-5">
                <div class="col-lg-4">
                    <div class="post-entry-1 lg">
                        <a ><img src="assets-blog/img/post-landscape-8.jpg" alt="" class="img-fluid"></a>
                        <div class="post-meta"><span class="date">Lifestyle</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                        <h2><a >11 Work From Home Part-Time Jobs You Can Do Now</a></h2>
                        <p class="mb-4 d-block">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vero temporibus repudiandae, inventore pariatur numquam cumque possimus exercitationem? Nihil tempore odit ab minus eveniet praesentium, similique blanditiis molestiae ut saepe perspiciatis officia nemo, eos quae cumque. Accusamus fugiat architecto rerum animi atque eveniet, quo, praesentium dignissimos</p>

                        <div class="d-flex align-items-center author">
                            <div class="photo"><img src="assets-blog/img/person-7.jpg" alt="" class="img-fluid"></div>
                            <div class="name">
                                <h3 class="m-0 p-0">Esther Howard</h3>
                            </div>
                        </div>
                    </div>

                    <div class="post-entry-1 border-bottom">
                        <div class="post-meta"><span class="date">Lifestyle</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                        <h2 class="mb-2"><a >The Best Homemade Masks for Face (keep the Pimples Away)</a></h2>
                        <span class="author mb-3 d-block">Jenny Wilson</span>
                    </div>

                    <div class="post-entry-1">
                        <div class="post-meta"><span class="date">Lifestyle</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                        <h2 class="mb-2"><a >10 Life-Changing Hacks Every Working Mom Should Know</a></h2>
                        <span class="author mb-3 d-block">Jenny Wilson</span>
                    </div>

                </div>

                <div class="col-lg-8">
                    <div class="row g-5">
                        <div class="col-lg-4 border-start custom-border">
                            <div class="post-entry-1">
                                <a ><img src="assets-blog/img/post-landscape-6.jpg" alt="" class="img-fluid"></a>
                                <div class="post-meta"><span class="date">Lifestyle</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                                <h2><a >Let???s Get Back to Work, New York</a></h2>
                            </div>
                            <div class="post-entry-1">
                                <a ><img src="assets-blog/img/post-landscape-5.jpg" alt="" class="img-fluid"></a>
                                <div class="post-meta"><span class="date">Lifestyle</span> <span class="mx-1">&bullet;</span> <span>Jul 17th '22</span></div>
                                <h2><a >How to Avoid Distraction and Stay Focused During Video Calls?</a></h2>
                            </div>
                            <div class="post-entry-1">
                                <a ><img src="assets-blog/img/post-landscape-4.jpg" alt="" class="img-fluid"></a>
                                <div class="post-meta"><span class="date">Lifestyle</span> <span class="mx-1">&bullet;</span> <span>Mar 15th '22</span></div>
                                <h2><a >Why Craigslist Tampa Is One of The Most Interesting Places On the Web?</a></h2>
                            </div>
                        </div>
                        <div class="col-lg-4 border-start custom-border">
                            <div class="post-entry-1">
                                <a ><img src="assets-blog/img/post-landscape-3.jpg" alt="" class="img-fluid"></a>
                                <div class="post-meta"><span class="date">Lifestyle</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                                <h2><a >6 Easy Steps To Create Your Own Cute Merch For Instagram</a></h2>
                            </div>
                            <div class="post-entry-1">
                                <a ><img src="assets-blog/img/post-landscape-2.jpg" alt="" class="img-fluid"></a>
                                <div class="post-meta"><span class="date">Lifestyle</span> <span class="mx-1">&bullet;</span> <span>Mar 1st '22</span></div>
                                <h2><a >10 Life-Changing Hacks Every Working Mom Should Know</a></h2>
                            </div>
                            <div class="post-entry-1">
                                <a ><img src="assets-blog/img/post-landscape-1.jpg" alt="" class="img-fluid"></a>
                                <div class="post-meta"><span class="date">Lifestyle</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                                <h2><a >5 Great Startup Tips for Female Founders</a></h2>
                            </div>
                        </div>
                        <div class="col-lg-4">

                            <div class="post-entry-1 border-bottom">
                                <div class="post-meta"><span class="date">Lifestyle</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                                <h2 class="mb-2"><a >How to Avoid Distraction and Stay Focused During Video Calls?</a></h2>
                                <span class="author mb-3 d-block">Jenny Wilson</span>
                            </div>

                            <div class="post-entry-1 border-bottom">
                                <div class="post-meta"><span class="date">Lifestyle</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                                <h2 class="mb-2"><a >17 Pictures of Medium Length Hair in Layers That Will Inspire Your New Haircut</a></h2>
                                <span class="author mb-3 d-block">Jenny Wilson</span>
                            </div>

                            <div class="post-entry-1 border-bottom">
                                <div class="post-meta"><span class="date">Lifestyle</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                                <h2 class="mb-2"><a >9 Half-up/half-down Hairstyles for Long and Medium Hair</a></h2>
                                <span class="author mb-3 d-block">Jenny Wilson</span>
                            </div>

                            <div class="post-entry-1 border-bottom">
                                <div class="post-meta"><span class="date">Lifestyle</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                                <h2 class="mb-2"><a >Life Insurance And Pregnancy: A Working Mom???s Guide</a></h2>
                                <span class="author mb-3 d-block">Jenny Wilson</span>
                            </div>

                            <div class="post-entry-1 border-bottom">
                                <div class="post-meta"><span class="date">Lifestyle</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                                <h2 class="mb-2"><a >The Best Homemade Masks for Face (keep the Pimples Away)</a></h2>
                                <span class="author mb-3 d-block">Jenny Wilson</span>
                            </div>

                            <div class="post-entry-1 border-bottom">
                                <div class="post-meta"><span class="date">Lifestyle</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                                <h2 class="mb-2"><a >10 Life-Changing Hacks Every Working Mom Should Know</a></h2>
                                <span class="author mb-3 d-block">Jenny Wilson</span>
                            </div>

                        </div>
                    </div>
                </div>

            </div> <!-- End .row -->
        </div>
    </section><!-- End Lifestyle Category Section -->

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
                    <a  class="text-danger">erickph.ti21@utsjr.edu.mx</a>
                </p>
            </div>
            <div class="col-12 col-sm-6 col-md-4 mt-4 mt-sm-0">
                <h3><strong>San Juan del Rio</strong></h3>
                <p>Universidad Tecnologica de San Juan del Rio
                    <br>Uriel Gomez
                </p>
                <p>427 227 6427</p>
                <p>
                    <a  class="text-danger">urielgb.ti21@utsjr.edu.mx</a>
                </p>
            </div>
            <div class="col-12 col-md-4 mt-5 mt-md-0 text-md-start">
                <h3><strong>Acerca de Nosotros</strong></h3>
                <p>Somos una empresa nacida en 2021, creada por 3 estudiantes que buscan generar
                    los productos de mas alta calidad y accesibilidad en nuestro pais. En Heart-Designs busamos
                    ayudar a los sectores mas vulnerables poniendo en sus manos tecnolog??as sensillas y accesibles
                    para darles un apoyo m??s en su salud diaria.</p>
                <p class="text-h3">
                    <a >
                        <i class="fab fa-twitter text-danger" aria-hidden="true"></i>
                    </a>&nbsp;&nbsp;
                    <a >
                        <i class="fab fa-facebook text-danger" aria-hidden="true"></i>
                    </a>&nbsp;&nbsp;
                    <a >
                        <i class="fab fa-instagram text-danger" aria-hidden="true"></i>
                    </a>&nbsp;&nbsp;
                    <a >
                        <i class="fab fa-pinterest text-danger" aria-hidden="true"></i>
                    </a>&nbsp;&nbsp;
                    <a >
                        <i class="fab fa-google text-danger" aria-hidden="true"></i>
                    </a>
                </p>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col text-center">
                ?? 2022 Heart-Design. All Rights Reserved
            </div>
        </div>
    </div>
</footer>
<script src="assets-blog/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets-blog/vendor/swiper/swiper-bundle.min.js"></script>
<script src="assets-blog/vendor/glightbox/js/glightbox.min.js"></script>
<script src="assets-blog/vendor/aos/aos.js"></script>
<script src="assets-blog/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="assets-blog/js/main.js"></script>
</body>
</html>
