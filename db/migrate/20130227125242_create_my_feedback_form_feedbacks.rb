class CreateMyFeedbackFormFeedbacks < ActiveRecord::Migration
  def change
    create_table :my_feedback_form_feedbacks do |t|
      t.integer :user_id
      t.integer :type
      t.string :title
      t.string :message

      t.timestamps
    end
  end
end
