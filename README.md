# MyFeedbackForm v 0.0.2

# Installation

## Specify Gem dependencies

```ruby
gem 'my-feedback-form'
```

Then run bundle


## Hooking into an application
Mount the routes in the rails app routes.rb file

```ruby
mount MyFeedbackForm::Engine => "/my_feedback_form"
```

Setup the app database

```ruby
rake railties:install:migrations

rake db:migrate

rake setup_feedback_type
```

## View Customisation

If you want to customise My Feedback Form views, you can copy over the views using the (Devise-inspired) generator

```ruby
rails g my_feedback_form:views
```