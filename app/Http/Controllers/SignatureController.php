<?php

namespace App\Http\Controllers;

use App\Model\DrugDose;
use Illuminate\Http\Request;

class SignatureController extends Controller
{
    public function create()
    {
        return view('user.doctor.setting.singanture.singnature');
    }

    public function store(Request $request)
    {
        $signature = $request->file('signature')
            ->move('uploads/signature', 'signature' . '.' . $request->signature->extension());
        if ($signature) {
            return redirect('signature');
        }
    }
}
