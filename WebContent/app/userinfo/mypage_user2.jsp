<%@page import ="com.travel.app.user.dao.UserInfoDAO" %>
<%@page import = "com.travel.app.user.dao.UserInfoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
HttpSession ss = request.getSession();
String userid = (String) ss.getAttribute("id");
UserInfoDAO dao = new UserInfoDAO();
UserInfoDTO dto = dao.getByid(userid);
pageContext.setAttribute("dto", dto);
%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>mypage_user</title>

    <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/css/templatemo.css">
    <link rel="stylesheet" href="/assets/css/custom.css">
    
     <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="/assets/css/signupstyle.css">
    <link rel="apple-touch-icon" href="/assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="/assets/img/favicon.ico">
    
    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="/assets/css/fontawesome.min.css">

        <style>
            body {
                min-height: 100vh;
            }
            .content-wrap {
              background-color: #69bb7e;
            
            }

            .input-form {
                max-width: 780px;
                margin-top: 80px;
                padding: 32px;
                background: #fff;
                -webkit-border-radius: 10px;
                -moz-border-radius: 10px;
                border-radius: 10px;
                -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
                -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
                box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
            }
        </style>
        <script src = "/assets/js/mypagemodify.js"></script>
        <script>
        //비밀번호 확인
        function validatePwdCheck(el) {
            const _el = el ?? document.getElementById('user_pwcheck');
            if (!_el) {
                return false;
            }
            if (document.getElementById("user_pw").value !== document.getElementById("user_pwcheck").value) {
                _el.setCustomValidity('False');
                return false;
            }
            document
                .getElementById('user_pwcheck')
                .setCustomValidity('');
            return true;
        }
        
        function requestDelete(){
        	if(!confirm("정말로 탈퇴하시겠습니까?")) return;
        	alert("삭제된 회원정보로는 재가입을 할 수 없습니다");
        	window.location.replace('/user/delete.us');
        }
    </script>
    </head>
    <body>
    	<jsp:include page="/header.jsp"></jsp:include>
    	
    	<div class="content-wrap">
    	 <div class="container content">
            <div class="input-form-backgroud row">
                <div class="input-form col-md-12 mx-auto">
                    <h2 style="color: #68bb7d;" class="mb-3">내 정보</h2>
                    <form class="validation-form" action="${pageContext.request.contextPath }/user/update.us" method="post">
                        <!-- 아이디 -->
                        <div class="row">
                            <div class="col-md-12 mb-2">
                                <label for="user_id">아이디 </label>
                                <input
                                    type="text"
                                    class="form-control"
                                    id="user_id"
                                    name="user_id"
                                    placeholder="아이디"
                                    value="${dto.user_id}"
                                    required="" readonly >
                                <div class="invalid-feedback">아이디를 입력해주세요.</div>
                            </div>
                        </div>
                        <!-- 비밀번호 -->
                        <div class="mb-2">
                            <label for="user_pw">비밀번호</label>
                                <div class="row">
                            <div class="col-md-12 mb-2">                            
                                <input
                                    type="text"
                                    class="form-control"
                                    id="user_pw"
                                    name="user_pw"
                                    placeholder="비밀번호"
                                    max=""
                                    required="">
                            </div>
<!--                             <div class="col-md-3 mb-2"> -->
<!--                                 <button class="btn btn-primary btn-md btn-block" type="button">수정</button> -->
<!--                             </div> -->
                                
                            <div class="invalid-feedback">
                                비밀번호를 확인해주세요
                            </div>
                        </div>
                        <!-- 비밀번호 확인-->
                        <div class="mb-2">
                            <label for="user_pwcheck">비밀번호확인</label>
                            <input
                                type="text"
                                class="form-control"
                                id="user_pwcheck"
                                placeholder="비밀번호확인"
                                oninput="validatePwdCheck(this)"
                                required="">
                            <div class="invalid-feedback">
                                비밀번호를 확인해주세요
                            </div>
                        </div>
                        <!-- 이름 -->
                        <div class="mb-2">
                            <label for="user_name">이름</label>
                            <div class="row">
                                <div class="col-md-12 mb-2">
                                    <input
                                        type="text"
                                        class="form-control"
                                        id="user_name"
                                        name="user_name"
                                        placeholder="이름"
                                        value="${dto.user_name}"
                                        max=""
                                        required="" readonly>
                                </div>
