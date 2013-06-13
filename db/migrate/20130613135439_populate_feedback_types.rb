# encoding: utf-8
class PopulateFeedbackTypes < ActiveRecord::Migration
  def change
  	MyFeedbackForm::FeedbackType.create :description => "Bug"
		MyFeedbackForm::FeedbackType.create :description => "Sugestion"
		MyFeedbackForm::FeedbackType.create :description => "Doubt"
		MyFeedbackForm::FeedbackType.create :description => "Praise"
  end
end
