<?php defined('SYSPATH') or die('No direct access allowed.');
class Model_Portofolio extends ORM
{
	protected $_table_name = 'portofolio';
	protected $_primary_key = 'PortfolioId';

		protected $_belongs_to = array(
	    'category' => array(
        	'model'   => 'category',
        	'foreign_key' => 'CategoryId',
    	),
    );
}