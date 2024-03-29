<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="components/css/style.css">
    <link rel="icon" type="image/x-icon" href="components/img/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@100;400;500;700&display=swap" rel="stylesheet">

    <title>Noticia</title>
</head>
<?php
include('itens/topo-gov.php');
include('itens/navbar.php');
?>

<header class="header-noticia">

    <?php
    include("backend/conexao.php");
    $id_noticia = $_GET['id_noticia'];
    $query_noticia = "SELECT * FROM noticias WHERE id_noticia='$id_noticia'";
    $result_notica = $conexao->query($query_noticia);

    if ($row_noticia = $result_notica->fetch_assoc()) {
        $id_noticia = $row_noticia['id_noticia'];
        $titulo_noticia = $row_noticia['titulo_noticia'];
        $texto_noticia = $row_noticia['texto_noticia'];
        $autor = $row_noticia['autor'];
        $tipo_noticia = $row_noticia['tipo_noticia'];
        $data_postagem = $row_noticia['data_postagem'];
        $foto_noticia = $row_noticia['foto_noticia'];

        echo "
        <h1>$titulo_noticia</h1>
        <p class='autor-noticia'>Escrito por $autor</p>     
        <div class='corpo-noticia'>
        <img class'col-6' src='components/img/noticias/$foto_noticia'>
        <p class'col-6'>$texto_noticia</p>
        </div>
        ";
    }
    ?>


</header>





<?php
include('itens/rodape-gov.php');
?>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<body>
</body>

</html>