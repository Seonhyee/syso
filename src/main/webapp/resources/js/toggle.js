$(function(){

btn = $('#btn');

layer = $('#layer');
btn2 = $('#btn2');

layer2 = $('#layer2');

btn.click(function(){

 layer.toggle(

   function(){layer.addClass('show')},

   function(){layer.addClass('hide')}

 );

});

    btn2.click(function(){

 layer2.toggle(

   function(){layer2.addClass('show')},

   function(){layer2.addClass('hide')}

 );

});


    });
