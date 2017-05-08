<div class="gm-offical-top">

    <h1 class="logo"><a href="." target="_blank">Evil Empire Cabal</a></h1>
    <a href="http://evilempire.website/webshop/" target="_blank" class="store-link">WEBSHOP</a>
    <div class="sign-box">
                <a href ="http://evilempire.website/register.php" target="_blank" class="btn btn-client1"><i class="i-font i-client1"></i>REGISTER</a>
		<a onclick="document.getElementById('id01').style.display='block'" target="_blank" class="btn btn-client"><i class="i-font i-client"></i>LOG-IN</a>

<div id="id01" class="modal">
  
  <form class="modal-content animate" action="#login-container" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close">&times;</span>
      <img src="images/img_avatar2.png" alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <label><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="txtLogin" maxlength="16" required>

      <label><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="txtSenha" maxlength="16" required>
        
      <button type="submit" name="sbmtOk" onClick="showProgress()">Login</button>
      <input type="checkbox" checked="checked"> Remember me
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
    </div>
  </form>
</div>

    </div>
</div>
<div class="login-txt-fail"><?php 
   if(isset($_POST['sbmtOk'])) {
        $txtLogin = addslashes($_POST['txtLogin']);
		$txtSenha = addslashes($_POST['txtSenha']);
	if(preg_match("/[^0-9a-zA-Z]/i", $txtLogin))
     $Error .= "Invalid Login, please try again...";
    if(preg_match("/[^0-9a-zA-Z]/i", $txtSenha))
      $Error .= "Invalid Password, please try again...";
	if(empty($Error) == false)
	  echo '<div class=\'box-warning\'>'.$Error.'</div>';
	 else 
	 {	
    $sql_Conta = @mssql_query("select ID from ".DB_ACC.".dbo.cabal_auth_table where ID='".$txtLogin."'");
	$sql_Conta_result = @mssql_num_rows($sql_Conta);
		if($sql_Conta_result <= 0){
			echo 'Invalid Login' ;} 
		else {  
	$sql_Senha = @mssql_query('select ID,UserNum,AuthKey from account.dbo.cabal_auth_table where id="'.$txtLogin.'" and PWDCOMPARE("'.$txtSenha.'", Password) = 1 ');
		if (@mssql_num_rows($sql_Senha)==0) {
			
			echo 'Invalid Password';  
			
			}
			
		else {
		$row = @mssql_fetch_row($sql_Senha);
		$_SESSION['ss_txtLogin'] = $txtLogin;
        $_SESSION['ss_txtSenha'] = $txtSenha;
						echo"<meta http-equiv=refresh content=\"1;URL=./login.php#login-container\">";
		
 }  }
 echo'</li>';
 mssql_close();
         }
 }
 ?></div>