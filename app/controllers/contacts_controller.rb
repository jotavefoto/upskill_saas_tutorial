class ContactsController < ApplicationController
    def new
        @contact = Contact.new #@instance_variable
    end
    
    def create
        @contact = Contact.new(contact_params)
        if @contact.save
            redirect_to new_contact_path, notice: "Message sent"
        else
            redirect_to new_contact_path, notice: "Error occured :("
        end
    end
    
    private #solo utilizado dentro de este scope
        def contact_params
            params.require(:contact).permit(:name, :email, :comments)
        end
end