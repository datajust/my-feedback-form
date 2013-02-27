class CreateMyFeedbackFormFeedbackTypes < ActiveRecord::Migration
  def change
    create_table :my_feedback_form_feedback_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
