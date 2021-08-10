class ApplicantsController < ApplicationController
  def index

  end
  def show
    email=params[:email].downcase
    @candidates = Applicant.where(email: email)
    render :index
  end
end
