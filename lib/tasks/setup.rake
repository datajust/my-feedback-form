desc "Setup default data for feedback type"
task :setup_feedback_type => :environment do
	if MyFeedbackForm::FeedbackType.all().empty?
		MyFeedbackForm::FeedbackType.create(description:"Bug")
		MyFeedbackForm::FeedbackType.create(description:"Sugestion")
		MyFeedbackForm::FeedbackType.create(description:"Doubt")
		MyFeedbackForm::FeedbackType.create(description:"Praise")
	end	
end
	

