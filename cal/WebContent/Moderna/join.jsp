<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript">
function checkInfo(){  
	
	if(MemberInfo.userID.value.length > 12 || MemberInfo.userID.value.length < 4)
	{
	 alert("会員のIDは4~12字で入力してください。");
	 //alert("회원 아이디는 4~12 글자로 입력하세요");
	 MemberInfo.userID.focus();
	 return false;
	}else if(MemberInfo.userPassword1.value.length < 4 || MemberInfo.userPassword1.value.length > 12){
	  alert("パスワードは4~12字で入力してください。");
	//alert("비밀번호를 4~12 글자로 입력하세요");
	  MemberInfo.userPassword1.focus();
	  return false;
	}else if(MemberInfo.userPassword2.value != MemberInfo.userPassword1.value){
	 alert("パスワードが一致しません。");
	// alert("비밀번호가 일치하지 않습니다");
	 MemberInfo.userPassword2.focus();
	 return false;
	}else if((MemberInfo.userName.value.length<2) || (MemberInfo.userName.value.length > 4)){
	 alert("お名前は2~4字で入力してください。");
	// alert("회원 이름은 2~4 글자로 입력하세요");
	 MemberInfo.userName.focus();
	 return false;
	}else if((MemberInfo.userAge.value.length==0)){
		 alert("年齢を入力してください。");
//		 alert("나이를 입력해주세요");
		 MemberInfo.userAge.focus();
		 return false;
	}else if((MemberInfo.userEmail.value.length==0)){
	 alert("E-mailを入力してください。");
	// alert("E-mail을 입력해주세요");
	 MemberInfo.userEmail.focus();
	 return false;

	}else

	 return true;
	}

</script>

	<Form Method="post" Name="MemberInfo" Action="Join.do"
		onSubmit="return checkInfo()">
		<br>
		<div class="container">
			<table class="table table-bordered table hover"
				style="text-align: center; border: 1px solid:#0ca1a3">
				<thead>
					<tr>
						<th colspan="3"><h4>会員登録</h4></th>
						<!-- <th colspan="3"><h4>회원등록양식</h4></th> -->
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 110px;"><h5>ID</h5></td>
						<td><input class="form-control" type="text" id="userid"
							name="userID" maxLength="20" placeholder="IDを入力してください。"></td>

					</tr>
					<tr>
						<td style="width: 110px;"><h5>パスワード</h5></td>
						<td colspan="2"><input class="form-control" type="password"
							id="userPassword1" name="userPassword1" maxLength="20"
							placeholder="パスワードを入力してください。"></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>パスワード確認</h5></td>
						<td colspan="2"><input class="form-control" type="password"
							id="userPassword2" name="userPassword2" maxLength="20"
							placeholder="もう一度入力してください。"></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>お名前</h5></td>
						<td colspan="2"><input class="form-control" type="text"
							id="userName" name="userName" maxLength="20"
							placeholder="お名前を入力してください。"></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>年齢</h5></td>
						<td colspan="2"><input class="form-control" type="text"
							id="userAge" name="userAge" maxLength="20"
							placeholder="年齢を入力してください。"></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>性別</h5></td>
						<td colspan="2">
							<div class="form-group"
								style="text-align: center; margin: 0 auto;">
								<div class="btn-group">
									<label class="btn btn-primary"> <input type="radio"
										id="userGender" name="userGender" value="0">男子
									</label> <label class="btn btn-primary"> <input type="radio"
										id="userGender" name="userGender" value="1">女子
									</label>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>E-mail</h5></td>
						<td colspan="2"><input class="form-control" type="email"
							id="userEmail" name="userEmail" maxLength="30"
							placeholder="E-mailを入力してください。"></td>
					</tr>

					<tr>
						<td colspan="3" style="text-align: right;"><input
							type="button" onClick="location.href='loginForm.jsp'"
							class="btn btn-primary" value="キャンセル"> <input
							type="submit" class="btn btn-primary" value="登録"></td>
					</tr>
				</tbody>
			</table>
		</div>

	</Form>

