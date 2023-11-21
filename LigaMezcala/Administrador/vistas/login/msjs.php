
<?php
if(isset($_REQUEST['errorEmail'])){ ?>
         <div class="alert alert-danger">
               <strong> Ops.! </strong>
               El Correo no Existe, por favor Verifique.
        </div>
<?php }

if(isset($_REQUEST['emaiIncorrecto'])){ ?>
    <div class="alert show showAlert" style="color:#fff;">
          <strong> Ops...! </strong>
          Credenciales Incorrectas, por favor verifique.
   </div>
<?php } 

if(isset($_REQUEST['email'])){ ?>
    <div class="alert alert-success ">
    ¡Atención! Hemos enviado un mensaje a su correo electrónico con un enlace especial para que pueda cambiar su contraseña de forma segura. Por favor, revise su bandeja de entrada y siga las instrucciones."
   </div>
   <META HTTP-EQUIV="REFRESH" CONTENT="8;URL=login.php">
<?php } ?>