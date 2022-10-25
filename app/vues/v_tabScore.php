<table>
    <thead>
        <tr>
            <td>position</td>
            <td>equipe</td>
            <td>points</td>
        </tr>
    </thead>
    <tbody class="tabScore">
        <script>
            // $.ajax({
            // type: "GET",
            // url: "ajax/ajax.php",
            // data: "action=tabScore",
            // dataType: "html",
            // success: function(response) {
            //     $('#tabScore').empty();
            //     $('#tabScore').append(response);
            // }

            // chaque seconde on rafraichit le tableau
            setInterval(function() {
                $.ajax({
                    type: "GET",
                    url: "ajax/ajax.php",
                    data: "action=tabScore",
                    dataType: "html",
                    success: function(response) {
                        $('.tabScore').empty();
                        $('.tabScore').append(response);
                    }
                });
            }, 1000);
        </script>
    </tbody>
</table>