module MyFeedbackForm
  class Feedback
      include Mongoid::Document
      include Mongoid::Timestamps

      field :user_id, type: String
      field :kind, type: String
      field :message, type: String
      field :email, type: String
      field :url, type: String
      field :user_agent, type: String
    # attr_accessible :message, :kind, :user_id, :email, :user_agent, :url

  end
end
