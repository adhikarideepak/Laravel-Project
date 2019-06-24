<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Order;
use Faker\Generator as Faker;

$factory->define(Order::class, function (Faker $faker) {
    return [

        'invoice_number' => $faker->unique()->numberBetween(1, 100),
        'total_amount' => $faker->randomFloat(2, 0, 2000),
        'status' => $faker->boolean,
    ];
});
