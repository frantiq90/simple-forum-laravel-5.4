<?php

namespace App;

trait Favoritable
{
	protected static function bootFavoritable()
	{
			static::deleting(function ($model) {
				$model->favorites->each->delete();
			});
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

    public function unfavorite()
    {
        $arttibutes = ['user_id' => auth()->id()];

				$this->favorites()->where($arttibutes)->get()->each->delete();
        // $this->favorites()->where($arttibutes)->get()->each(function ($favorite) {
				// 	$favorite->delete();
				// });
    }

    public function isFavorited()
    {
        return !! $this->favorites->where('user_id', auth()->id())->count();
    }

    public function getFavoritesCountAttribute()
    {
        return $this->favorites->count();
    }

    public function getIsFavoritedAttribute()
    {
        return $this->isFavorited();
    }
}
