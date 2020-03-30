$( () => {

    // Menu opener hamburger

    $('.hamburger').click( () => {
        $('.nav__list').toggleClass('nav-opened');
        $('.nav__list').toggleClass('nav-hidden');
        $('.hamburger').toggleClass('hamburger-abs');
        $('.hamburger').toggleClass('hamburger-opened');
    });

    // Modal

    $('.order').click( function (e) {
        e.preventDefault();
        $('#exampleModal').arcticmodal({
            overlay: {
                css: {
                    backgroundColor: 'rgba(50, 40, 29, .57)',
                    opacity: 1
                }
            }
        });
    });
      
    // Map

    if (document.getElementById('map')) {
        ymaps.ready(init); 

        function init(){ 
            let myMap = new ymaps.Map("map", {
                center: [55.7717032,37.5731724],
                zoom: 15
            });

            let myPlacemark = new ymaps.Placemark([55.7717032,37.5731724], {
                hintContent: 'Наш офис',
            },
            {
                preset: 'islands#redDotIcon',
                iconColor: '#382d21'
            });
            
            myMap.geoObjects.add(myPlacemark);
        }
    };

});