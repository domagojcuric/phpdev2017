<?php

$mysqli= new mysqli('localhost', 'root', '', 'fakultet');
mysqli_set_charset($mysqli,"utf8");
if (mysqli_connect_errno())
{
    echo "doslo je do greske:";
    echo mysqli_connect_error();
    exit();
    
}

//prvi zadatak:
$query_tpl = "select mbrstud, prezstud from stud where imestud=?";
$naziv="Ivan";
if ($stmt = $mysqli->prepare($query_tpl))
{
    $stmt->bind_param('s', $naziv);
    $stmt->execute();
    $stmt->bind_result($mbr, $prezstud);
    while ($stmt->fetch())
    {echo $mbr.$prezstud;
    echo "<br>";
    
    }
    $stmt->close();
}


echo "<br>";
//drugi zadatak:

$query_tpl2 = "select nazpred from pred order by nazpred asc";

if ($stmt2 = $mysqli->prepare($query_tpl2))
{
        $stmt2->execute();
    $stmt2->bind_result($nazpred);
    while ($stmt2->fetch())
    {echo $nazpred;
    echo "<br>";
    }
    $stmt2->close();
}
echo "<br>";


//treci zadatak:

$query_tpl3 = "select imestud,prezstud from stud where prezstud like ? order by imestud ASC";
$b="b%";
if ($stmt3 = $mysqli->prepare($query_tpl3))
{
    $stmt3->bind_param('s', $b);
        $stmt3->execute();
    $stmt3->bind_result($imestud, $prezstud);
    while ($stmt3->fetch())
    {echo $imestud.' '.$prezstud;
    echo "<br>";
    }
    $stmt3->close();
}
echo "<br>";

//cetvrti zadatak

$query_tpl4 = "select imestud, prezstud from stud inner join mjesto on mjesto.pbr=stud.pbrrod where mjesto.nazmjesto=?";
$nazmjesto="Zagreb";
if ($stmt4 = $mysqli->prepare($query_tpl4))
{
    $stmt4->bind_param('s', $nazmjesto);
        $stmt4->execute();
    $stmt4->bind_result($imestud2, $prezstud2);
    while ($stmt4->fetch())
    {echo $imestud2.' '.$prezstud2;
    echo "<br>";
    }
    $stmt4->close();
}
echo "<br>";

//peti zadatak

$query_tpl5 = "select imestud from stud where imestud like 'a%'";
$result100= mysqli_query ($mysqli, $query_tpl5);


if ($stmt5 = $mysqli->prepare($query_tpl5))
{
    
        $stmt5->execute();
    $stmt5->bind_result($imestud3);
        while ($stmt5->fetch())
    {echo $imestud3;
        echo "<br>";
    }
   
 echo mysqli_num_rows($result100);
    $stmt5->close();
}
echo "<br>";

//šesti zadatak

$query_tpl6 = "select count(preznastavnik) as brojnastavnika from nastavnik where preznastavnik like ?";
$m='m%';
if ($stmt6 = $mysqli->prepare($query_tpl6))
{
    $stmt6->bind_param('s', $m);
        $stmt6->execute();
    $stmt6->bind_result($count);
    while ($stmt6->fetch())
    {echo $count;
    echo "<br>";
    }
    $stmt6->close();
}
echo "<br>";

