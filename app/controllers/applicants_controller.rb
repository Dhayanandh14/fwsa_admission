class ApplicantsController < ApplicationController
  def index

  end
  def show
    @candidates = Applicant.where(email:params[:email])
    render :index
  end
end
