module MyFeedbackForm
  class Feedback
      include Mongoid::Document

      field :user_id, String
      field :kind, String
      field :message, String
      field :email, String
#    attr_accessible :message, :kind, :user_id

    validates_presence_of :email, :message, :kind, :on => :create
  end
end
