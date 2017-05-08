<html>
    <head>
        <title>Php</title>
            
    </head>
    
    <body>
<?php include ("data.php")?>
 
<?php


print_r($data);
echo "<br>";
echo "<br>";

echo "<table border 1px>";
  echo"<tr>";
  echo"<th>RBR</th>";
  echo"<th>IME</th>";
  echo"<th>PREZIME</th>";
  echo"<th>DATUM</th>";
  echo"<th>PLACENO</th>";
echo "</tr>";
    foreach ($data as $key =>$red) 
    { 
        echo '<tr>';
        echo '<th>' . $key . '</th>';
        echo '<td>' . $red['ime'] . '</td>';
        echo '<td>' . $red['prezime'] . '</td>';
        echo '<td>' . $red['datum'] . '</td>';
        echo '<td>'; 
         echo "<select name=izbornik>";
         echo "<option value=da>da</option>";
         echo "<option value=ne>ne</option>";
         echo "</select>";
         echo "</form>";
         echo  '</td>';

        echo '</tr>';
    }     

echo "</table>";
echo"<br>";
$data[1]["datum"] = "2011-03-01";

function date_trans($date)
{
  return date ('d.m.Y',strtotime($date));
}

echo $final = date_trans($data[1]["datum"]);
/*for($i=0; $i<count($data); $i++)
{
    echo $data[$i];
}
*/
/*foreach( $data as $key=>$value)
{
    echo $value;
}
*/
  echo "<br>";
  
  /*foreach ($data as $item) {
    echo '<tr>';
    echo '<td>'.$item[0].'</td>';
    echo '<td>'.$item[1].'</td>';
    echo '<td>'.$item[2].'</td>';
    echo '</tr>';
*/
  
  
  
        
        
         
        
     echo "<br>";
     echo "<br>";
     echo "<br>";
     echo "<br>";
     echo "<br>";
     
     ?>     
        
 
   <table border='1'>
   <tr>
       <th>rbr</th>
       <th>Prezime</th>
       <th>Ime</th>
       <th>datum prijave</th>
       <th>placeno</th>
   </tr>
     <tr>
       <td>1</td>
       <td>Ivic</td>
       <td>Iva</td>
       <td>01.03.2011</td>
               <td>
           <form>
               <select name="izbornik">
               <option value="da">da</option>
               <option value="ne">ne</option>
               </select>
           </form></td>
           <tr>
       <td>2</td>
       <td>Peric</td>
       <td>Petar</td>
       <td>05.03.2011</td>
               <td>
           <form>
               <select name="izbornik">
               <option value="da">da</option>
               <option value="ne">ne</option>
               </select>
           </form></td>
       
   
   
   </table>
        
        
       
               
         
    
    </body>
</html>

