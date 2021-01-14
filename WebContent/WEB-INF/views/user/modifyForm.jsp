<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.vo.UserVo"%>

<%
	UserVo modiUser = (UserVo)request.getAttribute("modiUser");
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link href="/mysite2/assets/css/mysite.css" rel="stylesheet" type="text/css">
		<link href="/mysite2/assets/css/user.css" rel="stylesheet" type="text/css">
	
	</head>
	
	<body>
		<div id="wrap">
	
			<!--  header & navi 공통으로 옮겼음 -->
			<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
	
			<!--  userAside 공통으로 옮겼음 -->
			<jsp:include page="/WEB-INF/views/include/userAside.jsp"></jsp:include>
	
			<div id="content">
				
				<div id="content-head">
	            	<h3>회원정보</h3>
	            	<div id="location">
	            		<ul>
	            			<li>홈</li>
	            			<li>회원</li>
	            			<li class="last">회원정보</li>
	            		</ul>
	            	</div>
	                <div class="clear"></div>
	            </div>
	             <!-- //content-head -->
	
				<div id="user">
					<div id="modifyForm">
						<form action="/mysite2/user" method="post">
	
							<!-- 아이디 -->
							<div class="form-group">
								<label class="form-text" for="input-uid">아이디</label> 
								<span class="text-large bold"><%=modiUser.getId() %></span>
								<!-- 방법2 <input type="hidden" name="id" value="<%=modiUser.getId() %>"> -->
							</div>
	
							<!-- 비밀번호 -->
							<div class="form-group">
								<label class="form-text" for="input-pass">패스워드</label> 
								<input type="text" id="input-pass" name="newPw" value="<%=modiUser.getPassword() %>" placeholder="비밀번호를 입력하세요"	>
							</div>
	
							<!-- 이메일 -->
							<div class="form-group">
								<label class="form-text" for="input-name">이름</label> 
								<input type="text" id="input-name" name="newName" value="<%=modiUser.getName() %>" placeholder="이름을 입력하세요">
							</div>
	
							<!-- //나이 -->
							<div class="form-group">
								<span class="form-text">성별</span> 
								
								<!-- 방법1 -->
								<label for="rdo-male">남</label> 
								<input type="radio" id="rdo-male" name="newGender" value="male" <%if("male".equals(modiUser.getGender())) {%>checked <%} %>> 
								
								<label for="rdo-female">여</label> 
								<input type="radio" id="rdo-female" name="newGender" value="female" <%if("female".equals(modiUser.getGender())) {%>checked <%} %>>
								
								<%--
								<!-- 방법2 -->
								<%if("male".equals(modiUser.getGender())) {%>
									<label for="rdo-male">남</label> 
									<input type="radio" id="rdo-male" name="gender2" value="male" checked> 
									
									<label for="rdo-female">여</label> 
									<input type="radio" id="rdo-female" name="gender2" value="female" > 
								<%}else{ %>
									<label for="rdo-male">남</label> 
									<input type="radio" id="rdo-male" name="gender2" value="male" > 
									
									<label for="rdo-female">여</label> 
									<input type="radio" id="rdo-female" name="gender" value="female" checked>
								<%} %>
								 --%>
							</div>
	
							<!-- 버튼영역 -->
			                <div class="button-area">
			                    <button type="submit" id="btn-submit">회원정보수정</button>
			                </div>
							
							<input type="hidden" name="action" value="modify">
						</form>
					
					
					</div>
					<!-- //modifyForm -->
				</div>
				<!-- //user -->
			</div>
			<!-- //content  -->
			<div class="clear"></div>
			
			<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
			
		</div>
		<!-- //wrap -->
	
	</body>

</html>