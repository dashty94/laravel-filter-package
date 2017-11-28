<?php

namespace App\Filters\Course;

use App\Filters\FilterAbstract;
use Illuminate\Database\Eloquent\Builder;

class AccessFilter extends FilterAbstract {

	public function mappings()
	{
		return [
			'free'	=>	true,
			'premium'	=>	false
		];
	}

	public function filter(Builder $builder, $value)
	{
		// reassign the value
		$value = $this->resolveFilterValue($value);

		// check if the value entered is null
		if($value === null){
			return $builder;
		}

		return $builder->where('free', $value);
	}

}