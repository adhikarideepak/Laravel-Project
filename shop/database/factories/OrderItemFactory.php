<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Order_item;
use Faker\Generator as Faker;

$factory->define(OrderItem::class, function (Faker $faker) {
    return [
        'order_id' => $faker->int(20),
        'product_id' => $faker->int(20),
        'quantity' => $faker->int(20),
    ];
});
