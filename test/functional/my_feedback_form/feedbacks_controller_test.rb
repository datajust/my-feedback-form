require 'test_helper'

module MyFeedbackForm
  class FeedbacksControllerTest < ActionController::TestCase
    setup do
      @feedback = feedbacks(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:feedbacks)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create feedback" do
      assert_difference('Feedback.count') do
        post :create, feedback: { message: @feedback.message, title: @feedback.title, type: @feedback.type, user_id: @feedback.user_id }
      end
  
      assert_redirected_to feedback_path(assigns(:feedback))
    end
  
    test "should show feedback" do
      get :show, id: @feedback
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @feedback
      assert_response :success
    end
  
    test "should update feedback" do
      put :update, id: @feedback, feedback: { message: @feedback.message, title: @feedback.title, type: @feedback.type, user_id: @feedback.user_id }
      assert_redirected_to feedback_path(assigns(:feedback))
    end
  
    test "should destroy feedback" do
      assert_difference('Feedback.count', -1) do
        delete :destroy, id: @feedback
      end
  
      assert_redirected_to feedbacks_path
    end
  end
end
