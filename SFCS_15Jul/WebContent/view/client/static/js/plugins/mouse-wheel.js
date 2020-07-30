var MouseWheel = function () {

    return {

        initMouseWheel: function () {
            jQuery('.slider-snap').noUiSlider({
                start: [20, 70],
                snap: true,
                connect: true,
                range: {
                    'min': 0,
                    '20%': 20,
                    '40%': 50,
					'60%': 70,
                    '80%': 100,
                    'max': 200
                }
            });
            jQuery('.slider-snap').Link('lower').to(jQuery('.slider-snap-value-lower'));
            jQuery('.slider-snap').Link('upper').to(jQuery('.slider-snap-value-upper'));
        }

    };

}();        