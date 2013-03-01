# MyFeedbackForm v 0.0.2

# Installation

## Specify Gem dependencies

```ruby
gem 'my-feedback-form'
```

Then run bundle

## Hooking into an application
Mount the routes in the rails app routes.rb file.

```ruby
mount MyFeedbackForm::Engine => "/my_feedback_form"
```

Add in the head of your rails app layout the link to gem javascript and stylesheets.

```erb
<%= stylesheet_link_tag    "my_feedback_form/application", :media => "all" %>
<%= javascript_include_tag "my_feedback_form/application" %>
```

Also add in your layout the feedback modal. You may want to add a condition to insert this modal on your page. If you use devise you can use the same condition.

```erb
<% if user_signed_in? %>
  <%= render 'my_feedback_form/feedbacks/new' %>
<% end %>
```

Add a button where you want to access the feedback modal. The button must be like the folowing.

```html
<button type="button" id="feedback-button" data-toggle="modal" data-target="#my-feedback-form-modal">Feedback</button>
```

Setup the app database.

```ruby
rake railties:install:migrations

rake db:migrate

rake setup_feedback_type
```

## View Customisation

If you want to customise My Feedback Form views, you can copy over the views using the (Devise-inspired) generator.

```ruby
rails g my_feedback_form:views
```

## User Authentication

If you are using Devise to authenticate users, it will be saved automatically, otherwise you must extend feedbacks controller.

#Next Steps
The next steps for this gem will be add validations to the feedback modell and create a task to easier install.


