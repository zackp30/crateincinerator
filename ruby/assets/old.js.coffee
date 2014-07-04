$j = jQuery

$j ->
    text = $ '.pls'
    a = 0
    menu = $ '.menu'
    b = 0
    buttons = $j '.menuitems'
    buttons.hide("fast")
    menu_thingy = $ '.click_for_menu'
    menu_boxes = $ '.menubox2, .menubox3, .menubox4'

    menu.click ->
        if b == 0
            #menu.animate(height: 50, 600)
            buttons.show("slow")
            #for c in ['red', 'green', 'yellow', 'blue']
            #setTimeout $('.welcome').css(color: "#{c}"), 1000
            menu.animate({height: 50, width: 600, backgroundColor: "#{jQuery.Color('orange')}"}, 1600)
            buttons.show('slow')
            menu_thingy.hide('fast')
            menu_boxes.show('fast')
            menu_boxes.animate({height: '80%', width: '80%'}, 1600)
            b = 1
        else
            #$('#menu.menu').append('<div class=\'click_for_menu\'>Menu</div>')

            menu.animate({height: 20, width: 50, backgroundColor: "#{jQuery.Color('lightblue')}"}, 1600)
            buttons.hide("slow")
            menu_thingy.show('slow')
            menu_boxes.hide('fast')
            b = 0
