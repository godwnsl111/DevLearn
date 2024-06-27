<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script type="text/javascript">
function sendOk() {
	const f = document.updateForm;
	
	let str = f.memberPwd.value;
	if(str != "${dto.memberPwd}") {
		alert("패스워드가 일치하지 않습니다.")
		f.memberPwd.focus();
		return;
	}
	
	f.action = "${pageContext.request.contextPath}/member/update";
	f.submit();
}

</script>


<!-- 메인 -->
<div class="container" style="width:500px;">	
	<form name="updateForm" method="get" class="border mt-5 p-4">
		<h2 class="h3 mb-4 fw-normal" style="text-align: center;">패스워드 재확인</h2>
		<div class="form-footer col-12 checkbox mb-3">
			<p>정보보호를 위해 패스워드를 다시 한번 입력해주세요.</p>
		</div>
		
        <div class="d-grid" style="margin-botton: 10px;">
            <input type="text" name="memberEmail" class="form-control form-control-lg" value="${dto.memberEmail}" readonly="readonly" style="margin-bottom: 20px;">
        </div>
        <div class="d-grid" style="margin-botton: 10px;">
            <input type="password" name="memberPwd" class="form-control form-control-lg" placeholder="패스워드" style="margin-bottom: 20px;">
        </div>
        
        <div class="d-grid">
            <button type="button" class="btn btn-lg btn-primary" onclick="sendOk();">확인 <i class="bi bi-check2"></i> </button>
            <input type="hidden" name="mode" value="update">
        </div>
        
        <div class="d-grid">
			<p class="form-control-plaintext text-center py-3">${message}</p>
		</div>
	</form>
</div>
			   
