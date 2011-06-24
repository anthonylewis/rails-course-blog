require 'test_helper'

class AddCommentTest < ActionDispatch::IntegrationTest
  fixtures :all

  setup do
    @post = posts(:one)
  end

  # Replace this with your real tests.
  test "the truth" do
    assert true
  end

  test "add comment to post" do
    get "/posts/#{@post.id}"
    assert_response :success

    post_via_redirect "/posts/#{@post.id}/comments", 
      :author => "Tony", :body => "Test comment"

    assert_response :success
    assert_equal "/posts/#{@post.id}", path
  end
end


