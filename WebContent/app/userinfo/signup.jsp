<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>signup</title>

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" type="text/css" href="/assets/css/signupstyle.css">

        <style>
            body {
                min-height: 100vh;
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
        <script src = "/assets/js/signupcheck.js"></script>
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
        </script>
    </head>
    <body>
    
        <div class="container">
            <div class="input-form-backgroud row">
                <div class="input-form col-md-12 mx-auto">
                    <h2 style="color: #68bb7d;" class="mb-3">회원가입</h2>
                    <form class = "validation-form" novalidate=""  action="${pageContext.request.contextPath }/user/UserSignup.us" method="post" >
                        <!-- 아이디 -->
                        <div class="row">
                            <div class="col-md-12 mb-2">
                                <label for="user_id">아이디</label>
                                <input
                                    type="text"
                                    class="form-control"
                                    id="user_id"
                                    name="user_id"
                                    placeholder="아이디"
                                    value=""
                                    required="">
                                <div class="invalid-feedback">아이디를 입력해주세요.</div>
                            </div>
                        </div>
                        <!-- 비밀번호 -->
                        <div class="mb-2">
                            <label for="user_pw">비밀번호</label>
                            <input
                                type="password"
                                class="form-control"
                                id="user_pw"
                                name="user_pw"
                                placeholder="비밀번호"
                                max=""
                                required="">
                            <div class="invalid-feedback">
                                비밀번호를 확인해주세요
                            </div>
                        </div>
                        <!-- 비밀번호 확인-->
                        <div class="mb-2">
                            <label for="user_pwcheck">비밀번호확인</label>
                            <input
                                type="password"
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
                            <input type="text" class="form-control" id="user_name" name="user_name" 
                            placeholder="이름" required="">
                            <div class="invalid-feedback">
                                이름 입력해주세요
                            </div>
                        </div>
                        <!-- 달력 -->
                        <div class="mb-2">
                            <label for="user_birth">생년월일</label><br>
                            <input
                                type="date"
                                class="form-control"
                                id="user_birth"
                                name="user_birth"
                                required="">
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
<!--                             <div class="col-md-2 mb-2">
                                <select class="custom-select d-block w-100" id="carrier" required="">
                                    <option value="">통신사</option>
                                    <option>SKT</option>
                                    <option>KT</option>
                                    <option>LG U+</option>
                                    <option>알뜰폰</option>
                                </select>
                                <div class="invalid-feedback">통신사를 선택해주세요</div>
                            </div> -->
                            <div class="col-md-9 mb-2">
                                <input
                                    type="tel"
                                    id="user_tell"
                                    name="user_tell"
                                    class="form-control"
                                    pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}"
                                    maxlength="13"
                                    placeholder="-를 제외하고 입력해주세요"
                                    required>
                                <div class="invalid-feedback">휴대폰 번호를 입력해주세요</div>
                            </div>
                            <div class="col-md-3 mb-2">
                                <button class="btn btn-primary btn-md btn-block" type="button">인증번호 전송</button>
                            </div>
                        </div>
<!--                         인증번호 확인 -->
<!--                         <div class="row"> -->
<!--                             <div class="col-md-9 mb-2"> -->
<!--                                 <input -->
<!--                                     type="text" -->
<!--                                     class="form-control" -->
<!--                                     id="check" -->
<!--                                     placeholder="인증번호를 입력해주세요" -->
<!--                                     maxlength="6" -->
<!--                                     required=""> -->
<!--                             </div> -->
<!--                                 <div class="col-md-3 mb-2"> -->
<!--                                     <button class="btn btn-primary btn-md btn-block" type="button">인증번호 확인</button> -->
<!--                             </div> -->

<!--                         </div> -->
                        <!-- 이메일 -->
                        <div class="mb-2">
                            <label for="user_email">이메일</label>
                            <input
                                type="email"
                                class="form-control"
                                id="user_email"
                                name="user_email"
                                placeholder="you@example.com"
                                required="">
                            <div class="invalid-feedback">이메일을 입력해주세요.</div>
                        </div>
                    
                        <!-- 개인정보 수집 동의 -->
                        <hr class="mb-4">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="aggrement" required="">
                            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
                        </div>
                        <!-- 가입완료 -->
                        <div class="mb-4"></div>
                        <button class="btn btn-primary btn-md btn-block" type="submit">가입완료</button>
                    </form>
                </div>
            </div>
            <footer class="my-3 text-center text-small">
                <p class="mb-1">©signup</p>
            </footer>
        </div>
    </body>
</html>