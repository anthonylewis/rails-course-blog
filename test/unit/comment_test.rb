require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end

  test "author is required" do
    comment = Comment.new :body => "Hello, World!"
    assert !comment.valid?
  end

  test "body is required" do
    comment = Comment.new :author => "Tony"
    assert !comment.valid?
  end
end

