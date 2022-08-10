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
                                        <h2>Cuida tu salud, tu corazón es muy importante</h2>
                                        <p>Uno de los organos mas importantes de nuestro cuerpo es el corazon, por ello hay que cuidarlo ejercitandonos y comiendo de una manera sana para evitar enfermedades a futuro.</p>
                                    </div>
                                </a>
                            </div>

                            <div class="swiper-slide">
                                <a  class="img-bg d-flex align-items-end" style="background-image: url('https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80');">
                                    <div class="img-bg-inner">
                                        <h2>Mantente saludable, El ejercicio es tu mejor aliado</h2>
                                        <p>Una de las mejores opciones para mantenerse saludable tanto fisica como mentalemente es el ejercicio, ya que se ha demostrado cientificamente que hacer ejercicio puede ayudarnos a sentirnos mejor con nosotros mismos asi como a estar mejor de salud.</p>
                                    </div>
                                </a>
                            </div>

                            <div class="swiper-slide">
                                <a  class="img-bg d-flex align-items-end" style="background-image: url('https://images.unsplash.com/photo-1505935428862-770b6f24f629?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1467&q=80');">
                                    <div class="img-bg-inner">
                                        <h2>La alimentación es una de las mejores herramientas para estar saludable</h2>
                                        <p>La forma en la que te alimentas te ayuda a mejorar tu fisico, tambien lo hace con tu salud, es importante comer frutas y verduras y en caso de ser posible ir con un nutriologo para una dieta mas personalizada.</p>
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
                        <a><img src="https://images.unsplash.com/photo-1477332552946-cfb384aeaf1c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80" alt="" class="img-fluid"></a>
                        <div class="post-meta"><span class="date">Salud</span> <span class="mx-1">&bullet;</span> <span>Jun 5 22</span></div>
                        <h2><a href="https://cardioalianza.org/cuida-tu-corazon/">¿Cómo cuidar tu corazón?</a></h2>
                        <p class="mb-4 d-block">El primer paso para cuidar tu corazón es prevenir los factores de riesgo cardiovascular. Es decir, aquellas características biológicas
                            y hábitos de vida que aumentan las probabilidades de que aparezca una enfermedad cardiovascular.</p>
                        <div class="d-flex align-items-center author">
                            <div class="photo"><img src="https://cardioalianza.org/wp-content/uploads/2018/04/logotipo-cardio.png" alt="" class="img-fluid"></div>
                            <div class="name">
                                <h3 class="m-0 p-0">Cardio Alianza</h3>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="col-lg-8">
                    <div class="row g-5">
                        <div class="col-lg-4 border-start custom-border">
                            <div class="post-entry-1">
                                <a href="https://www.mutua-intercomarcal.com/portal/noticia/2323/Doce-alimentos-beneficiosos-para-tu-corazon"><img src="assets-blog/img/post-landscape-2.jpg" alt="" class="img-fluid"></a>
                                <div class="post-meta"><span class="date">Comida</span> <span class="mx-1">&bullet;</span> <span>Jul 5 22</span></div>
                                <h2><a href="https://www.mutua-intercomarcal.com/portal/noticia/2323/Doce-alimentos-beneficiosos-para-tu-corazon">Doce alimentos beneficiosos para tu corazón</a></h2>
                            </div>
                            <div class="post-entry-1">
                                <a ><img src="https://es.familydoctor.org/wp-content/uploads/2000/09/70165171_xxl-705x470.jpg" alt="" class="img-fluid"></a>
                                <div class="post-meta"><span class="date">Deporte</span> <span class="mx-1">&bullet;</span> <span>Jul 17th '22</span></div>
                                <h2><a href="https://es.familydoctor.org/dieta-y-ejercicio-para-un-corazon-sano/#:~:text=El%20ejercicio%20aeróbico%20hace%20que,nadar%20y%20andar%20en%20bicicleta.">Dieta y ejercicio para un corazón sano</a></h2>
                            </div>
                        </div>
                        <div class="col-lg-4 border-start custom-border">
                            <div class="post-entry-1">
                                <a ><img src="https://images.unsplash.com/photo-1460672985063-6764ac8b9c74?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80" alt="" class="img-fluid"></a>
                                <div class="post-meta"><span class="date">Salud</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                                <h2><a href="https://www.salud.mapfre.es/cuerpo-y-mente/habitos-saludables/claves-para-mantener-un-corazon-sano/">10 Claves para mantener un corazón Sano</a></h2>
                            </div>
                            <div class="post-entry-1">
                                <a ><img src="assets-blog/img/post-landscape-6.jpg" alt="" class="img-fluid"></a>
                                <div class="post-meta"><span class="date">Familia</span> <span class="mx-1">&bullet;</span> <span>Mar 1st '22</span></div>
                                <h2><a href="https://hospitalvozandes.com/como-cuidar-la-salud-de-mi-familia/">¿Cómo cuidar la salud de mi familia?</a></h2>
                            </div>
                        </div>

                        <!-- Trending Section -->
                        <div class="col-lg-4">

                            <div class="trending">
                                <h3>Consejos</h3>
                                <ul class="trending-post">
                                    <li>
                                        <a >
                                            <span class="number">1</span>
                                            <h3>Toma mucha agua en el dia, te ayuda mucho</h3>
                                        </a>
                                    </li>
                                    <li>
                                        <a >
                                            <span class="number">2</span>
                                            <h3>Utiliza bloqueador si sales a la calle y te expones al sol</h3>
                                        </a>
                                    </li>
                                    <li>
                                        <a >
                                            <span class="number">3</span>
                                            <h3>Ejercitate a diario aunque solo sea salir a caminar</h3>
                                        </a>
                                    </li>
                                    <li>
                                        <a >
                                            <span class="number">4</span>
                                            <h3>Cuida de tus seres queridos asi como ellos lo hacen contigo</h3>
                                        </a>
                                    </li>
                                    <li>
                                        <a >
                                            <span class="number">5</span>
                                            <h3>Sal con tu mascota, recuerda que ellos tambien necesitan estar saludables</h3>
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
                <h2>Ejercicio</h2>
                <div><a   class="more">Ver más</a></div>
            </div>

            <div class="row">
                <div class="col-md-9">

                    <div class="d-lg-flex post-entry-2">
                        <a  class="me-4 thumbnail mb-4 mb-lg-0 d-inline-block">
                            <img src="https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=920&q=80" alt="" class="img-fluid">
                        </a>
                        <div>
                            <div class="post-meta"><span class="date">Ejercicio</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                            <h3><a href="https://www.cdc.gov/healthyweight/spanish/physicalactivity/index.html">Peso saludable: ¡No es una dieta, es un estilo de vida!</a></h3>
                            <p>La actividad física regular es importante para la buena salud, en especial si está intentando bajar de peso o mantener un peso saludable.
                            Para mantener su peso: Llegue gradualmente hasta 150 minutos de actividad aeróbica de intensidad moderada, 75 minutos de actividad aeróbica de intensidad vigorosa o el equivalente combinado de los dos tipos de actividad cada semana. </p>
                            <div class="d-flex align-items-center author">
                                <div class="photo"><img src="https://www.abccolumbia.com/content/uploads/2020/03/KPwn1JyQ_400x400.jpg" alt="" class="img-fluid"></div>
                                <div class="name">
                                    <h3 class="m-0 p-0">HHS.Gov</h3>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-4">
                            <div class="post-entry-1 border-bottom">
                                <a ><img src="https://www.partidoverde.org.mx/images/noticias/abr18/2_868.jpg" alt="" class="img-fluid"></a>
                                <div class="post-meta"><span class="date">Ejercicio</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                                <h2 class="mb-2"><a href="https://www.partidoverde.org.mx/contenidos-nav/blog-ambiental-animales-ecologia/18981-ejercicios-para-hacer-en-casa-oficina">5 ejercicios caseros para comenzar una vida saludable.</a></h2>
                                <span class="author mb-3 d-block">Partido Verde</span>
                                <p class="mb-4 d-block">Caminar todos los días al menos 30 minutos, reduce el riesgo de sufrir enfermedades cardiovasculares. </p>
                            </div>

                            <div class="post-entry-1">
                                <div class="post-meta"><span class="date">Ejercicio</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                                <h2 class="mb-2"><a href="https://gestion.pe/fotogalerias/5-ejercicios-para-mantenerse-saludable-durante-la-cuarentena-noticia/">Cinco ejercicios para mantenerse saludable durante la cuarentena</a></h2>
                                <span class="author mb-3 d-block">Gestion Pe</span>
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="post-entry-1">
                                <a ><img src="https://www.aguaeden.es/sites/default/files/blog_migrate/iStock_33019834_MEDIUM-1024x705.jpg" alt="" class="img-fluid"></a>
                                <div class="post-meta"><span class="date">Ejercicio</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                                <h2 class="mb-2"><a href="https://www.aguaeden.es/blog/rutina-de-ejercicios-sencillos-y-saludables">Rutina de ejercicios sencillos y saludables</a></h2>
                                <span class="author mb-3 d-block">Eden Springs</span>
                                <p class="mb-4 d-block">Mantiene nuestra salud. Nuestro cuerpo se mantiene en un perfecto equilibrio. No hacer ejercicio reduce las capacidades y las habilidades de nuestro cuerpo: 
                                    respiratorias, de resistencia, reflejos a la vez que facilita padecer algunas dolencias: contracturas musculares, dolor de espalda, dolor de cabeza, etc. El ejercicio físico pone en marcha nuestro cuerpo y lo mantiene en forma.</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="post-entry-1 border-bottom">
                        <div class="post-meta"><span class="date">Ejercicio</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                        <h2 class="mb-2"><a href="https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwjlzYWmkbT5AhXBlmoFHQ4uDH0QFnoECCQQAQ&url=https%3A%2F%2Fwww.comunidad.madrid%2Fservicios%2Fsalud%2Frecomendaciones-practica-actividad-fisica-saludable&usg=AOvVaw30RiGgoOi0a3kZuWFiXlYh">Recomendaciones para la práctica de actividad física saludable</a></h2>
                    </div>

                    <div class="post-entry-1 border-bottom">
                        <div class="post-meta"><span class="date">Ejercicio</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                        <h2 class="mb-2"><a href="https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwjlzYWmkbT5AhXBlmoFHQ4uDH0QFnoECCcQAQ&url=https%3A%2F%2Fmejorconsalud.as.com%2F5-ejercicios-sencillos-cuerpo-sano%2F&usg=AOvVaw0eCgz5CgQB3Q7PlMnAU3CR">5 ejercicios sencillos para tener un cuerpo sano</a></h2>
                    </div>

                    <div class="post-entry-1 border-bottom">
                        <div class="post-meta"><span class="date">Ejercicio</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                        <h2 class="mb-2"><a href="https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwjlzYWmkbT5AhXBlmoFHQ4uDH0QFnoECCkQAQ&url=https%3A%2F%2Fwww.pro-activ.com%2Fes-es%2Frecetas-y-consejos%2Funa-vida-saludable%2F10-rutinas-para-hacer-ejercicio-en-casa&usg=AOvVaw3H3pittLuHnxEYuaXdkKFX">10 rutinas para hacer ejercicio en casa</a></h2>
                    </div>

                    <div class="post-entry-1 border-bottom">
                        <div class="post-meta"><span class="date">Ejercicio</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                        <h2 class="mb-2"><a href="https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwjlzYWmkbT5AhXBlmoFHQ4uDH0QFnoECCMQAQ&url=https%3A%2F%2Fwww.sanitas.es%2Fsanitas%2Fseguros%2Fes%2Fparticulares%2Fbiblioteca-de-salud%2Fejercicio-deporte%2FConsejos-para-correr%2Fsan041668wr.html&usg=AOvVaw3Q75Uz3S-pJBz2pahD_glF">Ejercicio: ¿de qué tipo y cuánto?</a></h2>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- End Culture Category Section -->

    <!-- ======= Business Category Section ======= -->
    <section class="category-section">
        <div class="container" data-aos="fade-up">

            <div class="section-header d-flex justify-content-between align-items-center mb-5">
                <h2>Alimentacion</h2>
                <div><a   class="more">Ver más</a></div>
            </div>

            <div class="row">
                <div class="col-md-9 order-md-2">

                    <div class="d-lg-flex post-entry-2">
                        <a  class="me-4 thumbnail d-inline-block mb-4 mb-lg-0">
                            <img src="https://images.unsplash.com/photo-1606787366850-de6330128bfc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80" alt="" class="img-fluid">
                        </a>
                        <div>
                            <div class="post-meta"><span class="date">Alimentacion</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                            <h3><a href="https://www.minsalud.gov.co/salud/publica/HS/Paginas/que-es-alimentacion-saludable.aspx#:~:text=Generalizando%2C%20se%20puede%20decir%20que,%2C%20gestación%2C%20lactancia%2C%20desarrollo%20y">¿Qué es una alimentación saludable?</a></h3>
                            <p>Diariamente, al consumir alimentos no hay conocimiento claro de sus contenidos nutricionales, calorías, cantidades de sodio o azúcar y se habla que es preferible consumir más proteínas que harinas o que son mejores las dietas recomendadas por los conocidos o encontradas en páginas de
                            internet que consultar a un especialista.</p>
                            <div class="d-flex align-items-center author">
                                <div class="photo"><img src="https://www.minsalud.gov.co/LogosInstitucionales/logo-gobierno-Ministerio-de-Salud-y-Proteccion-Social-minsalud.png" alt="" class="img-fluid"></div>
                                <div class="name">
                                    <h3 class="m-0 p-0">Minsalud</h3>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-4">
                            <div class="post-entry-1 border-bottom">
                                <a ><img src="assets-blog/img/post-landscape-5.jpg" alt="" class="img-fluid"></a>
                                <div class="post-meta"><span class="date">Alimentacion</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                                <h2 class="mb-2"><a href="https://www.breastcancer.org/es/organizar-la-vida/dieta-nutricion/en-que-consiste-comer-saludable">¿En qué consiste una alimentación saludable?</a></h2>
                                <span class="author mb-3 d-block">Breastcancer.org</span>
                                <p class="mb-4 d-block">Una alimentación saludable consiste en ingerir una variedad de alimentos que te brinden los nutrientes que necesitas para mantenerte sana, sentirte bien y tener energía.</p>
                            </div>

                            <div class="post-entry-1">
                                <div class="post-meta"><span class="date">Alimentacion</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                                <h2 class="mb-2"><a href="https://www.cdc.gov/healthyweight/spanish/healthyeating/index.html">Alimentación saludable para un peso saludable</a></h2>
                                <span class="author mb-3 d-block">CDC</span>
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="post-entry-1">
                                <a ><img src="https://www.gob.mx/cms/uploads/article/main_image/116285/AlimentacionSaludable.jpg" alt="" class="img-fluid"></a>
                                <div class="post-meta"><span class="date">Alimentacion</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                                <h2 class="mb-2"><a href="https://www.gob.mx/promosalud/es/articulos/que-es-la-alimentacion-saludable?idiom=es">Alimentación Saludable</a></h2>
                                <span class="author mb-3 d-block">Gobierno de México</span>
                                <p class="mb-4 d-block">Una alimentación saludable nos ayuda a tener un buen estado de salud, a sanar o realizar procesos de recuperación, a combatir enfermedades e infecciones y a evitar enfermedades crónicas degenerativas causadas por la obesidad.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="post-entry-1 border-bottom">
                        <div class="post-meta"><span class="date">Alimentacion</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                        <h2 class="mb-2"><a >Come frutas y verduras, trata de balancear tus comidas para que lleven de todo el plato del bien comer</a></h2>
                    </div>

                    <div class="post-entry-1 border-bottom">
                        <div class="post-meta"><span class="date">Alimentacion</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                        <h2 class="mb-2"><a >Consulta a un nutriologo en caso de tener problemas de alimentación</a></h2>
                    </div>

                    <div class="post-entry-1 border-bottom">
                        <div class="post-meta"><span class="date">Alimentacion</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                        <h2 class="mb-2"><a >Deja a un lado las golosinas y los alimentos con mucha grasa, afecta mucho al corazón</a></h2>
                    </div>

                    <div class="post-entry-1 border-bottom">
                        <div class="post-meta"><span class="date">Alimentacion</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                        <h2 class="mb-2"><a >Ningun alimento en exceso es bueno, todo siempre se hace con medida para estar saludable</a></h2>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- End Business Category Section -->
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
                    ayudar a los sectores mas vulnerables poniendo en sus manos tecnologÃ­as sensillas y accesibles
                    para darles un apoyo mÃ¡s en su salud diaria.</p>
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
                © 2022 Heart-Design. All Rights Reserved
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
