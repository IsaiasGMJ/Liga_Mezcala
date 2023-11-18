<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="./css/main.css">

    <title>Proyecto Integrador</title>
  </head>
  <body>
  <!--========================================================== -->
                        <!-- ENCABEZADO -->
  <!--========================================================== -->
    

    <nav  class="navbar navbar-expand-lg navbar-light p-3"  id="menu">
        <div class="container">
          <a class="navbar-brand" href="#">
              <span class="fs-5 text-primary fw-bold">Liga Mezcala</span>
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link" href="#equipo">Equipo</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#seccion-contacto">Contactos</a>
              </li>
               <li class="nav-item">
                <a class="nav-link" href="#seccion-contacto">Contactos</a>
              </li>
            </ul>
          </div>

        </div>
      </nav>

    <!--========================================================== -->
                        <!-- carusel DE IMAGENES-->
    <!--========================================================== -->
   
    <div id="carousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active" data-bs-interval="3000">
            <img src="./img/carusel.jfif" class="d-block w-100" alt="">
          </div>
          
 
          <div class="carousel-item" data-bs-interval="3000">
            <img src="./img/carusel2.jpg" class="d-block w-100" alt="...">
          </div>
 

          <div class="carousel-item" data-bs-interval="3000">
            <img src="./img/carusel3.jpeg" class="d-block w-100" alt="...">
          </div>
 
 
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carousel"  data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carousel"  data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>    
    
        
     
    <!--========================================================== -->
                        <!-- INTRODUCCION DE SERVICIOS-->
    <!--========================================================== -->


    <section class="d-flex flex-column justify-content-center align-items-center pt-5  text-center w-50 m-auto" id="intro">
    <h1 class="p-3 fs-2 border-top border-3">La mejor liga en el mejor lugar <span class="text-primary">Mezcala de la Asuncion<span/></h1>
     <p class="p-3  fs-4">
         <span class="text-primary">Liga Mezcala</span> es la nueva forma de vivir el futbol amateur con los equipos de tus amores       
     </p>   
    </section>

   <!--========================================================== -->
                        <!-- TIPOS DE SERVICIOS-->
    <!--========================================================== -->


<section class="w-100">
    <div class="row w-75 mx-auto" id="servicios-fila-1">       
        <div class="col-lg-6 col-md-12 col-sm-12 d-flex justify-content-start my-5 icono-wrap">
            <img src="./img/presidente.png" alt="desarrollo"   width="180" height="160">

            <div>
                <h3 class="fs-5 mt-4 px-4 pb-1">Presidente Liga Mezcala</h3>
                <p class="px-4">Pedro Gonzales Flores</p>
                <ul> <i class="bi-phone"></i> +52 33 3497 3259</ul>
            </div>

        </div>

        <div class="col-lg-6 col-md-12 col-sm-12 d-flex justify-content-start  my-5 icono-wrap">
            <img src="./img/presidente.png" alt="concepto" width="180" height="160">

            <div>
                <h3 class="fs-5 mt-4 px-4 pb-1 icono-wrap">Tesorero</h3>
                <p class="px-4">Jose de Jesus Velazquez Gonzales
                </p>
            </div>
        </div>   
    </div>
    
    <div class="row w-75 mx-auto mb-5" id="servicios-fila-2">       
        <div class="col-lg-6 col-md-12 col-sm-12 d-flex justify-content-start  my-5 icono-wrap">
            <img src="./img/oficinas.png" alt="comunicaciones" width="180" height="160">

            <div>
                <h3 class="fs-5 mt-4 px-4 pb-1">Oficinas</h3>
                <p class="px-4"> Calle Ramon Corona #2 
                  <ul> <i class="bi-calendar-date"></i>  Miercoles y jueves 
                    <ul> <i class="bi-clock"></i>  17:30 - 19:00
                  </ul>
                </p>
                
            </div>
        </div>

        <div class="col-lg-6 col-md-12 col-sm-12 d-flex justify-content-start my-5 icono-wrap">
            <img src="./img/presidente.png" alt="seo" width="180" height="160" >

            <div>
                <h3 class="fs-5 mt-4 px-4 pb-1">Campos de futbol</h3>
                <p class="px-4">Margarito Jacobo </p>
            </div>
        </div>   
    </div>
</section>

<!--========================================================== -->
                        <!-- SECCION ACERCA DE NOSOTROS-->
<!--========================================================== -->

