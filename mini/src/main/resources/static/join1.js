$(function(){
            var status={
                usersEmail : false,
                certEmail : false,
                certNumber : false,
                ok:function(){
                    return usersEamil && certNumber;
                }
            };

            $("[name=usersEmail]").blur(function(){
                var regex = /^[A-Za-z0-9]+@[A-Za-z0-9.]+$/;
                var isValid = regex.test($(this).val());
                $(this).removeClass("is-valid is-invalid").addClass(isValid ? "is-valid" : "is-invalid");
                status.usersEmail = isValid;
            });

            $(".cert").click(function(){
                var email = $("[name=usersEmail]").val();
                $.ajax({
                    url:"cert",
                    method:"post",
                    data:{email:email},
                    success:function(response){
                        
                        if(response == true && status.usersEmail){
                            $(".cert-wrapper").fadeIn();
                        }

                    },
                    beforeSend: function(){
                        if(status.usersEmail){
                            $(".cert").find("i").removeClass("fa-paper-plane").addClass("fa-spinner fa-spin");
                            $(".cert").prop("disabled",true);
                        }
                        
                    },
                    complete: function(){
                        $(".cert").find("i").removeClass("fa-spinner fa-spin").addClass("fa-paper-plane");
                        $(".cert").prop("disabled",false);
                    }
                })
            })

            $(".confirm-cert").click(function(){
                var email = $("[name=usersEmail]").val();
                var number = $("[name=certNumber]").val();
                $.ajax({
                    url:"cert",
                    method:"post",
                    data:{email:email, certNumber:certNumber},
                    success:function(response){

                        $("[name=certNumber]").removeClass("is-valid is-invalid").add(response ? "is-valid" : "is-invalid");
                        status.certNumber=response;
                    }
                })
                status.certEmail = true;
            })

        });