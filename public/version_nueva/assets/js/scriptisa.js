$('#imgDetail li img').hover(function(){
        $('#bigImg').show();        
        $('#bigImg').attr('src',$(this).attr('src'));
});