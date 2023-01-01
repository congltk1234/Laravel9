<div>
    <style>
        nav svg{
            height: 20px;
        }
        nav .hidden{
            display: block;
        }
    </style>
    {{-- Close your eyes. Count to one. That is how long forever feels. --}}
    <main class="main">
        <div class="page-header breadcrumb-wrap">
            <div class="container">
                <div class="breadcrumb">
                    <a href="/" rel="nofollow">Home</a>
                    <span> Edit Category</span> 
                </div>
            </div>
        </div>
        <section class="mt-50 mb-50">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                        <div class="card-header">
                            <div class="row">
                            <div class="col-md-6"> <h4 class="text-muted">Edit Category </h4> </div>
                            <div class="col-md-6">
                                <a href="{{route('admin.categories')}}" class="btn btn-secondary float-end">All Categories</a>
                            </div>
                        </div>
                        </div>
                        
                        <div class="card-body">
                            @if (Session::has('message'))
                                <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                            @endif
                           <form wire:submit.prevent="updateCategory">
                            <div class="mb-3 mt-3">
                                <label for="name" class="form-label">Name</label>
                                <input type="text" name="name" class="form-control" placeholder="Enter category name" wire:model="name" wire:keyup="generateSlug" />
                                @error('name')
                                    <p class="text-danger">{{$message}}</p>
                                @enderror
                            </div>
                            <div class="mb-3 mt-3">
                                <label for="slug" class="form-label">Slug</label>
                                <input type="text" name="slug" class="form-control" placeholder="Enter category slug" wire:model="slug"/>
                                @error('slug')
                                <p class="text-danger">{{$message}}</p>
                            @enderror
                            </div>

                            <div class="mb-3 mt-3">
                                <label for="is_popular" class="form-label">Featured</label>
                                <select class="form-control" name="is_popular" wire:model="is_popular">
                                    <option value="0">No</option>
                                    <option value="1">Yes</option>
                                </select>
                                @error('featured')
                                <p class="text-danger">{{$message}}</p>
                            @enderror
                            </div>

                            <div class="mb-3 mt-3">
                                <label for="image" class="form-label">Category Image</label>
                                <input type="file" name="image" class="form-control" wire:model="newimage" />
                                @if ($newimage)
                                    <img src="{{$newimage->temporaryUrl()}}" width="120"/>
                                    @else
                                    {{-- {{asset('assert/imgs/products')}}/{{$image}} --}}
                                    <img src="{{asset('assets/imgs/categories')}}/{{$image}}" width="120"/>

                                @endif    
                                @error('newimage')
                                <p class="text-danger">{{$message}}</p>
                            @enderror
                            </div>

                            <button type="submit" class="btn btn-primary float-end">Submit</button>

                           </form>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
</div>