<?php
include 'functions.php';

if (isset($_POST['fazer_reserva_livro_id'])) {
    $livro_id = $_POST['fazer_reserva_livro_id'];

    $livro = situacaoLivro($conexao, $livro_id);

    if ($livro && $livro['status'] == 'disponivel') {

        if (criarReserva($conexao, $livro_id)) {
            echo "<h3>Reserva criada com sucesso.</h3>";
        } else {
            echo "Erro ao criar reserva.";
        }
    } else {
        echo "O livro não está disponível para reserva.";
    }
}
?>
