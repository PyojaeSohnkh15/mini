 <div class="container-fluid">
        <div class="row mt-4">
            <div class="col-4 offset-4">
                <h1 class="text-center">이메일로 가입하기</h1>
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-4 offset-4">
                <form action="" method="get">
                    <label class="me-1 form-label" for="email">이메일 입력</label>
                   <div class="mb-3 input-group">
                    <input type="email" imputmode="email" class="form-control" id="email" name="usersEmail">
                    <button type="button" class="btn btn-secondary cert">인증번호<i class="fa-solid fa-paper-plane"></i></button>
                   </div>


                   <div class="cert-wrapper" style="display: none;">
                       <label class="me-1 form-label" for="certNumber">인증번호 입력</label>
                       <div class="mb-3  input-group">
                           <input type="text" inputmode="numeric" id="certNumber" class="form-control">
                           <button type="button" class="btn btn-secondary confirm-cert">
                               <span>인증하기</span>
                            </button>
                            
                        </div>
                            <button type="submit">다음</button>
                    </div>

                </form>
            </div>
        </div>

    </div>