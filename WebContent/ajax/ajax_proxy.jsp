<%-- ajax_proxy.jsp --%>
<%@ page pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajax Jsonp</title>
    <script src="../js/jquery-3.6.0.js"></script>
    <script>
        //jsonp 방식을 사용하기 위해서는 반드시 2가지 조건이
        //성립해야 한다.
        //1. jsonp 형식으로 제공해야 한다.
        //2. json 데이터만 사용가능
        
        $(function(){
            $('#btn').click(function(){
            	var address = encodeURIComponent('http://apis.data.go.kr/B552061/frequentzoneBicycle/getRestFrequentzoneBicycle?serviceKey=uzqVSGAn51ZoLPRRxN3%2BrS47DIR%2FD7HyH1lSAzGAHSAqhq4zjnlcq%2FpPlCLyApT8M%2B4VQ%2BHMHvSZVGdSE%2FjcrQ%3D%3D&searchYearCd=2015&siDo=11&guGun=110&type=json&numOfRows=1&pageNo=1');
                
               $.ajax({
                   url : 'proxy.jsp?url='+address,
                   type : 'get',
                   dataType : 'json',
                   error : function(){},
                   success : function(json){
                       $('#sel').append(JSON.stringify(json));
                   }
               });
            });//end of button event
        });//end of onloading
    </script>
</head>
<body>
    <button id="btn">가져오기</button>
    <div id="sel">

    </div>
</body>
</html>