<?php

namespace App\Admin\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class StockType extends Model
{
    use SoftDeletes;

    protected $table = 'sz_stock_type';

    #protected $primaryKey = 'parent_id';

}
