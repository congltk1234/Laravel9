<main class="main">
    <div class="page-header breadcrumb-wrap">
        <div class="container">
            <div class="breadcrumb">
                <a href="index.html" rel="nofollow">Home</a>                    
                <span></span> Contact us
            </div>
        </div>
    </div>                
    <section class="pt-50 pb-50">
        <div class="container">
            <div class="row">
                <div class="col-xl-8 col-lg-10 m-auto">
                    <div class="contact-from-area padding-20-row-col wow FadeInUp">
                        <h3 class="mb-10 text-center">Drop Us a Line</h3>
                        @if (session('message'))
                        <div class='alert alert-success'>{{session('message')}}</div>
                            
                        @endif
                        <p class="text-muted mb-30 text-center font-sm">Lorem ipsum dolor sit amet consectetur.</p>
                        {{-- <form class="contact-form-style text-center" id="contact-form" action="#" method="post"> --}}
                        {{-- <form action="{{url('contact')}}" method="POST" enctype="multipart/form-data">
                                @csrf --}}
                           <form wire:submit.prevent="storeContact">
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                                    <div class="input-style mb-20">
                                        <input name="first_name" class="form-control" placeholder="First Name" wire:model="first_name" type="text">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="input-style mb-20">
                                        <input name="email" class="form-control" placeholder="Your Email" wire:model="email" type="text">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="input-style mb-20">
                                        <input name="phone" class="form-control" placeholder="Your Phone" wire:model="phone" type="text">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="input-style mb-20">
                                        <input name="subject" class="form-control" placeholder="Subject" wire:model="subject" type="text">
                                    </div>
                                </div>

                                <div class="col-lg-12 col-md-12">
                                    <div class="textarea-style mb-30">
                                        <input name="message" class="form-control" placeholder="Subject" wire:model="message" type="text">
                                        @error('message')
                                        <p class="text-danger">{{$message}}</p>
                                    @enderror
                                    </div>

                                    <div class="mb-3 mt-3">
                                        <label class="form-label">Do you want to keep contact with us?</label>
                                        <select class="form-select" wire:model="follow">
                                            <option value="1">Yes</option>
                                            <option value="0">No</option>
                                        </select>
                                    
                                </div>
                                <button class="submit submit-auto-width" type="submit">Send message</button>

                            </div>
                        </form>
                        <p class="form-messege"></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>