# MyFeedbackForm v 0.0.7

The gem does not have a server side interface, it has only the client side, unfortunatly you need to implement a way to see the feedbacks you received

# Installation

## Specify Gem dependencies

```ruby
gem 'my-feedback-form', github: 'datajust/my-feedback-form'
```

Then run bundle

## Hooking into an application
Mount the routes in the rails app routes.rb file.

```ruby
mount MyFeedbackForm::Engine => "/my_feedback_form"
```

In the head of your rails app layout, after importing the application javascript and stylesheet add the link to gem javascript and stylesheet.

```erb
<%= stylesheet_link_tag    "my_feedback_form/application", :media => "all" %>
<%= javascript_include_tag "my_feedback_form/application" %>
```

Also add in your layout the feedback modal. You may want to add a condition to insert this modal on your page. If you use devise you can use the same condition.

```erb
<% if user_signed_in? %>
  <%= render 'my_feedback_form/feedbacks/modal' %>
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
```

## View Customisation

If you want to customise My Feedback Form views, you can copy over the views using the (Devise-inspired) generator.

```ruby
rails g my_feedback_form:views
```

## User Authentication

If you are using Devise to authenticate users, it will be saved automatically, otherwise you must extend feedbacks controller.

#Next Steps
The next steps for this gem will be create a task to easier install.


