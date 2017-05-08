<?php

echo "<table>";
for($i=1;$i<=10;$i++){
    echo "<tr>";
    for($j=1;$j<=10;$j++){
        $rez=$i*$j;
        echo "<td>".$rez."</td>";
    }
    echo "</tr>";
    }

echo "</table>";