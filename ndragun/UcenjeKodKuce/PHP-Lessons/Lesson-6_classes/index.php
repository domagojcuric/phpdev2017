<?php


require 'functions.php';

// Todo Application

// Todo, Comment, User

//Encapsulation - public, private, protected

class Task {
    
    public $description;
    
    public $completed = false;
    
    //Constructor will automatically triggered on instantiation
    public function __construct($description)
            
    {
        
        $this->description = $description;
        
    }
    
    public function complete()
            
    {
        
        $this->completed = true;
        
    }
    
    public function isComplete()
            
    {
        
        return $this->completed;
        
    }
    
    public function description()
            
    {
        
        return $this->description;
        
    }
     
    
}

/* $task = new Task('Go to the store'); // a new task object

$task->complete(); // complete the task

var_dump($task->isComplete()); */

$tasks = [
    
    new Task('Go to the store'), // 0
    
    new Task('Finish my screencast'), // 1
    
    new Task('Clean my room') // 2
    
];

$tasks[0]->complete();

require 'index.view.php';