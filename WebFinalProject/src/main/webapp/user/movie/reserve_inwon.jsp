<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="user/movie/table.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$('#grade').change(function(){
		var inwon=$('#grade').val();
		$('#span_inwon').text("�ο�:"+inwon+"��");
		$('#span_price').text("�ݾ�:"+(inwon*9000)+"��");
		$('#inwon_jsp').val(inwon);
		$('#price_jsp').val(inwon*9000);
		
		$('#resImg').attr("src","images/res.png");
		$('#resImg').css("cursor","pointer");
	});
	$('#resImg').click(function(){
		var src=$('#resImg').attr("src");
		if(src=="images/res_d.png")
		{
			return;
		}
		else
		{
			//alert("���� ����");
			/* var title=$('#span_title').text();
			var theater=$('#span_theater').text();
			var day=$('#span_date').text();
			var time=$('#span_time').text();
			var inwon=$('#span_inwon').text();
			var price=$('#span_price').text();
			
			var param="title="+encodeURIComponent(title)
			         +"&theater="+encodeURIComponent(theater)
			         +"&day="+encodeURIComponent(day)
			         +"&time="+encodeURIComponent(time)
			         +"&inwon="+encodeURIComponent(inwon)
			         +"&price="+encodeURIComponent(price); */
			$('#res_frm').submit();
		}
	});
});
</script>
</head>
<body>
  <center>
    <table id="table_content" width=180>
            <tr>
              <th colspan="2">�ο�</th>
            </tr>
            <tr>
              <td>
                                   �ο�:
                 <select id="grade">
                   <c:forEach var="i" begin="1" end="5">
                    <option>${i }</option>
                   </c:forEach>
                 </select>
              </td>
            </tr>
         </table>
  </center>
</body>
</html>