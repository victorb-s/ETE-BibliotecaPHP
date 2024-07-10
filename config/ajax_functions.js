$(document).ready(function() {
    $('#consultaLivroForm').on('submit', function(e) {
        e.preventDefault();
        var livro_id = $('#livro_id').val();
        
        $.ajax({
            url: 'config/consulta_livro.php',
            type: 'GET',
            data: { livro_id: livro_id },
            success: function(response) {
                $('#consultaLivroResultado').html(response);
            },
            error: function() {
                $('#consultaLivroResultado').html('Erro ao consultar o livro.');
            }
        });
    });

    $('#consultaReservaForm').on('submit', function(e) {
        e.preventDefault();
        var reserva_livro_id = $('#reserva_livro_id').val();
        
        $.ajax({
            url: 'config/consulta_reserva.php',
            type: 'GET',
            data: { reserva_livro_id: reserva_livro_id },
            success: function(response) {
                $('#consultaReservaResultado').html(response);
            },
            error: function() {
                $('#consultaReservaResultado').html('Erro ao consultar a reserva.');
            }
        });
    });

    $('#reservaForm').on('submit', function(e) {
        e.preventDefault();
        var fazer_reserva_livro_id = $('#fazer_reserva_livro_id').val();
        
        $.ajax({
            url: 'config/reservar_livro.php',
            type: 'POST',
            data: { fazer_reserva_livro_id: fazer_reserva_livro_id },
            success: function(response) {
                $('#reservaResultado').html(response);
                atualizarListaLivros();
            },
            error: function() {
                $('#reservaResultado').html('Erro ao criar reserva.');
            }
        });
    });

    function atualizarListaLivros() {
        $.ajax({
            url: 'config/listar_livros.php',
            type: 'GET',
            success: function(response) {
                $('#listaLivros').html(response);
            },
            error: function() {
                $('#listaLivros').html('Erro ao atualizar a lista de livros.');
            }
        });
    }

    $(document).ready(function() {
        atualizarListaLivros();
    });
});
