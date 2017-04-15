<?php

namespace App;

trait Favoritable
{
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
        return !! $this->favorites->where('user_id', auth()->id())->count();
    }

    public function getFavoritesCountAttribute()
    {
        return $this->favorites->count();
    }
}