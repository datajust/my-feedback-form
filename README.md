# MyFeedbackForm

# Installation

## Specify Gem dependencies

```ruby
gem 'my-feedback-form', :github => "git://github.com/guigonc/my-feedback-form.git"
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

# License

This project rocks and uses MIT-LICENSE.