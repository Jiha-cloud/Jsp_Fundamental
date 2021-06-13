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
            	var address = encodeURIComponent('http://openapi.seoul.go.kr:8088/715142614f7170613131326449687761/json/RealtimeCityAir/1/25');
                
               $.ajax({
                   url : 'proxy.jsp?url='+address,
                   type : 'get',
                   dataType : 'json',
                   error : function(){},
                   success : function(json){
                	   let rowArray = json.RealtimeCityAir.row;
                	   for(const row of rowArray){
                		   let MSRSTE_NM = row.MSRSTE_NM;
                		   let PM10 = row.PM10;
                		   let PM25 = row.PM25;
                		   let IDEX_NM = row.IDEX_NM;
                	   }
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