/**
 * Created by owen on 6/19/14.
 */
(function($){

    $.fn.slider = function(options){

        var settings = {
            'thumbnail_directory': '/images/thumbnail/',
            'large_directory': '/images/large/'
        };

        var changeImage = function(image){
            //console.log(image);
        };

        if(options){
            settings = $.extend({
                'thumbnail_directory': options.thumbnail_directory,
                'large_directory': options.large_directory
            },options);
        }

        return this.each(function(){
            var galleryContainer = $(this).find('#inner-gallery');
            var thumbContainer = $(this).find('#thumb-gallery');
            var thumbDOMArray = thumbContainer.find('li');

            var videoContainer = '<video id="video-container" src="" style="display: none;"  />';
            var imageContainer = '<img src="" alt="">';

            galleryContainer.append(imageContainer);

            if(thumbDOMArray.length){
                for(var itemIndex=0; itemIndex<thumbDOMArray.length; itemIndex++){
                    var imageFile = settings.thumbnail_directory + $(thumbDOMArray[itemIndex]).attr('data-file');
                    var imageName = $(thumbDOMArray[itemIndex]).attr('data-name');
                    var thumbImage = new Image();
                    $(thumbDOMArray[itemIndex]).append(thumbImage);
                    thumbImage.alt = imageName;
                    thumbImage.src = imageFile;

                    if(itemIndex == 0){

                        var largeImageFile = settings.large_directory + $(thumbDOMArray[itemIndex]).attr('data-file');
                        console.log(largeImageFile)
                        $(videoContainer).attr('src', largeImageFile);
                    }


                    //thumbImage.on('click', changeImage);
                }
            }else{

            }




        });

    };

}(jQuery));