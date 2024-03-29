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
        <h1>Ensino Médio</h1>

        <p>Nesta modalidade de ensino, baseada na Lei nº 13.415/17, o aluno cursará o Ensino Médio estruturado em conjunto com a formação de Técnico em Desenvolvimento de Sistemas, numa jornada de até 30 aulas semanais (até 6 aulas diárias), em cada uma das 3 séries. Ao final do curso, o aluno terá concluído o Ensino Médio e obterá, também, o diploma de Técnico em Desenvolvimento de Sistemas. Esta formação na modalidade da Articulação Média Superior - AMS, o aluno poderá completar o curso superior tecnológico em Análise e Desenvolvimento de Sistemas na Fatec vinculada à turma escolhida pelo candidato para ingresso na 1ª série desta modalidade. O curso técnico em Desenvolvimento de Sistemas possui validade nacional, de acordo com o perfil profissional a seguir: O TÉCNICO EM DESENVOLVIMENTO DE SISTEMAS é o profissional que analisa e projeta sistemas. Constrói, documenta, realiza testes e mantém sistemas de informação. Utiliza ambientes de desenvolvimento e linguagens de programação específica. Modela, implementa e mantém bancos de dados.

            <br><br>

            <strong>Eixo Tecnológico:</strong> Informação e Comunicação<br><br>

            <strong>Mercado de trabalho</strong> Empresas e departamentos de desenvolvimento de sistemas em organizações governamentais e não governamentais, podendo também atuar como profissional autônomo.<br><br>

            <strong>Ingresso:</strong> o Vestibulinho para ingresso nessa modalidade é realizado anualmente.
        </p>
    </header>

    <div class='pai-cursos'>
        <?php
        include("backend/conexao.php");

        $query_cursos = "SELECT * FROM cursos_medio WHERE ativo = '1'";
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