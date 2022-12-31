<?php

namespace App\Http\Livewire\Admin;

use App\Models\HomeSlider;
use Livewire\Component;
use Livewire\WithPagination;

class AdminHomeSliderComponent extends Component
{
    public $slide_id;

    use WithPagination;

    public function deleteSlide()
    {
        $slide = HomeSlider::find($this->slide_id);
        unlink('assets/imgs/slider/'.$slide->image);
        $slide->delete();
        session()->flash('message','Slide has been deleted successfully!');
    }


    public function render()
    {
        $slides = HomeSlider::orderBy('created_at', 'DESC')->paginate(10);
        return view('livewire.admin.admin-home-slider-component', ['slides'=>$slides]);
    }
}
