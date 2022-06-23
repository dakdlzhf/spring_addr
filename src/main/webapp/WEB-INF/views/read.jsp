

<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<title>homepage</title>
<meta charset="utf-8">
<script>
	function update(){
		let url = "/addr/update/${dto.addressnum}";
		location.href = url;
	}
	function del(){
		let url = "/addr/delete/${dto.addressnum}";
		location.href = url;
	}
</script>
</head>
<body>
	<div class="container">
		<h1 class="col-sm-offset-2 col-sm-10">글번호 ${dto.addressnum} 번 상세내용</h1>
		<div class="panel panel-default">

			<div class="panel panel-default">
				<div class="panel-heading">작성자</div>
				<div class="panel-body">${dto.name}</div>

				<div class="panel-heading">전화번호</div>
				<div class="panel-body">${dto.handphone}</div>

				<div class="panel-heading">주소</div>
				<div class="panel-body">${dto.address}</div>


				<div class="panel-heading">우편번호</div>
				<div class="panel-body">${dto.zipcode}</div>

				<div class="panel-heading">상세주소</div>
				<div class="panel-body">${dto.address2}</div>


			</div>
			<div>
				<button type="button" class="btn" onclick="location.href='/addr/create'">등록</button>
				<button type="button" class="btn" onclick="update()">수정</button>
				<button type="button" class="btn" onclick="del()">삭제</button>
				<button type="button" class="btn" onclick="location.href='/addr/list'">목록</button>
			</div>
		</div>
	</div>
</body>
</html>
