<?php

namespace App\Http\Controllers;

use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DemoController extends Controller
{
    function Demo1(){

        //Retrieving All Rows

        // $data = DB::table('categories')->get();

        //Retrieving single Rows
        // $data = DB::table('categories')->first();

        // $data = DB::table('categories')->find(3);

        //one column data, Retrieving List of column Vlues
        // $data = DB::table('categories')->pluck('categoryName');

        //two column data
        // $data = DB::table('categories')->pluck('categoryName', 'id');

        //Aggregation

        //count all row
        // $data = DB::table('products')->count();

        //maximum value
        // $data = DB::table('products')->max('price');

        //minimum values
        // $data = DB::table('products')->min('price');

        //sum price column
        // $data = DB::table('products')->sum('price');

        //avarage
        // $data = DB::table('products')->avg('price');

        //select clause
        // $data = DB::table('products')->select('title','price')->get();

        //unique value
        // $data = DB::table('products')->select('title')->distinct()->get();


        //Inner Join

        /*
        $data = DB::table('products')
            ->join('categories','products.category_id', '=', 'categories.id')
            ->get();

         */   

         /*

        $data = DB::table('products')
            ->join('categories','products.category_id', '=', 'categories.id')
            ->join('brands','products.brand_id', '=', 'brands.id')
            ->get();

         */
        
         //left join
         /*

         $data = DB::table('products')
            ->leftJoin('categories','products.category_id', '=', 'categories.id')
            ->leftJoin('brands','products.brand_id', '=', 'brands.id')
            ->get();

        */

        //right join

        /*

        $data = DB::table('products')
            ->rightJoin('categories','products.category_id', '=', 'categories.id')
            ->rightJoin('brands','products.brand_id', '=', 'brands.id')
            ->get();

        */


        // cross join 

        /*
        $data = DB::table('products')
        ->crossJoin('brands')
        ->get();

        */

        //union

        /*

        $q1= DB::table('products')->where('price', '>', 2000);

        $q2= DB::table('products')->where('price', '=', 120)->union($q1)->get();
        
        
        */

        //pagination

        // $data = DB::table('users')->paginate(3);


        // Skip & Take

        /*

        $data = DB::table('users')
            ->skip(6)
            ->take(2)
            ->get();

        */


        // Latest & Olders

        //Latest

        /*

        $data = DB::table('users')
        ->latest()
        ->get();

        */

        //Oldest


        /*
        $data = DB::table('users')
        ->oldest()
        ->get();

        */

        //Order By
        //decending wise

        /*
        $data = DB::table('users')
        ->orderBy('id', 'desc')
        ->get();

        */


        //accending wise

        /*
        $data = DB::table('users')
        ->orderBy('id', 'asc')
        ->get();

        */

        //In Random

        /*

        $data = DB::table('users')
        ->inRandomOrder()
        ->first();

        */

        // Limiting

        // $data = DB::table('users')->limit(5)->get();


        // Basic Where Clause

        // $data = DB::table('products')->where('price', '>', 3000)->get();

        //Search
        // $data = DB::table('products')->where('title', 'LIKE', "%New%")->get();
        // $data = DB::table('products')->where('title', 'LIKE', "%Car%")->get();
        // $data = DB::table('products')->where('title', 'NOT LIKE', "%Car%")->get();


        //Advance Where Clause
        

        /*

        $data = DB::table('products')
            ->where('price', '>', 3000)
            ->orWhere('title', 'LIKE', "%Car%")
            ->get();

        */


        /*
        $data = DB::table('products')
            ->whereIn('price', [5000,120])
            ->get();

        */ 

        //where date

        // $data = DB::table('products')
        // ->whereDate('created_at', '2023-02-19')
        // ->get();


        //where day

        //where date

        /*

        $data = DB::table('products')
            ->whereDay('created_at', '19')
            ->get();


        */


        //where month

        

        // $data = DB::table('products')
        //     ->whereMonth('created_at', '2')
        //     ->get();

       

        //delete

        /*

        $data = DB::table('categories')->where('id', '=', 3)->delete();

        return $data;


        */

        try{

            $data = DB::table('categories')->where('id', '=', 3)->delete();

            return $data;
        }

        catch (Exception $exception){

            $ex=$exception->getMessage();
            return $ex;
        }



    }
}
