<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Customer;
use Illuminate\Support\Str;
use Faker\Generator as Faker;


$factory->define(Customer::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'email' => $faker->varchar,
        'remember_token' => Str::random(10),
    ];
});
