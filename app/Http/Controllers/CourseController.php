<?php

namespace App\Http\Controllers;

use App\Course;
use Illuminate\Http\Request;

class CourseController extends Controller
{
    public function index(Request $request)
    {
    	return Course::with(['subjects'])->filter($request, $this->getFilters())->get();
    }

    protected function getFilters()
    {
    	return [
    		// 'difficulty'	=>	DifficultyFilter::class
    	];
    }

}
