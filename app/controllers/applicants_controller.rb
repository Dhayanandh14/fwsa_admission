class ApplicantsController < ApplicationController
  def index

  end
  def show
    @candidate = Applicant.find_by(email:params[:email])
    puts '+++++++++++++++++++++++++++#{@candidate} ++++++++++++++++++++++++'
    render :index
  end
end
