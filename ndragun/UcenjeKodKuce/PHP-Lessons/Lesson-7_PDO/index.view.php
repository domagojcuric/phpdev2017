<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Classes</title>
    
</head>

<body>
   
    <!-- First way
    <ul>
        <?php foreach ($tasks as $task) : ?>

            <li>
                <?php if ($task->completed) :?>
                
                    <strike>
                
                <?php endif; ?>
                
                <?= $task->description; ?>

                <?php if ($task->completed) : ?>
                
                    </strike>
            
                <?php endif; ?>
                
            </li>

        <?php endforeach; ?> 
        
    </ul> -->
    
    <!-- Second way -->
    
    <ul>
        <?php foreach ($tasks as $task) : ?>

            <li>
                <?php if ($task->completed) :?>
                
                    <strike><?= $task->description; ?></strike>
                
                <?php else: ?>
                
                <?= $task->description; ?>
            
                <?php endif; ?>
                
            </li>

        <?php endforeach; ?> 
        
    </ul>
    
</body>
</html>
