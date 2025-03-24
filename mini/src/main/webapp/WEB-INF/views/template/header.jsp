<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KH fasion</title>
       <!-- Google font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

    <!-- cdn fontawesome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- jQuery cdn-->
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>

    <link rel = "stylesheet" type ="text/css" href = "https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <!-- 스킨 -->
    <link rel = "stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/5.3.3/cosmo/bootstrap.min.css">
    <script src="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <script type="text/javascript">

    </script>
</head>
<body>
<body>
    <div class="container">
        <div style="min-height: 300px;" class="bg-success">
            <h2></h2>
        </div>
    </div>
<div class="container fluid">
    <div class="row">
        <div class="col-lg-2 col-md-3 col-sm-4 col-6">
            <nav class="navbar navbar-expand-lg bg-light text-dark fixed-top"
            data-bs-theme="light">
            <!-- <div class="container-fluid"> -->
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">New</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Best</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Women</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Men</a>
                    </li>
                    
                </ul>



                <ul class="navbar-nav">
                    <li><a href="#" class="nav-link">간편로그인</a></li>
                </ul>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#user-menu" aria-controls="user-menu" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!-- <div class="collapse navbar-collapse ms-auto" id="user-menu"> -->
                    <ul class="navbar-nav dropdown">
                        <li class="nav-item">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                <i class="fa-solid fa-user me-1"></i>
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item custom-dropdown" href="#">개인정보변경</a>
                                <a class="dropdown-item custom-dropdown" href="#">주문내역</a>
                                <a class="dropdown-item custom-dropdown" href="#">배송현황</a>
                                <a class="dropdown-item custom-dropdown" href="#">회원가입</a>
                                <a class="dropdown-item custom-dropdown btn btn-primary"  data-bs-toggle="modal" data-bs-target="#exampleModal" href="#">로그인</a>
                            </div>
                        </li>
                    </ul>
                    <ul class="navbar-nav">
                        <li><a href="#" class="nav-link"><i class="fa-solid fa-shopping-cart me-1"></i></a></li>
                    </ul>
                    <ul class="navbar-nav">
                        <li><a href="#" class="nav-link"><i class="fa-solid fa-heart me-1"></i></a></li>
                    </ul>
                <!-- </div> -->
            <!-- </div> -->
            </nav>
        </div>
	</div>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">로그인</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <form action="login" method="post">
               
                    <div class="mb-3">
                    <label for="email" class="form-label">이메일 주소</label>
                    <input type="email" class="form-control" id="email">
                    </div>
                  <div class="mb-3">
                    <label for="pw" class="form-label">패스워드 입력</label>
                    <input type="password" class="form-control" id="pw">
                  </div>
                  <div class="mb-3 form-check">
                    <input type="checkbox">
                    <label class="form-check-label" for="exampleCheck1">아이디 기억하기</label>
                  </div>

                  <button type="submit" class="btn btn-secondary position-absolute bottom-0 end-0 mb-3 me-3" data-bs-dismiss="modal" aria-label="Close">로그인하기</button>
                  <button type="submit" class="btn btn-secondary" data-bs-dismiss="modal" aria-label="Close">비밀번호 찾기</button>
                  
            </form>
        </div>
        <!-- <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
          <button type="button" class="btn btn-primary">저장</button>
        </div> -->
      </div>
    </div>
  </div>



    <div class="conatiner">
        <div class="row">
            <div class="col-2">
                <aside class="me-auto">
                    <h2>1</h2>
                    <ul class="list-group">
                        <li class="list-group-item">안녕</li>
                    </ul>
                    <ul class="list-group">
                        <li class="list-group-item">안녕</li>
                    </ul>
                    <ul class="list-group">
                        <li class="list-group-item">안녕</li>
                    </ul>
                    <ul class="list-group">
                        <li class="list-group-item">안녕</li>
                    </ul>
                    <ul class="list-group">
                        <li class="list-group-item">안녕</li>
                    </ul>
                </aside>

            </div>
            <div class="col-8">

                <div class="container">
                    <div style="min-height: 800px; background: aqua;"></div>
                </div>
            </div>
        </div>
        
    </div>


  


		
