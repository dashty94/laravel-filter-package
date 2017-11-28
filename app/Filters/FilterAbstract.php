<?php

namespace App\Filters;

use Illuminate\Database\Eloquent\Builder;

abstract class FilterAbstract
{

	abstract public function filter(Builder $builder, $value);

	public function mappings()
	{
		return [];
	}

	protected function resolveFilterValue($key)
	{
		// check the typed value and transform it to the value we have in our database "mappings()"
		return array_get($this->mappings(), $key);
	}

	protected function resolveOrderDirection($direction)
	{
		return array_get([
			'desc'	=>	'desc',
			'asc'	=>	'asc',
		], $direction, 'desc');
	}

}