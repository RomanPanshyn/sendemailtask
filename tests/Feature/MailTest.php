<?php

namespace Tests\Feature;

use App\Mail\OrderShipped;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithoutMiddleware;
use Illuminate\Support\Facades\Mail;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class MailTest extends TestCase
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

    public function testOrderShipping()
    {
        Mail::fake();

        // Assert that no mailables were sent...
        Mail::assertNothingSent();

        // Perform order shipping...

        // Assert a specific type of mailable was not dispatched meeting the given truth test...
        Mail::assertNotSent(OrderShipped::class, function ($mail) {
            return $mail->hasWith(['message' => 'test message 1']);
        });

        // Assert a message was not sent to the given users...
        Mail::assertNotSent(OrderShipped::class, function ($mail) {
            return $mail->hasTo('romanpanshyn@gmail.com');
        });

        // Assert a mailable was not sent twice...
        Mail::assertNotSent(OrderShipped::class, 2);

        // Assert a mailable was not sent...
        Mail::assertNotSent(AnotherMailable::class);
    }
}
