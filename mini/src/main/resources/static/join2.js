
        $(function(){
            var status={
                usersPw : false,
                usersPwRe : false,
                ok:function(){
                    return usersPw && usersPwRe;
                }
            };
            $("[name=usersPw]").blur(function(){
                var regex =  /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$])[A-Za-z0-9!@#$]{8,16}$/;
                isValid = regex.test($(this).val());
                $(this).removeClass("is-valid is-invalid").addClass(isValid ? "is-valid" : "is-invalid");
                status.usersPw = isValid;
            });

            $("[name=usersPwRe]").blur(function(){
                var usersPw = $("[name=usersPw]").val();
                var target = $(this).val();
                var isValid;
                if(usersPw == target){
                    isValid = true;
                }
                else{
                    isValid=false;
                }
                $(this).removeClass("is-valid is-invalid").addClass(isValid ? "is-valid":"is-invalid");
                status.usersPwRe = isValid;
            })

        });
 