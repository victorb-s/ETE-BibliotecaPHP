<?php
include 'functions.php';

if (isset($_GET['reserva_livro_id'])) {
    $reserva_livro_id = $_GET['reserva_livro_id'];

    $reserva = situacaoReserva($conexao, $reserva_livro_id);

    if ($reserva) {
        echo "<h3>Detalhes da Reserva:</h3>";
        echo "<strong>ID do Livro:</strong> " . $reserva['livro_id'] . "<br>";
        echo "<strong>Status da Reserva:</strong> " . $reserva['status'] . "<br>";
        echo "<strong>Data da Reserva:</strong>" . $reserva['data_reserva'] . "<br>";
    } else {
        echo "Reserva não encontrada para este livro.";
    }

    $conexao->close();
} else {
    echo "ID do livro para reserva não foi fornecido.";
}
?>
