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
               
               <strong>Status: </strong> <?= $task['completed'] ? 'Completed' : 'Incompleted'; ?>
               
           </li>
           
       </ul>
       
          
  
   </header>
    
</body>
</html>
