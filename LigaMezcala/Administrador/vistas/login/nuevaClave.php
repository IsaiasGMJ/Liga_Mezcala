<?php if($_REQUEST['tokenUser'] !="" && $_REQUEST['id'] !=""){ ?>

    <?php
  include "../hirh/header.php";
?>
<body>
  <?php 
    include "../hirh/navbar.php";
  ?>
  <main class="login_body">
<div class="login_container">
  <input type="checkbox" id="flip">
  <div class="cover">
    <div class="front">
      <img src="../../img/frontImg.jpg" alt="">
      <div class="text">
        <span id="frase-motivadora" class="text-1"></span>
        <span class="text-2">¡Es hora de conectar!</span>
      </div>
    </div>
    <div class="back">
      <img class="backImg" src="../../img/backImg.jpg" alt="">
      <div class="text">
        
      </div>
    </div>
  </div>
  <div class="forms">
      <div class="form-content">
        <div class="login-form">
          <div class="title">Hola Bienvenido, escribe tu nueva contraseña</div>
        <form action="updateclave.php" method="POST">
          <div class="input-boxes">
            <div class="input-box">
            <input type="text" name="id" value="<?php echo $_REQUEST['id']; ?>" hidden="true">
            <input type="text" name="tokenUser" value="<?php echo $_REQUEST['tokenUser']; ?>" hidden="true">
              <i class="fas fa-envelope"></i>
              <input type="password" name="password" id="password" placeholder="Ingresa nueva contraseña" required>
            </div>
            <div class="button input-box">
              <input type="submit" name="olvidoContra" value="Ingresar">
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
<script src="../../js/script.js"></script>
<?php include("../hirh/footer.php")?>   
</body>
</html>

    <?php }else{ ?>
    <meta http-equiv="refresh" content="0;url=login.php"/>
<?php } ?>
