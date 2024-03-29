<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <link rel="stylesheet" href="components/css/style.css">
  <link rel="icon" type="image/x-icon" href="components/img/favicon.ico">
  <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@100;400;500;700&display=swap" rel="stylesheet">

  <title>Menu</title>
</head>

<body>

  <?php
  include('itens/topo-gov.php');
  include('itens/navbar.php');
  ?>

  <!-- <header>
    <h1>Bem vindo!</h1>
  </header> -->


  <?php
  include_once("backend/conexao.php");

  $query_noticias = "SELECT * FROM noticias";
  $result_noticias = $conexao->query($query_noticias);

  echo "
<div id='hero-carousel' class='carousel slide' data-bs-ride='carousel'>
  <div class='carousel-inner'>
";

  $primeiro = true;

  while ($row_noticias = $result_noticias->fetch_assoc()) {
    $id_noticia = $row_noticias['id_noticia'];
    $titulo_noticia = $row_noticias['titulo_noticia'];
    $tipo_noticia = $row_noticias['tipo_noticia'];
    $data_postagem = $row_noticias['data_postagem'];
    $foto_noticia = $row_noticias['foto_noticia'];

    $active_class = $primeiro ? 'active' : '';
    $primeiro = false;

    echo "
    <div class='carrossel carousel-item $active_class c-item c-item-1'>
      <img src='components/img/noticias/$foto_noticia' class='d-block w-100 c-img' alt='img1'>
      <div class='carousel-caption texto-carrossel'>
        <span>
          <h5>$tipo_noticia</h5>
          <p>$titulo_noticia</p>
          <a href='ver-noticia.php?id_noticia=$id_noticia'>Saiba +</a>
        </span>
      </div>
    </div>
    ";
  }

  echo "
    </div>
    <button class='carousel-control-prev' type='button' data-bs-target='#hero-carousel' data-bs-slide='prev'>
      <span class='carousel-control-prev-icon' aria-hidden='true'></span>
      <span class='visually-hidden'>Previous</span>
    </button>
    <button class='carousel-control-next' type='button' data-bs-target='#hero-carousel' data-bs-slide='next'>
      <span class='carousel-control-next-icon' aria-hidden='true'></span>
      <span class='visually-hidden'>Next</span>
    </button>
  </div>
  ";
  ?>

  </div>


  <?php
  include('itens/rodape-gov.php');
  ?>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>