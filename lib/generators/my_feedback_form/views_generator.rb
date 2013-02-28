require 'rails/generators'
module MyFeedbackForm
  module Generators
    class ViewsGenerator < Rails::Generators::Base #:nodoc:
      source_root File.expand_path("../../../../app/views/my_feedback_form", __FILE__)
      desc "Used to copy my-feedback-form's views to your application's views."

      def copy_views
        view_directory :feedbacks
      end

      protected

      def view_directory(name)
        directory name.to_s, "app/views/my_feedback_form/#{name}"
      end
    end
  end
end
