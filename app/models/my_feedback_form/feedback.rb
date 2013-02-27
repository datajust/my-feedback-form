module MyFeedbackForm
  class Feedback < ActiveRecord::Base
    attr_accessible :message, :title, :type, :user_id
  end
end
