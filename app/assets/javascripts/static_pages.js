$(document).ready( function () {


    $( ".container-box" ).droppable(
        {
            tolerance: "pointer",
            over: function()
            {
                var $next = $(this).next();
                $(this).css("opacity",".4");
                $next.css("opacity",".4");
            },
            out: function()
            {
                var $next = $(this).next();
                $(this).css("opacity","0");
                $next.css("opacity","0");
            },
            drop: function(event, ui)  {

                $(ui.draggable).addClass("inside");
                $(ui.draggable).removeClass("outside");

                $( ui.draggable ).position({
                    of: $(this),
                    my: "left top",
                    at: "left top"
                });
            }
        }
    );

    $( "#demo" ).droppable(
        {
            tolerance: "pointer",
            drop: function(event, ui)  {
                $(ui.draggable).removeClass("inside");
                $(ui.draggable).addClass("outside");
            },
            accept: function(el) {
                return el.hasClass('inside');
            }
        }
    );

    $("#box").draggable({
        revert: 'invalid',
        cursorAt: {top:0, left:0}
    });
});
