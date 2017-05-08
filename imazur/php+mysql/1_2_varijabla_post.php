
<html>
    <body>
    <form method="POST" action="#">
    ime:<br/><input type="text" name="ime" value=""/><br/>
    prezime:<br/><input type="text" name="prezime" value=""/><br/>
    <br/>
    spol:<br/>
    <input type="radio" name="spol" value="M" />musko<br/>
    <input type="radio" name="spol" value="Ž" />zensko<br/>
    <br/>
    zupanija:<br/>
    <select name="zupanija">
        <option value="1">Grad zagreb</option>
        <option value="2">Zgrebacka zupanija</option>
    </select>
    <br/>
    <br/>
    interesi:<br/>
    <input type="checkbox" name="interesi" value="1"/>sport<br/>
    <input type="checkbox" name="interesi" value="2"/>muszika<br/>
    <input type="checkbox" name="interesi" value="3"/>racunala<br/>
    <br/>
    napomena:<br/>
    <textarea name="napomena" cols="50"></textarea>
    <br/>
    <br/>
    <input type="submit" name="submit_btn" value="Obrada" />
        
    </form>
    </body>
</html>

<?php

if(isset($_POST["submit_btn"]))
{
    echo'<pre>';
    print_r($_POST);
    echo'</pre>';
}

if(isset($_GET["submit_btn"]))
{
    echo'<pre>';
    print_r($_GET);
    echo'</pre>';
}
?>

<html>
    <body>
    <form method="POST" action="#">
    broj imena:<br/><input type="text" name="broj imena" value=""/><br/>
    </form>
    </body>
</html>
<?php

if(isset($_POST["submit_btn"]))
{
    echo'<pre>';
    print_r($_POST);
    echo'</pre>';
}

    