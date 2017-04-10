<!DOCTYPE html>
<html>
    <head>
        <style>
            <!-- Ovo je html komentar -->
            <!-- Ovo ispod je CSS stil -->
            table {width: 300px}
            tr:nth-child(even){background: #ffcccc}
            tr:nth-child(odd){background: #9999ff}
            span,p, p div.drvena {background: #99ff99 !important;} 
            #zuti_td {background: yellow}
            .crvena {background: red}

            td.crvena {background: #666600}
        </style>
        
    </head>
    <body>
        <div class="crvena">
            Ovo je crveno ali ja ne zelim da bude crveno već plavo
            
        </div>
        
        <p>Ovo je neki p u kojemu je div
        <div> u njemu je div</div>
        <div class="drvena"> u njemu je div ali klase crveno</div>
    </p>
        
        <br>
        <span>ovo je neki span</span>
        <br>
        <p>Ovo je neki p </p>
        
        Helooo from raw HTML <br>
        <table>
            <tr><td>Ovaj je <span>neparni</span></td></tr>
            <tr><td>ovaj je parni</td></tr>
            <tr><td>Ovaj je neparni</td></tr>
            <tr><td>ovaj je parni</td></tr>
             <tr><td id="zuti_td">Ovaj je neparni</td></tr>
            <tr><td class="crvena">ovaj je parni</td></tr>
            <tr><td>Ovaj je neparni</td></tr>
            <tr><td>ovaj je parni</td></tr>           
            <tr><td class="crvena">ovaj je parni</td></tr>
            <tr><td class="crvena">ovaj je parni</td></tr>
            <tr><td class="crvena">ovaj je parni</td></tr>
            <tr><td class="crvena">ovaj je parni</td></tr>
            <tr><td class="crvena">ovaj je parni</td></tr>            
            
        </table>     

<?php

echo "hello from PHP";
echo "<br>";
?>

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
test2


    </body>
</html>