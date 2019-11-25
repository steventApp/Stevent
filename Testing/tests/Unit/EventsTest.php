<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class EventsTest extends TestCase
{
    /**
     * A basic unit test example.
     *
     * @return void
     */
    public function testExample()
    {
        $this->assertTrue(true);
    }

    public function user_can_create_event(){
        $data = [
            'judul' => "Judul event",
            'tempat' => "Lokasi event",
            'deskripsi' => "Deskripsi event",
            'harga' => 10000,
            'jadwal' => "14/11/19",
            'sampul' => "images.jpg",
        ];
        $user = factory(\App\User::class)->create();
        $response = $this->actingAs($user, 'api')->json('POST', '/api/products',$data);
        $response->assertStatus(200);
        $response->assertJson(['status' => true]);
        $response->assertJson(['message' => "Event Created!"]);
        $response->assertJson(['data' => $data]);
    }

    public function user_can_update_event(){
            $response = $this->json('GET', '/api/products');
            $response->assertStatus(200);
            $product = $response->getData()[0];
            $user = factory(\App\User::class)->create();
            $update = $this->actingAs($user, 'api')->json('PATCH', '/api/products/'.$product->id,['name' => "Changed for test"]);
            $update->assertStatus(200);
            $update->assertJson(['message' => "Event Updated!"]);
        
    }

    public function user_can_see_all_event(){
        $response = $this->json('GET', '/api/products');
            $response->assertStatus(200);
            $response->assertJsonStructure(
                [
                    [
                            'id_event',
                            'judul',
                            'tempat',
                            'deskripsi',
                            'id_user',
                            'created_at',
                            'updated_at',
                            'harga',
                            'jadwal',
                            'sampul'
                    ]
                ]
            );
    }

    public function user_can_see_the_detail_of_event(){
        $response = $this->json('GET', '/api/products');
            $response->assertStatus(200);
            $response->assertJsonStructure(
                [
                    [
                            'id_event',
                            'judul',
                            'tempat',
                            'deskripsi',
                            'id_user',
                            'created_at',
                            'updated_at',
                            'harga',
                            'jadwal',
                            'sampul'
                    ]
                ]
            );
    }
}
