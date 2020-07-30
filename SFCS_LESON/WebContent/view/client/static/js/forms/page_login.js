var Login = function () {

    return {
        
        //Masking
        initLogin: function () {
	        // Validation for login form
	        $("#sky-form1").validate({
	            // Rules for form validation
	            rules:
	            {
					username:{
						required: true
					},
	                email:
	                {
	                    required: true,
	                    email: true
	                },
	                password:
	                {
	                    required: true,
	                    minlength: 3,
	                    maxlength: 20
	                }
	            },
	                                
	            // Messages for form validation
	            messages:
	            {
					username:{
						required: 'Vui lòng nhập tên đăng nhập!'
					},
	                email:
	                {
	                    required: 'Vui lòng nhập địa chỉ email!',
	                    email: 'Vui lòng nhập một địa chỉ email hợp lệ!'
	                },
	                password:
	                {
	                    required: 'Vui lòng nhập mật khẩu!'
	                }
	            },                  
	            
	            // Do not change code below
	            errorPlacement: function(error, element)
	            {
	                error.insertAfter(element.parent());
	            }
	        });
        }

    };

}();