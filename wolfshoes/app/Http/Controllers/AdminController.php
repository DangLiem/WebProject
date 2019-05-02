<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use App\User;
use App\Products;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{
    public function login(Request $request)
    {
        if($request->isMethod('post'))
        {
            $data = $request->input();
            if(Auth::attempt(['email'=>$data['email'], 'password'=>$data['password'], 'admin'=>'1']))
            {
                // Protect route use Session
//                Session::put('adminSession', $data['email']);
                return redirect('/admin/dashboard');
            }
            else
            {
                return redirect('/admin')->with('flash_message_error', 'Invalid Username or Password');
            }
        }
        return view('admin.admin_login');
    }
    public function dashboard()
    {
        // Protect route use Session
//        if(Session::has('adminSession'))
//        {
//            return view('admin.dashboard');
//        }
//        else
//        {
//            return redirect('/admin')->with('flash_message_error', 'Please login to access');
//        }
        return view('admin.dashboard');

    }
    public function logout()
    {
        Session::flush();
        return redirect('/admin')->with('flash_message_success', 'Logged out Successfully');
    }
    public function settings()
    {
        return view('admin.settings');
    }

    public function checkPassword(Request $request)
    {
        $data = $request->all();
        $current_password = $data['current_pwd'];
        $check_password = User::where(['admin'=>'1'])->first();
        if(Hash::check($current_password, $check_password->password))
        {
            echo "true"; die;
        }
        else
        {
            echo "false"; die;
        }
    }
    public function updatePassword(Request $request)
    {
        if($request->isMethod('post'))
        {
            $data = $request->all();
            $check_password = User::where(['email' => Auth::user()->email])->first();
            $current_password = $data['current_pwd'];
            if(Hash::check($current_password, $check_password->password))
            {
                $password = bcrypt($data['new_pwd']);
                User::where('id', '1')->update(['password'=>$password]);
                return redirect('/admin/settings')->with('flash_message_success', 'Password update Successfully!');
            }
            else
            {
                return redirect('/admin/settings')->with('flash_message_error', 'Incorrect Current Password!');
            }
        }
    }
    public function upload()
    {
        return view('admin.upload');
    }
    public function uploadProduct(Request $request)
    {
        if($request->isMethod('POST'))
        {
            $data = $request->all();

            $product = new Products;
            $product->productName = $data['pName'];
            $product->productDescription = $data['pDesc'];
            $product->productLineID = $data['pLine'];
            $product->productImg1 = $request->file('pIMG1')->getClientOriginalName();
            $product->productImg2 = $request->file('pIMG2')->getClientOriginalName();
            $product->productImg3 = $request->file('pIMG3')->getClientOriginalName();
            $product->productPrice = $data['pPrice'];
            $product->save();

            $request->file('pIMG1')->move(public_path('images/frontend_image/products'), $request->file('pIMG1')->getClientOriginalName());
            $request->file('pIMG2')->move(public_path('images/frontend_image/products'), $request->file('pIMG2')->getClientOriginalName());
            $request->file('pIMG3')->move(public_path('images/frontend_image/products'), $request->file('pIMG3')->getClientOriginalName());
            return redirect('/admin/upload')->with('flash_message_success', 'Product Upload Successfully!');

        }

    }
    public function list()
    {
        $products = Products::paginate(50);
        return view('admin.list', compact('products'));
    }
    

}
