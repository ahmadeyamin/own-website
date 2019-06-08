<?php

namespace App;

use TCG\Voyager\Facades\Voyager;
use Illuminate\Database\Eloquent\Model;

class Portfolio extends Model
{
    public function save(array $options = [])
    {
        if (!$this->author_id && app('VoyagerAuth')->user()) {
            $this->author_id = app('VoyagerAuth')->user()->getKey();
        }

        parent::save();
    }

    public function authorId()
    {
        return $this->belongsTo(Voyager::modelClass('User'), 'author_id', 'id');
    }

    


}
