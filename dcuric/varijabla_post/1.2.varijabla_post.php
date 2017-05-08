<HTML>
    <BODY>
    <FORM method="POST" action="">
        ime<br/><INPUT type="text" name="ime" value="" /><br/>
        prezime<br/><INPUT type="text" name="prezime" value=""/><br/>
        <br/>
        spol<br/>
        <INPUT type="radio" name="spol" value="M"/>musko<br/>
        <INPUT type="radio" name="spol" value="Z"/>zensko<br/>
        <br/>
        zupanija<br/>
        <SELECT name="zupanija">
            <OPTION value="1">Grad Zagreb</OPTION>
            <OPTION value="2">Zagrebacka zupanija</OPTION>
            <SELECT/>
            <br/>
            <br/>
            interesi<br/>
            <INPUT type="checkbox" name="interesi" value="1"/>sport<br/>
            <INPUT type="checkbox" name="interesi" value="2"/>muzika<br/>
            <INPUT type="checkbox" name="interesi" value="3"/>racunala<br/>
            <br/>
            napomena<br/>
            <TEXTAREA name="napomena" cols="50"></TEXTAREA>

<br/>
<br/>
<INPUT type="submit" name="submit_btn" value="Obrada"/>
</FORM>
    </BODY>
</HTML>

    
<?php

if(isset($_POST["submit_btn"]))
{
    echo "<pre>";
    echo "post varijabla";
    print_r($_POST);
    echo "</pre>";
}

if (isset($_GET["submit_btn"])){
    echo "<pre>";
    echo "get varijabla";
    print_r($_GET);
    echo "</pre>";
}