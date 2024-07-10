<?php
include 'functions.php';

if (isset($_GET['livro_id'])) {
    $livro_id = $_GET['livro_id'];

    $livro = situacaoLivro($conexao, $livro_id);

    if ($livro) {
        echo "<h3>Detalhes do Livro:</h3>";
        echo "<b>ID:</b> " . $livro['id'] . "<br>";
        echo "<b>Título:</b> " . $livro['titulo'] . "<br>";
        echo "<b>Lançamento:</b> " . $livro['ano'] . "<br>";
        echo "<b>Autor:</b> " . $livro['autor'] . "<br>";
        echo "<b>Status:</b> " . $livro['status'] . "<br>";
    } else {
        echo "Livro não encontrado.";
    }

    $conexao->close();
} else {
    echo "ID do livro não foi fornecido.";
}
?>