<!--                             <div class="col-md-3 mb-2"> -->
<!--                                 <button class="btn btn-primary btn-md btn-block" type="button">수정</button> -->
<!--                             </div> -->
                            <div class="invalid-feedback">
                                이름 입력해주세요
                            </div>                            
                        </div>
                        <!-- 달력 -->
                        <div class="col- md 12 mb-2">
                            <label for="user_birth">생년월일</label><br>
                            
                            <div class="row">
                                <div class="col-md-12 mb-2">
                                    <input
                                        type="date"
                                    class="form-control"
                                    id="user_birth"
                                    name="user_birth"
                                    value="${dto.user_birth}"
                                    max=""
                                    required="" readonly>
                                </div>
<!--                             <div class="col-md-3 mb-2"> -->
<!--                                 <button class="btn btn-primary btn-md btn-block" type="button">수정</button> -->
<!--                             </div> -->
                            <div class="invalid-feedback">
                                생년월일을 똑바로 입력해주세요
                            </div>
                        </div>
                        <!-- 핸드폰 번호 줄 맞추기용 -->
                        <div class="mb-2">
                            핸드폰번호
                        </div>
                        <!-- 핸드폰 번호 -->
                        <div class="row">
<!--                             <div class="col-md-2 mb-2"> -->
<!--                                 <select class="custom-select d-block w-100" id="carrier" required=""> -->
<!--                                     <option value=""></option> -->
<!--                                     <option>SKT</option> -->
<!--                                     <option>KT</option> -->
<!--                                     <option>LG U+</option> -->
<!--                                     <option>알뜰폰</option> -->
<!--                                 </select> -->
<!--                                 <div class="invalid-feedback">통신사를 선택해주세요</div> -->
<!--                             </div> -->
                            <div class="col-md-9 mb-2">
                                <input
                                    type="text"
                                    class="form-control"
                                    id="user_tell"
                                    name="user_tell"
                                    placeholder="-를 제외하고 입력해주세요"
                                    value="${dto.user_tell}"
                                    maxlength="13"
                                    required="">
                                <div class="invalid-feedback">휴대폰 번호를 입력해주세요</div>
                            </div>
                            <div class="col-md-3 mb-2">
                                <button class="btn btn-primary btn-md btn-block" type="button">인증번호 전송</button>
                            </div>
                        </div>
                        <!-- 인증번호 확인 -->
                        <div class="row">
                            <div class="col-md-9 mb-2">
                                <input
                                    type="text"
                                    class="form-control"
                                    id="check"
                                    placeholder="인증번호를 입력해주세요"
                                    maxlength="6"
                                    required="">
                            </div>
                            <div class="col-md-3 mb-2">
                                <button class="btn btn-primary btn-md btn-block" type="button">인증번호 확인</button>
                            </div>
                        </div>
                        <!-- 이메일 -->
                        <div class="mb-2">
                            <label for="user_email">이메일</label>
                     	<div class="row">
                            <div class="col-md-12 mb-2">
                                <input
                                    type="text"
                                    class="form-control"
                                    id="user_email"
                                    name="user_email"
                                    placeholder="you@example.com"
                                    value="${dto.user_email}"
                                    max=""
                                    required="">
                            </div>
<!--                             <div class="col-md-3 mb-2"> -->
<!--                                 <button class="btn btn-primary btn-md btn-block" type="button">수정</button> -->
<!--                             </div>    -->
                        </div>
                        <!-- 수정완료와 회원탈퇴 -->
                        <div class="row">
                            <div class="col-md-6 mb-4">
                                <button class="btn btn-primary btn-md btn-block" type="submit">수정완료</button>
                       		</div>
                           <div class="col-md-6 mb-4">
                                <button class="btn btn-primary btn-md btn-block" type="button" onclick="requestDelete()">회원탈퇴</button>
                       		</div>
                        </div>
                    </form>
                </div>
            </div>
            <footer class="my-3 text-center text-small">
                <p class="mb-1">©mypage_user</p>
            </footer>
        </div>
    	</div>
       
    </body>
        <!-- Start Script -->
    <script src="/assets/js/jquery-1.11.0.min.js"></script>
    <script src="/assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="/assets/js/bootstrap.bundle.min.js"></script>
    <script src="/assets/js/templatemo.js"></script>
    <script src="/assets/js/custom.js"></script>
    <!-- End Script -->
</body>
</html>