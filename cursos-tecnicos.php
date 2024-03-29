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

    <header class="header-cursos">
        <h1>Cursos Técnicos</h1>

        <p><strong>Público-alvo:</strong> candidatos que concluíram ou estão cursando o Ensino Médio a partir do segundo ano.<br>

            <strong>Sobre o curso:</strong> formação técnica de nível médio, com duração entre de dois e quatro semestres, capacita o aluno com conhecimentos práticos e teóricos para atuar em diversas áreas do setor produtivo.<br>

            Essa modalidade oferece duas opções de estudo: a primeira, totalmente presencial, pode ser cursada em uma Etec ou classe descentralizada – unidade que funciona com um ou mais cursos, sob a administração de uma Etec, por meio de parceria com as prefeituras ou com a Secretaria Estadual da Educação. Já na segunda opção, 20% da carga horária do curso é realizada online.<br>

            <strong>Formação:</strong> ao concluir o curso o estudante recebe o diploma de técnico, que lhe dará o direito de exercer a habilitação profissional.<br>

            <strong>Ingresso:</strong> o Vestibulinho para ingresso nessa modalidade é realizado semestralmente.
        </p>
    </header>

    <div class='pai-cursos'>
        <?php
        include("backend/conexao.php");

        $query_cursos = "SELECT * FROM cursos_tecnicos WHERE ativo = '1'";
        $result_cursos = $conexao->query($query_cursos);

        while ($row_cursos = $result_cursos->fetch_assoc()) {
            $id = $row_cursos['id_curso'];
            $nome = $row_cursos['nome_curso'];
            $imagem = $row_cursos['imagem_curso'];
            $link = $row_cursos['link'];

            echo "
            
                <div class='item-curso'>
                    <div class='imagem-curso'>
                        <img src='components/img/cursos/$imagem'>
                    </div>
                    <div class='nome-curso'>
                    <p onclick=\"window.location.href='$link';\">$nome</p>
                    </div>
                </div>
            ";
        }
        ?>
    </div>

    </div>

    <?php
    include('itens/rodape-gov.php');
    ?>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>