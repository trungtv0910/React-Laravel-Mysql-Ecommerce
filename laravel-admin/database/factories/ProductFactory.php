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
            'name'=>$this->faker->title(),
            'price'=>499000,
            'content'=>$this->faker->paragraph(),
            'user_id'=>1,
            'category_id'=>2,
            'view_count'=>50000

        ];
    }
}
