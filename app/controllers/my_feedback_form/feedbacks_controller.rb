require_dependency "my_feedback_form/application_controller"

module MyFeedbackForm
  class FeedbacksController < ApplicationController
    # GET /feedbacks/new
    # GET /feedbacks/new.json
    def new
      @feedback = Feedback.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @feedback }
      end
    end
  
    # POST /feedbacks
    # POST /feedbacks.json
    def create
      @feedback = Feedback.new(params[:feedback])
  
      respond_to do |format|
        if @feedback.save
          format.html { redirect_to @feedback, notice: 'Feedback was successfully created.' }
          format.json { render json: @feedback, status: :created, location: @feedback }
        else
          format.html { render action: "new" }
          format.json { render json: @feedback.errors, status: :unprocessable_entity }
        end
      end
    end

  end
end
