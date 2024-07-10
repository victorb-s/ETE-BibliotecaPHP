<?php
include 'cfg.php';

function listarLivros($conexao) {
    $sql = "SELECT * FROM livros";
    $resultado = $conexao->query($sql);
    return $resultado;  
}

function situacaoLivro($conexao, $livro_id) {
    $stmt = $conexao->prepare("
        SELECT * FROM livros WHERE id = ?
    ");

    if ($stmt === false) {
        die('Erro na preparação da declaração: ' . $conexao->error);
    }

    $stmt->bind_param("i", $livro_id);
    $stmt->execute();
    $resultado = $stmt->get_result();
    $stmt->close();
    return $resultado->fetch_assoc();
}

function situacaoReserva($conexao, $livro_id) {
    $stmt = $conexao->prepare("
        SELECT reservas.*, livros.titulo 
        FROM reservas 
        JOIN livros ON reservas.livro_id = livros.id 
        WHERE reservas.livro_id = ? AND reservas.status = 'reservado'
    ");
    if ($stmt === false) {
        die('Erro na preparação da declaração: ' . $conexao->error);
    }
    $stmt->bind_param("i", $livro_id);
    $stmt->execute();
    $resultado = $stmt->get_result();
    $stmt->close();
    return $resultado->fetch_assoc();
}

function criarReserva($conexao, $livro_id) {

    $livro = situacaoLivro($conexao, $livro_id);
    if ($livro && $livro['status'] == 'disponivel') {

        $stmt = $conexao->prepare("
            INSERT INTO reservas (livro_id, data_reserva, status) 
            VALUES (?, CURDATE(), 'reservado')
        ");
        if ($stmt === false) {
            die('Erro na preparação da declaração: ' . $conexao->error);
        }
        $stmt->bind_param("i", $livro_id);
        $stmt->execute();
        $stmt->close();

        $stmt = $conexao->prepare("
            UPDATE livros SET status = 'reservado' WHERE id = ?
        ");
        if ($stmt === false) {
            die('Erro na preparação da declaração: ' . $conexao->error);
        }
        $stmt->bind_param("i", $livro_id);
        $stmt->execute();
        $stmt->close();

        return true;
    } else {
        return false;
    }
}
?>
