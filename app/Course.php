<?php

namespace App;

use App\User;
use App\Subject;
use App\Filters\Course\CourseFilters;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class Course extends Model
{
	public $appends =[
		'started'
	];

	public $hidden = [
		'users'
	];

	public function ScopeFilter(Builder $builder, $request, array $filters = [])
	{
		return (new CourseFilters($request))->add($filters)->filter($builder);
	}

	public function subjects()
	{
		return $this->morphToMany(Subject::class, 'subjectable');
	}

	public function users(){
        return $this->belongsToMany(User::class);
    }

    public function getStartedAttribute()
    {
    	if(!auth()->check()){
    		return false;
    	}

    	return $this->users->contains(auth()->user());
    }
}
