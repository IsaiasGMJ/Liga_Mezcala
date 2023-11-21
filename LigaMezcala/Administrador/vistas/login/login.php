<?php
  include "../hirh/header.php";
?>
<body>
 
  
  <main class="login_body">
<div class="login_container">
  <input type="checkbox" id="flip">
  <div class="cover">
    <div class="front">
      <img src="/LigaMezcala/Administrador/Img/Mezcala.jpeg" alt="">
      <div class="text">
        <span id="frase-motivadora" class="text-1"></span>
        <span class="text-2">¡Es hora de conectar!</span>
      </div>
    </div>
    <div class="back">
      <img class="backImg" src="/LigaMezcala/Administrador/Img/Mezcala.jpeg" alt="">
      <div class="text">
        
      </div>
    </div>
  </div>
  <div class="forms">
      <div class="form-content">
        <div class="login-form">
          <div class="title">Inicio de sesión</div>
        <form action="../../../back-end/controladores/usuario_controlador.php" method="POST">
          <div class="input-boxes">
            <div class="input-box">
            <input type="hidden" name="operacion" value="login">
              <i class="fas fa-envelope"></i>
              <input type="text" name="usuario" id="usuario" placeholder="Ingresa tu correo" required>
            </div>
            <div class="input-box">
              <i class="fas fa-lock"></i>
              <input type="password" name="contrasena" id="contrasena" placeholder="Ingresa tu contraseña" required>
            </div>
            <?php include('msjs.php');?>
            <div class="text"><a href="recuperar.php">Crear una cuenta</a></div>
            <div class="button input-box">
              <input type="submit" value="Ingresar">
              <a href="/LigaMezcala/Administrador/Dashboard/Admin.php">Pase VIP<a>
            </div>
            
          </div>
      </form>
    </div>
      <div class="signup-form">
        <div class="title">Signup</div>
      <form action="#">
          <div class="input-boxes">
            <div class="input-box">
              <i class="fas fa-user"></i>
              <input type="text" placeholder="Enter your name" required>
            </div>
            <div class="input-box">
              <i class="fas fa-envelope"></i>
              <input type="text" placeholder="Enter your email" required>
            </div>
            <div class="input-box">
              <i class="fas fa-lock"></i>
              <input type="password" placeholder="Enter your password" required>
            </div>
            <div class="button input-box">
              <input type="submit" value="Sumbit">
            </div>
            <div class="text sign-up-text">Already have an account? <label for="flip">Login now</label></div>
          </div>
    </form>
  </div>
  </div>
  </div>
</div>
</main>
<script src="/LigaMezcala/Administrador/js/script.js"></script>  
</body>
</html>
