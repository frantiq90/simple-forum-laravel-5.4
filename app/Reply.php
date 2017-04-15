<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Favorite;

class Reply extends Model
{
	protected $guarded = [];
	
    public function owner()
    {
    	return $this->belongsTo(User::class, 'user_id');
    }

    public function favorites()
    {
    	return $this->morphMany(Favorite::class, 'favorited');
    }

    public function favorite()
    {
    	$arttibutes = ['user_id' => auth()->id()];

    	if (! $this->favorites()->where($arttibutes)->exists()) {
    		return $this->favorites()->create($arttibutes);
    	}
    }

    public function isFavorited()
    {
        return $this->favorites()->where('user_id', auth()->id())->exists();
    }
}
