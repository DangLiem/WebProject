<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        $this->call(userSeeder::class);
    }
}

//Create data for users_table
class userSeeder extends Seeder
{
	public function run()
	{
		DB::table('users')->insert([
        	['name'=>'Ngoc','email'=>'Ngoc99uet@gmail.com','password'=>bcrypt('ngocno')],
        ]);
	}
}

//Create data for product_table
