/**
 * Created by owen on 6/19/14.
 */
(function($){

    $.fn.slider = function(options){

        var settings = {
            'thumbs':  true, // Show thumbnail navigation
            'auto': true, // Auto rotate
            'autoSpeed': 4000,
            'fadeSpeed': 1000,
            'assetTypesAllowed': ['image','video']
        };

        return this.each(function(){


            var Slider = function(){
                this.init =function(){
                    if(options){
                        $.extend(settings, options);
                    }

                    var $container = $('#product-gallery');
                    var $galleryContainer = $('#inner-gallery');
                    var $thumbContainer = $('#thumb-gallery');
                    var $galleryItemsContainer = $('#gallery-items');
                    var itemsJSON = {};

                    this.itemsToLowerCase(settings.assetTypesAllowed);

                    var galleryWidth = Math.floor($container.width());
                    var galleryHeight = Math.floor((galleryWidth/4)*3);

                    $container.height(galleryHeight);
                    $galleryContainer.height(galleryHeight-30);


                    try{
                        itemsJSON = JSON.parse(($container).attr('data-items'));
                    }catch (err){
                        console.error('Error trying to convert de items data to objects. Please try again later');
                    }
                    if(!itemsJSON.length){
                        $galleryItemsContainer.append('<li class="default-image"></li>');
                    }else{
                        for(var itemsIndex in itemsJSON){

                            var item = itemsJSON[itemsIndex];
                            var itemGallery =  $('<li class="item-gallery-' + item.id + '"></li>');
                            var itemThumb = $('<li class="item-thumb-' + item.id + '"></li>');

                            $galleryItemsContainer.append(itemGallery);
                            $thumbContainer.append(itemThumb);

                            if(itemsIndex > 0){
                                var prevItemJSON = itemsJSON[itemsIndex-1];
                                var prevItem = $('.item-gallery-'+prevItemJSON.id);
                                var prevItemWidth = prevItem.width();
                                var prevItemLeft = parseInt(prevItem.css('left').replace(/[^-\d\.]/g, ''));

                                var currentItemLeft = prevItemLeft + prevItemWidth;
                                itemGallery.css('left',currentItemLeft);

                            }else{
                                itemGallery.css('left',0);
                            }

                            if(typeof item.asset_type != 'undefined' && item.asset_type != ''){
                                switch (item.asset_type){
                                    case 'Imagen':
                                        var image = new Image();
                                        image.onload = function(){
                                            if(this.height > this.width){
                                                $(this).css('height','100%');
                                            }else{
                                                $(this).css('width','100%');
                                            }
                                        };
                                        image.src = item.url;
                                        image.alt = item.name;

                                        $('.item-gallery-' + item.id).append(image);

                                        break;
                                    case 'Video':
                                        break;
                                }
                            }

                            if(itemsIndex != itemsJSON.length-1){

                            }else{

                            }
                        }
                    }
                }

                this.itemsToLowerCase = function(array){
                    for(var index=0; index<array.length; index++){
                        array[index] = array[index].toLowerCase();
                    }
                }


            };


            var slider = new Slider();
            slider.init();

            /* Container and wrapper */

            /*var galleryContainer = $(this).find('#inner-gallery');
            var thumbContainer = $(this).find('#thumb-gallery');
            var thumbDOMArray = thumbContainer.find('li');

            var videoContainer = '<video id="video-container" src="" style="display: none;"  />';
            var imageContainer = '<img id="image-container" src="" alt="">';

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
                        $('#image-container').attr('src',largeImageFile);
                    }

                    $(thumbDOMArray[itemIndex]).on('mouseover', function(event){

                        var largeImageFile = settings.large_directory + $(event.currentTarget).attr('data-file');
                        $('#image-container').attr('src',largeImageFile);
                    });
                }
            }else{

            }*/




        });

    };

}(jQuery));