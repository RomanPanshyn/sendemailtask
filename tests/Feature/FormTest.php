<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class FormTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function testExample()
    {
        $response = $this->get('/');

        $response->assertStatus(200);
    }

    public function testMessageContent()
    {
        // Make call to application...

        $this->assertDatabaseHas('forms', [
            'message_content' => 'Hello from Roman Panshyn!',
        ]);

        $this->assertDatabaseHas('forms', [
            'message_content' => 'Second test from Roman Panshyn',
        ]);

        $this->assertDatabaseMissing('forms', [
            'message_content' => 'this message is not in database',
        ]);

        $this->assertDatabaseMissing('forms', [
            'message_content' => 'how long will it take?',
        ]);
    }
}
