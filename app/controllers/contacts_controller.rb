class ContactsController < ApplicationController
  load_and_authorize_resource

  def show
  	@contact = Contact.first;
  end

  def edit
  	@contact = Contact.first;
  end

  def update
  	@contact = Contact.first;

  	if @contact.update_attributes(contact_params)
  		flash[:succes] = 'De contactinformatie is aangepast.'
  		redirect_to action: "show"
  	else
  		flash[:danger] = 'Er is iets fout gegaan gedurende het opslaan.'
  		render 'edit'
  	end
  end

  def contact_params
    params.require(:contact).permit(:content)
  end
end
