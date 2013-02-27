Rails.application.routes.draw do

  mount MyFeedbackForm::Engine => "/my-feedback-form"
end
