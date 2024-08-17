<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class PhotoController extends Controller
{
    public function create(){
        return view('backend.pages.gallery.photo.create');
    }


    public function store(Request $request){

        // dd($request->all());

        //Validation

        $this->validate($request, [
            'title' => 'required|string|max:25',
            'photo_description' => 'nullable|string|max:255',
            'photo' => 'required|image|mimes:png,jpg,jpeg,gif,svg|max:10000',
        ]);


        //Image Processing

        if($request->hasFile('photo')){
            $image = $request->file('photo');
            $fileNameToStore = 'photo'. md5(uniqid()).time().'.'. $image->getClientOriginalExtension();
            $image->move(public_path('assets/gallery/photos')  ,$fileNameToStore );
        }


        // Insert to Photo Table

        DB::table('photos')->insert([

            'title' => $request->title,
            'photo_description' => $request->photo_description,
            'photo' => 'assets/gallery/photos/'.$fileNameToStore,
            'album_id' => $request->album_id,

        ]);

        return redirect()->back()->with('success', 'Photo Uploaded Successfully');
    }


     public function destroy($id){

        $photo = DB::table('photos')->where('id', $id)->first();

        $removedFile = unlink(public_path($photo->photo));

        if($removedFile){
            DB::table('photos')->where('id', $id)->delete();

            return redirect()->back()->with('success', 'Photo Deleted Successfully');
           
        }

        return redirect()->back();
    }
}
