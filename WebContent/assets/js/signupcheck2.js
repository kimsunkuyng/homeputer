window.addEventListener('load', () => {
    //회원가입 달력 범위 설정
    const birthdate = document.getElementById('user_birth');
    
    if(birthdate) {
        const now = new Date();
        const date = `${String(now.getMonth()+1).padStart(2, '0')}-${String(now.getDate()).padStart(2, '0')}`;
        birthdate.max = `${now.getFullYear()}-${date}`
        birthdate.min = `${now.getFullYear() - 100}-${date}`
    }
    //핸드폰 번호 자동 하이픈(-) 설정, 숫자만 써지게 하기
    function autoHypenPhone(str) {
        str = str.replace(/[^0-9]/g, '');
        var tmp = '';
        if (str.length < 4) {
            return str;
        } else if (str.length < 7) {
            tmp += str.substr(0, 3);
            tmp += '-';
            tmp += str.substr(3);
            return tmp;
        } else if (str.length < 11) {
            tmp += str.substr(0, 3);
            tmp += '-';
            tmp += str.substr(3, 3);
            tmp += '-';
            tmp += str.substr(6);
            return tmp;
        } else {
            tmp += str.substr(0, 3);
            tmp += '-';
            tmp += str.substr(3, 4);
            tmp += '-';
            tmp += str.substr(7);
            return tmp;
        }
        return str;
    }
    var user_tell = document.getElementById('user_tell');
        user_tell.onkeyup = function (event) {
            event = event || window.event;
            var _val = this.value.trim();
            this.value = autoHypenPhone(_val);
        }

    //오류 확인
    const forms = document.getElementsByClassName('validation-form');

    Array.prototype.filter.call(forms, (form) => {
            form.addEventListener('submit', function (event) {
                let status = true;
                if (!validatePwdCheck()) {
                    event.preventDefault();
                    event.stopPropagation();
                    status = false;
                }
                if (form.checkValidity() === false) {
                    event.preventDefault();
                    event.stopPropagation();
                    status = false;
                }
                form.classList.add('was-validated');
                if (status) {
                    event.preventDefault();
                    event.stopPropagation();
                    alert('회원 가입을 성공했습니다.');
                    return;
                }
                alert('회원 가입을 실패했습니다')
            }, false);
        });
}, false);
