<?php

use Faker\Generator as Faker;

$factory->define(App\Course::class, function (Faker $faker) {
    return [
        'name'	=> $name = $faker->sentence,
        'slug'	=>	str_slug($name),
        'free'	=>	rand(0, 1),
        'difficulty'	=>	['beginner', 'intermediate', 'advanced'][rand(0, 2)],
        'type'	=>	['theory', 'project', 'snippet'][rand(0, 2)],
    ];
});
