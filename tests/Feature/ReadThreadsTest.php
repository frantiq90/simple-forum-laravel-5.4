<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;


class ReadThreadsTest extends TestCase
{
    use DatabaseMigrations;

    public function setUp()
    {
        parent::setUp();

        $this->thread = factory('App\Thread')->create();
    }
    /**
     * Test.
     *
     * @return void
     */
    public function test_a_user_can_view_all_threads()
    {
        $response = $this->get('/threads')

            ->assertSee($this->thread->title);
    }

    /** @test */
    public function test_a_user_can_read_a_single_thread()
    {
        $this->get($this->thread->path())

            ->assertSee($this->thread->title);
    }

    /** @test */
    function test_a_user_can_read_replies_that_are_associated_with_a_thred()
    {
        $reply = factory('App\Reply')
            ->create(['thread_id' => $this->thread->id]);

        $this->get($this->thread->path())
            ->assertSee($reply->body);
    }

    /** @test */
    function a_user_can_filter_threads_according_to_channel()
    {
        $channel = create('App\Channel');
        $threadInChannel = create('App\Thread', ['channel_id' => $channel->id]);
        $threadNotInChannel =create('App\Thread');


        $this->get('/threads/' . $channel->slug)
            ->assertSee($threadInChannel->title)
            ->assertDontSee($threadNotInChannel->title);
    }

}
