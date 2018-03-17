class AssociationsController < ApplicationController
  load_and_authorize_resource

  def show
  	@association = Association.first;
  end

  def edit
  	@association = Association.first;
  end

  def update
  	@association = Association.first;

  	if @association.update_attributes(association_params)
  		flash[:succes] = 'De vereniging informatie is aangepast.'
  		redirect_to action: "show"
  	else
  		flash[:danger] = 'Er is iets fout gegaan gedurende het opslaan.'
  		render 'edit'
  	end
  end

  def commissions
    @commissions = Commission.all;
    render 'commissions'
  end

  def association_params
    params.require(:association).permit(:content)
  end
end
