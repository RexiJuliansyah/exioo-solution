<?php

namespace App\Http\Controllers;

use App\Models\Transaction;
use Illuminate\Support\Facades\Auth;
use App\Models\Transport;
use App\Models\Driver;
use App\Models\Kondektur;
use Illuminate\Support\Carbon;
use Carbon\CarbonPeriod;
use stdClass;
use Illuminate\Http\Request;

use DataTables;

class HomeController extends BaseController
{
    public function __construct()
    {
        parent::__construct();
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {

        $data['title'] = 'Dashboard';
        return view('dashboard.admin.index');
       
    }
}
