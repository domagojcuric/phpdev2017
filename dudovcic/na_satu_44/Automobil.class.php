<?php 



class Automobil extends Auto implements IAutomobil {

	private static $model;

	function set_model($model) {
		$this->$model = $model;
	}
	function get_model() {
		echo $model;
	}

}












