<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <link rel="stylesheet" href="components/css/style.css">
  <link rel="icon" type="image/x-icon" href="components/img/favicon.ico">
  <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@100;400;500;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs5/dt-1.11.5/datatables.min.css" />
  <title>Menu</title>
</head>

<body>

  <?php
  include('itens/topo-gov.php');
  include('itens/navbar.php');
  ?>

  <header class="header-cursos">
    <h1>Professores</h1>
  </header>
  <?php
  include('backend/conexao.php');

  $query_professores = "SELECT * FROM professores ORDER BY nome ASC";
  $result_professores = $conexao->query($query_professores);

  ?>

  <table id="tabela-dados" class="table">
    <thead>
      <tr>
        <th>Nome</th>
        <th>Títulos</th>
      </tr>
    </thead>
    <tbody>
      <?php
      while ($row_professores = $result_professores->fetch_assoc()) {
        $nome = $row_professores['nome'];
        $unidade = $row_professores['unidade'];
        $titulos = $row_professores['titulos'];

        echo "<tr>";
        echo "<td>$nome</td>";
        echo "<td>$titulos</td>";
        echo "</tr>";
      }
      ?>
    </tbody>
  </table>

  <?php
  include('itens/rodape-gov.php');
  ?>


  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script type="text/javascript" src="https://cdn.datatables.net/v/bs5/dt-1.11.5/datatables.min.js"></script>
  <script>
    document.addEventListener("DOMContentLoaded", function() {
      var parentElement = document.querySelector('.dataTables_paginate.paging_simple_numbers').parentElement;
      if (parentElement && parentElement.classList.contains('col-sm-12')) {
        parentElement.classList.remove('col-sm-12');
      }
    });


    $('#tabela-dados').DataTable({
    "paging": true,
    "lengthMenu": [5, 10, 25, 50],
    "pageLength": 10,
    "language": {
      "url": "//cdn.datatables.net/plug-ins/2.0.0/i18n/pt-BR.json"
    }
    });
  </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>