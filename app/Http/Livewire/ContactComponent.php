<?php

namespace App\Http\Livewire;

use App\Models\Contact;
use Livewire\Component;

class ContactComponent extends Component
{

    public $first_name;
    public $email;
    public $phone;
    public $subject;
    public $message;
    public $follow;

    public function storeContact()
    {
        $this->validate([
            'first_name' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'subject' => 'required',
            'message' => 'required',
        ]);

        $contact = new Contact();
        $contact->first_name = $this->first_name;
        $contact->email = $this->email;
        $contact->phone = $this->phone;
        $contact->subject = $this->subject;
        $contact->message = $this->message;
        $contact->follow = $this->follow;

        $contact->save();
        session()->flash('message', 'Contact has been sent successfully!');

    }

    public function render()
    {
        return view('livewire.contact-component');
    }

}
