<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->words(1, true),
            'description' => $this->faker->sentence,
            'price' => $this->faker->randomFloat(2, 0, 300),
        ];
    }
}
