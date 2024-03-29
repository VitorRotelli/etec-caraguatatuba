<?php
define('HOST', 'localhost');
define('USUARIO', 'root');
define('SENHA', '');
define('DB', 'etec');

$conexao = mysqli_connect(HOST, USUARIO, SENHA, DB)
 or die ('Não foi possível conectar');

 mysqli_set_charset($conexao,"utf8");

 