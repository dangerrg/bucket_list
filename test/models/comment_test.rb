# frozen_string_literal: true

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test 'changing the associated Idea for a Comment' do
    idea = Idea.new title: 'Learn digicupunture'
    idea.save!

    comment = Comment.new body: "I'd like to do this!", idea: idea
    comment.save!

    idea_2 = Idea.new title: 'Learn advance math'
    idea_2.save!

    comment.idea = idea_2
    comment.save!

    assert_equal idea_2, Comment.first.idea
  end

  test 'cascading save' do
    idea = Idea.new title: 'Exiciting idea'
    idea.save!

    comment = Comment.new body: 'Great idea!'
    idea.comments << comment
    idea.save!

    assert_equal comment, Comment.first
  end
end