<section>
    <div class="container w-50 m-auto text-center" id="equipo">
        <h1 class="mb-5 fs-2"> <span class="text-primary">Equipos Liga Mezcala</span>.</h1>
        <p class="fs-4 ">Siempre buscamos las personas adecuadas para que trabajen con nosotros. Si te sientes listo para este reto, te esperamos para que te unas a nosotros.</p>
    </div>

    <div class="mt-5 text-center">
        <img id="img-equipo" src="./img/equipos.webp" alt="equipo">
      </div>
      <div id="local" class="border-top border-2">
        <div id="map"></div>
        <p><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3719.51121711494!2d-103.02034378660372!3d20.339266008309004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses-419!2smx!4v1699570764701!5m2!1ses-419!2smx" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></p>
        <div>
            <div class="wrapper-local">
                <h2>Mezcala de la Asuncion,Jal.</h2>
                <h2 class="text-primary mb-4" id="typewriter"></h2>
                <p class="fs-5 text-body">Elije Mezcala para tus partidos 
                   con el objetivo de que estes cerca de un Pueblo con gran historia.
                    Tenemos el mejor ambiente familiar, los mejores restaurantes, tiendas y tan solo 5 minutos del Malecon. ¡Visitennos y no se arrepentiran!</p>
                <section class="d-flex justify-content-start" id="numeros-local">
                    <div>
                        <p class="text-primary fs-5">290</p>
                        <p>Dias de Sol</p>
                    </div>
                    <div>
                        <p class="text-primary fs-5">100%</p>
                        <p>Aprobado</p>
                    </div>
                    <div>
                        <p class="text-primary fs-5">24 °C</p>
                        <p>Temperatura</p>
                    </div>
              </section>
            </div>
        </div>
    </div>

</section>


<!--========================================================== -->
                        <!-- SECCION CONTACTOS-->
<!--========================================================== -->

<section id="seccion-contacto" class="border-bottom border-secondary border-2">
  <div id="bg-contactos">
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#1b2a4e" fill-opacity="1" d="M0,32L120,42.7C240,53,480,75,720,74.7C960,75,1200,53,1320,42.7L1440,32L1440,320L1320,320C1200,320,960,320,720,320C480,320,240,320,120,320L0,320Z"></path></svg>
  </div>


<!--========================================================== -->
                      <!-- CONTENEDOR DEL FORMULARIO -->
<!--========================================================== -->

  <div class="container  border-top border-primary " style="max-width: 500px" id="contenedor-formulario">
      <div class="text-center mb-4" id="titulo-formulario">
        <div><img src="./img/carusel3.jpeg" alt="" class="img-fluid ps-5"></div>
        <h2>Contactanos</h2>
        <p class="fs-5">Tus sugerencias nos ayudan a mejorar</p>
      </div>

     

      <form   method="POST" data-netlify="true" action="#">     
            <div class= "mb-3">           
              <input type="email" class="form-control" id="email" name="email" placeholder="nombre@ejemplo.com">
            </div>
 
          
            <div class="mb-3">            
              <input type="input" class="form-control" id="name" name="name" placeholder="Tu nombre">
            </div>
      

            <div class="mb-3">
              <input type="tel" class="form-control" name="phone" id="phone" placeholder="Teléfono">
            </div>

          <div class="mb-3">       
            <textarea class="form-control" name="message" id="message" placeholder="Tu sugerencia" rows="4"></textarea>
          </div>

          <div class="mb-3">
            <button type="submit" class=" btn btn-primary w-100 fs-5">Enviar Mensaje</button>
          </div>
      </form>
  
  </div>
</section>


<!--========================================================== -->
                        <!--FOOTER-->
<!--========================================================== -->


<footer class="w-100  d-flex  align-items-center justify-content-center flex-wrap">
  <p class="fs-5 px-3  pt-3">FIRESOFT X &copy; Todos Los Derechos Reservados 2023</p>
  <div id="iconos" >
      <a href="https://www.facebook.com/Mauricio Cruz"><i class="bi bi-facebook"></i></a>
      <a href="https://wa.me/3326538297"><i class="bi bi-whatsapp"></i></a>
      <a href="https://www.instagram.com/dmcr_16/"><i class="bi bi-instagram"></i></a>  
  </div>
</footer>

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script> 
    <script src="https://unpkg.com/typewriter-effect@latest/dist/core.js"></script>
    <script src="LM.js"></script>
  </body>
</html>