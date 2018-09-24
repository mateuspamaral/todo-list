//= require rails-ujs
//= require_tree
//= require jquery


// Função para expandir/encolher os grupos de atividades
$(function() {

  var $navLink = $('#accordion').find('li');

  $navLink.on('click', function() {
    var panelToShow = $(this).data('panel-id');
    var $activeLink = $('#accordion').find('.active');

    // show new panel
    // .stop is used to prevent the animation from repeating
    // if you keep clicking the same link
    $('.' + panelToShow).stop().slideDown();
    $('.' + panelToShow).addClass('active');


    // hide the previous panel
    $activeLink.stop().slideUp()
    .removeClass('active');

  });

});
