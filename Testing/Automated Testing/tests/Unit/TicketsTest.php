<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class TicketsTest extends TestCase
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

     public function user_can_buy_ticket(){
        $ticket = factory(Tickets::class)->event([
            'id_event'    => 'test',
        ]);
        $response = $this->belongsTo('App\Events','id_event');
        $this->seePageIs('/my-ticket');
    }
    public function user_can_see_ticket_they_buy(){
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
                            'harga',
                            'jadwal',
                            'sampul'
                    ]
                ]
            );
    }
}
