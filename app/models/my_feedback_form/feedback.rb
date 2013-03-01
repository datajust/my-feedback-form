module MyFeedbackForm
  class Feedback < ActiveRecord::Base
    attr_accessible :message, :title, :type, :user_id

    validates_presence_of :message, :title, :type, :on => :create
  end
end
