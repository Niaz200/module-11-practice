@extends('backend.layouts.master')

@section('title')

    Add Photo

@endsection

@section('content')

<div class="page-content">
    <div class="container-fluid">
        <!-- start page title -->
        <div class="row">


            @if (session('success'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <i class="mdi mdi-check-all me-2"></i>

                    {{ session('success')}}

                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="close">

                    </button>
                </div>
            
            @endif

            <div class="col-lg-12">

                <div class="card">

                        <div class="card-header align-items-center d-flex">
                            <h4 class="card-title mb-0 flex-grow-1">Add Photo</h4>
                            <a href="{{ route('admin.album.show', request('album_id'))}}" class="btn btn-primary">Back</a>
                           {{-- <a href="{{ route('admin.album.show', request()->query('album_id'))}}" class="btn btn-primary">Back</a> --}}


                        </div>

                        <div class="card-body">
                            <div class="live-preview">
                                <div class="row align-items-center g-3">
                                    <div class="col-lg-4">
                                        <div>
                                            <form action="{{ route('admin.photo.store')}}" enctype="multipart/form-data" method="POST">

                                                @csrf

                                                <input class="form-control" type="hidden" name="album_id" value="{{ request('album_id')}}"> 
                                             {{--   <input class="form-control" type="hidden" name="album_id" value="{{ request()->query('album_id')}}"> --}}

                                                <label for="formFileMultiple" class="form-label">
                                                    <strong> Title </strong>
                                                </label>
                                                <input class="form-control" type="text"  name="title" value="{{ old('title')}}">

                                                @error('title')
                                                    <p class="text-danger">{{$message}}</p>
                                                @enderror

                                                <label for="formFileMultiple" class="form-label">
                                                    <strong> Photo Description </strong>
                                                </label>
                                                <input class="form-control" type="text"  name="photo_description" value="{{ old('Photo_description')}}">

                                                @error('Photo_description')
                                                    <p class="text-danger">{{$message}}</p>
                                                @enderror

                                                <label for="formFileMultiple" class="form-label">
                                                    <strong> Photo </strong>
                                                </label>
                                                
                                                <input class="form-control" type="file"  name="photo" value="">

                                                @error('photo')
                                                    <p class="text-danger">{{$message}}</p>
                                                @enderror

                                                <button class="btn btn-primary mt-3">Create</button>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>

                      
                    
                        </div><!-- end card body -->

                </div>
            </div>
            
        </div>
        <!-- end page title -->




    </div>
    <!-- container-fluid -->
</div>
<!-- End Page-content -->



@endsection