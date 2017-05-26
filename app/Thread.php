<?php
namespace App;

use App\Filters\ThreadFilters;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;

class Thread extends Model
{
    use RecordsActivity;
    /**
     * Don't auto-apply mass assignment protection.
     *
     * @var array
     */
    protected $guarded = [];

    protected $with = ['creator', 'channel'];
    /**
     * Get a string path for the thread.
     *
     * @return string
     */

    protected static function boot()
    {
        parent::boot();


        static::deleting(function ($thread) {
            $thread->replies->each->delete();            
        });

        
    }

    

    public function path()
    {
        return "/threads/{$this->channel->slug}/{$this->id}";
    }
    /**
     * A thread belongs to a creator.
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function creator()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
    /**
     * A thread is assigned a channel.
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function channel()
    {
        return $this->belongsTo(Channel::class);
    }
    /**
     * A thread may have many replies.
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function replies()
    {
        return $this->hasMany(Reply::class);
    }

    public function getReplyCountAttribute()
    {
        return $this->replies()->count();
    }
    
    public function addReply($reply)
    {
        return $this->replies()->create($reply);
    }

    public function scopeFilter($query, ThreadFilters $filters)
    {
        return $filters->apply($query);
    }
}