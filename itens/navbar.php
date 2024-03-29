<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="components/css/style.css">

<nav class="navbar navbar-expand-lg bg-body-tertiary" id="navbar-customizada">
    <div class="container-fluid">
        <img style="mix-blend-mode: multiply; width: 150px; cursor: pointer;" src="components/img/logos/logo.png" class="navbar-brand" onclick="window.location.href='index.php'">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-etec" aria-controls="navbar-etec" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbar-etec">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="index.php">Início</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Cursos
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="cursos-tecnicos.php">Cursos técnicos</a></li>
                        <li><a class="dropdown-item" href="cursos-medio.php">Ensino Médio</a></li>
                        <li><a class="dropdown-item" href="cursos-ubatuba.php">Unidade de Ubatuba</a></li>
                    </li>
                </ul>
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="professores.php">Professores</a>
                        </li>
                    </ul>
        </div>
    </div>
</nav>