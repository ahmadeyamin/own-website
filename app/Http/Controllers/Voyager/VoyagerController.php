<?php

namespace App\Http\Controllers\Voyager;

use TCG\Voyager\Http\Controllers\VoyagerController as BaseVoyagerController;

class VoyagerController extends BaseVoyagerController
{
    public function logout()
    {
        app('VoyagerAuth')->logout();

        return redirect()->to('/');
    }

}
