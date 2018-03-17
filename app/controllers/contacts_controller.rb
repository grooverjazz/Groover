class ContactsController < ApplicationController
  load_and_authorize_resource

  def show
    @contact = Contact.first
  end
  def edit
    @contact = Contact.all
  end

  def update
    @contact = Contact.all
  end
end
