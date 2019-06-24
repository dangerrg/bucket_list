# frozen_string_literal: true

require 'application_system_test_case'

class IdeaCommentsTest < ApplicationSystemTestCase
  test 'adding a Comment to an Idea' do
    user = User.new email: 'user_email@epfl.ch'
    user.save!

    idea = Idea.new title: 'Commented idea', user: user
    idea.save

    visit(new_user_path)
    fill_in('Email', with: user.email)
    click_on('Log in')

    visit(idea_path(idea))
    fill_in('Add a comment', with: 'This idea has been commented')
    click_on('Post', match: :first)
    assert_equal idea_path(idea), page.current_path
    assert page.has_content?('This idea has been commented')
  end

  test 'comments cannot be added when not logged in' do
    idea = Idea.new title: 'Try archery', user: User.new
    idea.save!

    visit(idea_path(idea))

    refute page.has_content?('Add a Comment')
  end
end
