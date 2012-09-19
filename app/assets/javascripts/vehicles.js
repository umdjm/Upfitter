$(document).ready( function () {
    $(".Accessory").draggable({

        stop: function(event, ui) {
            var id = event.target.id;
            console.log(event);
            var position =  "left:" + event.target.x + ", top: " + event.target.y;
            $tr = $("<tr><td>" + id + "</td><td>"+ position + "</td>");

            $("#Placements").append($tr);
        }
    });
});
