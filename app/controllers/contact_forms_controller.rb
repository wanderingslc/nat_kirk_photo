class ContactFormsController < ApplicationController
  def new
    @contact = ContactForm.new
  end

  def create 
    @contact = ContactForm.new(contact_params)
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = "Thanks for your message, I'll be in touch with you soon."
    else
      flash.now[:error] = "Cannot send message"
      render :new
    end
  end

  private 

  def contact_params
    params.require(:name, :email, :message, :nickname)
  end

end