<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faltas</title>
    <link rel="shortcut icon" href="assets/images/brasil.png" type="image/x-icon">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="bootstrap/js/bootstrap.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
    
</head>

<body>
    <main class="main">
        <div class="form-login">
            <div class="logo">
                <img class="m-3 w-55" src="assets/images/tiro.png" alt="logo-exercito">
                <h2>Tiro de Guerra 10-005</h2>
                <span>Juazeiro do Norte - Ceará</span>
            </div>
            <form action="controller/login.php" method="post">
                <div class="m-3">
                    <input type="text" class="form-control" id="cpf" name="cpf" placeholder="CPF">
                </div>
                <div class="m-3">
                    <input type="password" class="form-control" id="pass" name="pass" placeholder="Senha">
                </div>
                <div class="m-3">
                    <input type="submit" class="form-control btn btn-success" value="Acessar">
                </div>
                <div class="m-3 d-flex align-items-center justify-content-center">
                    <a href="pages/esqueceu.php">Esqueceu sua senha?</a>
                </div>
            </form>
        </div>
    </main>

    <script type="text/javascript">
        $("#cpf").mask("000.000.000-00");
    </script>
</body>

</html>