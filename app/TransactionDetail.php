<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class TransactionDetail extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'transactions_id', 'username', 'nationality',
        'is_visa', 'does_passport'
    ];


    protected  $hidden = [];


    public function trasaction()
    {
        return $this->belongsTo(Transaction::class, 'trasactions_id', 'id');
    }
}
