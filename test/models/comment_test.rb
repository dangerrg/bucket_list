# frozen_string_literal: true

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test 'changing the associated Idea for a Comment' do
    idea = Idea.new title: 'Learn digicupunture', user: User.new
    idea.save!

    comment = Comment.new body: "I'd like to do this!", idea: idea, user: User.new
    comment.save!

    idea_2 = Idea.new title: 'Learn advance math', user: User.new
    idea_2.save!

    comment.idea = idea_2
    comment.save!

    assert_equal idea_2, Comment.first.idea
  end

  test 'cascading save' do
    idea = Idea.new title: 'Exiciting idea', user: User.new
    idea.save!

    comment = Comment.new body: 'Great idea!', user: User.new
    idea.comments << comment
    idea.save!

    assert_equal comment, Comment.first
  end

  test 'Comments are ordered correctly' do
    idea = Idea.new title: 'Awesome idea', user: User.new
    idea.save!

    comment = Comment.new body: "I'd like to do this!", user: User.new
    another_comment = Comment.new body: "I agree! I'd like to do this as well", user: User.new

    idea.comments << comment
    idea.comments << another_comment
    idea.save!

    assert_equal idea.comments.first, comment
    assert_equal 2, idea.comments.length
  end
end
