module MyFeedbackForm
  class Engine < ::Rails::Engine
    isolate_namespace MyFeedbackForm

    rake_tasks do
      load "tasks/setup.rake"
    end
  end
end
