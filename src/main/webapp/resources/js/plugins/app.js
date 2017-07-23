// 해당 변수에 값을 채워 주세요
$(function (){
  //초기화 
    DbsEsmt.init({
        appkey : "",
        client_id : "d8a092854d3b77fe31f86540ca4fe5",
        scope : "	10",
        redirect_uri : "http://www.dormitory.hanyang.ac.kr/sso/doLogin",
        // if true, token is saved cookie or localstorage
        savingToken : true
    });

    var status = DbsEsmt.getLoginStatus();
    $("#status1").html("Login Status : " + status );
});

function userTotalCallback( data ) {
    var titleEl,
        $targetEl;
    titleEl = "<h2> userTotal success </h2>" ;
    $targetEl = $("#idUserTotal");
    $targetEl.html('<pre>' + titleEl + JSON.stringify(data, null, 2) + '</pre>');

    console.log("유저 이름 : "+ data.response.item.userNm);
    console.log("유저 아이디 : "+ data.response.item.loginId);
    console.log("유저 구분 : "+ data.response.item.userGbNm);  //학생 , 교직원 , 일반

}
function userInfoDetail() {
    DbsEsmt.api( "get", "https://api.hanyang.ac.kr/rs/user/loginInfo.json", { },  userTotalCallback );
}

function logout() {

    getProcess4Front("/cms_manager/doLogout4SSO", null, function (data) {

    });

    DbsEsmt.logout( function() {
        window.location.reload();
    });
}
