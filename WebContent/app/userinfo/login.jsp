<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>login</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- login css -->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />

<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">

<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">

<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">

<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">

<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">

<link rel="stylesheet" type="text/css" href="/assets/css/util.css">
<link rel="stylesheet" type="text/css" href="/assets/css/main.css">

<meta name="robots" content="noindex, follow">
<script>(function(w,d){!function(e,t,r,a,s){e[r]=e[r]||{},e[r].executed=[],e.zaraz={deferred:[]};var n=t.getElementsByTagName("title")[0];e[r].c=t.cookie,n&&(e[r].t=t.getElementsByTagName("title")[0].text),e[r].w=e.screen.width,e[r].h=e.screen.height,e[r].j=e.innerHeight,e[r].e=e.innerWidth,e[r].l=e.location.href,e[r].r=t.referrer,e[r].k=e.screen.colorDepth,e[r].n=t.characterSet,e[r].o=(new Date).getTimezoneOffset(),//
e[s]=e[s]||[],e.zaraz._preTrack=[],e.zaraz.track=(t,r)=>e.zaraz._preTrack.push([t,r]),e[s].push({"zaraz.start":(new Date).getTime()});var i=t.getElementsByTagName(a)[0],o=t.createElement(a);o.defer=!0,o.src="/cdn-cgi/zaraz/s.js?"+new URLSearchParams(e[r]).toString(),i.parentNode.insertBefore(o,i)}(w,d,"zarazData","script","dataLayer");})(window,document);</script>
</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form p-l-55 p-r-55 p-t-178" action="${pageContext.request.contextPath }/user/UserLoginOK.us" method="post">
					<span class="login100-form-title"> 행여나 </span>
					<div class="wrap-input100 validate-input m-b-16"
						data-validate="Please enter username">
						<input class="input100" type="text" name="user_id"
							placeholder="아이디"> <span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input"
						data-validate="Please enter password">
						<input class="input100" type="password" name="user_pw"
							placeholder="비밀번호"> <span class="focus-input100"></span>
					</div>
					<div class="text-right p-t-13 p-b-23">
						<a href="#" class="txt2"> 아이디 찾기 /</a><a href="#" class="txt2">
							비밀번호 찾기 </a>
					</div>
					<div class="container-login100-form-btn">
						<button type="submit" class="login100-form-btn">로그인</button>
					</div>
					<div class="flex-col-c p-t-170 p-b-40">
						<span class="txt1 p-b-9"> 아직 계정이 없으신가요? </span> <a href="${pageContext.request.contextPath }/app/userinfo/signup.jsp"
							class="txt3"> 회원가입 </a>
					</div>
				</form>
			</div>
		</div>
	</div>
<!-- </form> -->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>

	<script src="vendor/animsition/js/animsition.min.js"></script>

	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

	<script src="vendor/select2/select2.min.js"></script>

	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>

	<script src="vendor/countdowntime/countdowntime.js"></script>

	<script src="/assets/js/main.js"></script>

	<script async
		src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
	  var theSearch = window.location.search;
	  var theSearchParams = new URLSearchParams(theSearch);
	  if(theSearchParams.get('try') === 'false') {
		  alert('아이디와 비밀번호를 확인해주세요')
	  }
	
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>
	<script defer
		src="https://static.cloudflareinsights.com/beacon.min.js/v652eace1692a40cfa3763df669d7439c1639079717194"
		integrity="sha512-Gi7xpJR8tSkrpF7aordPZQlW2DLtzUlZcumS8dMQjwDHEnw9I7ZLyiOj/6tZStRBGtGgN6ceN6cMH8z7etPGlw=="
		data-cf-beacon='{"rayId":"6ccb9090ef8d3537","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2021.12.0","si":100}'
		crossorigin="anonymous">
	</script>
</body>
</html>