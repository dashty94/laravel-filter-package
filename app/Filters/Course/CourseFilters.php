<?php

namespace App\Filters\Course;

use Illuminate\Http\Request;
use App\Filters\FiltersAbstract;
use App\Filters\Course\StartedFilter;
use Illuminate\Database\Eloquent\Builder;
use App\Filters\Course\Ordering\ViewsOrder;
use App\Filters\Course\{AccessFilter, DifficultyFilter, SubjectFilter};

class CourseFilters extends FiltersAbstract
{

	protected $filters = [
		'access'	=>	AccessFilter::class,
		'difficulty'	=>	DifficultyFilter::class,
		'subject'	=>	SubjectFilter::class,
		'started'	=>	StartedFilter::class,
		'views'	=>	ViewsOrder::class
	];

}