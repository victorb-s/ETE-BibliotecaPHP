<?php
include 'functions.php';

$livros = listarLivros($conexao);

if ($livros->num_rows > 0) {
    echo "<table>";
    echo "<thead>
            <tr>
                <th class='fundoCinza'><i class='fa-solid fa-list-ol'></i> ID</th>
                <th><i class='fa-solid fa-book'></i> Título</th>
                <th class='fundoCinza'><i class='fa-solid fa-calendar-days'></i> Lançamento</th>
                <th><i class='fa-solid fa-feather'></i> Autor</th>
                <th class='fundoCinza'><i class='fa-solid fa-inbox'></i> Status</th>
            </tr>
          </thead>";
    echo '<tbody>';
    
    while ($row = $livros->fetch_assoc()) {
        echo "<tr>";
        echo "<td class='fundoCinza'>" . $row['id'] . "</td>";
        echo "<td>" . $row['titulo'] . "</td>";
        echo "<td class='fundoCinza'>" . $row['ano'] . "</td>";
        echo "<td>" . $row['autor'] . "</td>";
        echo "<td class='fundoCinza'>" . $row['status'] . "</td>";
        echo "</tr>";
    }
    
    echo "</tbody>";
    echo "</table>";
} else {
    echo "<h1>Nenhum livro foi encontrado.</h1>";
}

$conexao->close();
?>