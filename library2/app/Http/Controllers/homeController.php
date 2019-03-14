<?php

namespace App\Http\Controllers;
use App\Product;
use App\ProductType;

use Illuminate\Http\Request;

class homeController extends Controller
{
    //
    public function getHome()
	{
		$pr= Product::where('quantity','<>',0)->paginate(11);
		return view('home', compact('pr'));	
	}

	public function getProductType($type)
	{
		$product_type= Product::where('id_type', $type)->paginate(11);
		return view('product_type', compact('product_type'));
	}

	public function postSignin(Request $required)
	{
		this->validate(
		[
			'admin-acc'=>'required',
			'admin-pass'=>'required|min:6|max:20',
			're-admin-pass'=>'required|same:admin-pass',
			'address'=>'required',
			'phone-number'=>'required|min:10|max:10'
		],
		[
			'admin-acc.required'=>'Vui lòng nhập tên tài khoản.',
			'admin-pass.required'=>'Vui lòng nhập đúng định dạng mật khẩu (min: 6, max: 20).',
			're-admin-pass.required'=>'Hai mật khẩu chưa khớp nhau.',
			'phone-number.required'=>'Vui lòng nhập số điện thoại.'
		]);
	}
}
