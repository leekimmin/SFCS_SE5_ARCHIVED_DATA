var Registration = function () {

    return {
        
        //Registration Form
        initRegistration: function () {
	        // Validation       
	        $("#sky-form4").validate({                   
	            // Rules for form validation
	            rules:
	            {
	                username:
	                {
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
	                },
	                passwordConfirm:
	                {
	                    required: true,
	                    minlength: 3,
	                    maxlength: 20,
	                    equalTo: '#password'
	                },
	                firstname:
	                {
	                    required: true
	                },
	                lastname:
	                {
	                    required: true
	                },
	                gender:
	                {
	                    required: true
	                },
	                birthday:
	                {
	                    required: true
	                },
	                terms:
	                {
	                    required: true
	                }
	            },
	            
	            // Messages for form validation
	            messages:
	            {
	                login:
	                {
	                    required: 'Please enter your login'
	                },
	                email:
	                {
	                    required: 'Vui lòng nhập email!',
	                    email: 'Vui lòng nhập 1 địa chỉ email hợp lệ!'
	                },
	                username:
	                {
	                    required: 'Vui lòng nhập tên đăng nhập!',
	                },
	                password:
	                {
	                    required: 'Vui lòng nhập mật khẩu!'
	                },
	                passwordConfirm:
	                {
	                    required: 'Vui lòng nhập lại mật khẩu!',
	                    equalTo: 'Mật khẩu không khớp, xin vui lòng nhập lại!'
	                },
	                firstname:
	                {
	                    required: 'Vui lòng nhập họ!'
	                },
	                
	                lastname:
	                {
	                    required: 'Vui lòng nhập tên!'
	                },
	                gender:
	                {
	                    required: 'Vui lòng chọn giới tính!'
	                },
	                birthday:{
	                    required: 'Vui lòng nhập ngày tháng năm sinh!'
	                },
	                terms:
	                {
	                    required: 'You must agree with Terms and Conditions'
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