<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booleans</title>
    
</head>

<body>
   
   <header>
       
       <h1>Task For The Day</h1>
       
       <ul>
           <li>
               
               <strong>Name: </strong> <?= $task['title']; ?>
               
           </li>
           
           <li>
               
               <strong>Due Date: </strong> <?= $task['due']; ?>
               
           </li>
           
           <li>
               
               <strong>Person Responsible: </strong> <?= $task['assigned_to']; ?>
               
           </li>
           
           <li>   
               
               
               <strong>Status: </strong>
               
               <?php
               
               if($task['completed']) {
                   
                   echo '&#9989; (Completed)';
                   
               } else {
                   
                   echo 'Incomplete';
               }
               
               ?>
               
              <!-- <?= $task['completed'] ? 'Complete' : 'Incomplete'; ?> SIMPLE WAY -->
               
               
               <!-- If we want to style we can use this way -->
            <?php if($task['completed']) : ?>
                   
               <div><span class="icon">&#9989; (Completed)</span></div>
                
               
            <?php else: ?>
               
               <div><span class="icon">Incomplete</span></div>
               
            <?php endif; ?>
               
               
               <!-- If condition is false (!) -->
               <?php
               
                    if(! $task['completed']) {
                        echo 'Incomplete';
                    }
                    
               ?>
               
           </li>
           
       </ul>
       
          
  
   </header>
    
</body>
</html>
