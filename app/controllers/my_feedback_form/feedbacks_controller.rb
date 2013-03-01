module MyFeedbackForm
  class FeedbacksController < ApplicationController
    # GET /feedbacks/new
    # GET /feedbacks/new.json
    def new
      @feedback = MyFeedbackForm::Feedback.new
      render "new", layout: false
    end
  
    # POST /feedbacks
    # POST /feedbacks.json
    def create
      unless current_user.nil?
        params[:feedback][:user_id] = current_user.id
      end
        
      @feedback = MyFeedbackForm::Feedback.new(params[:feedback])
  
      respond_to do |format|
        if @feedback.save
          format.html { redirect_to :nothing => true, :status => 201 }
          format.json { render json: @feedback, status: :created, location: @feedback }
        else
          format.html { render action: "new" }
          format.json { render json: @feedback.errors, status: :unprocessable_entity }
        end
      end
    end

  end
end
