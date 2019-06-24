# frozen_string_literal: true

require 'application_system_test_case'

class IdeasTest < ApplicationSystemTestCase
  test 'create new idea' do
    user = User.new email: 'test@epfl.ch'
    user.save!

    visit(new_user_path)
    fill_in('Email', with: user.email)
    click_on('Log in')

    visit(new_idea_path)
    fill_in('Title', with: 'Skydiving in Interlaken')
    fill_in('Done count', with: 65)
    fill_in('Photo url', with: 'http://monkeychute.co/wp-content/uploads/2018/01/skydive-interlaken.jpg')
    click_on('Create Idea')
    assert page.has_content?('Skydiving in Interlaken')
  end

  test 'that Ideas are loaded in the index' do
    first_idea = Idea.new title: 'Cycle across Australia',
                          user: User.new
    first_idea.save!

    second_idea = Idea.new title: 'See a giraffe in the wild',
                           user: User.new
    second_idea.save!

    visit(ideas_path)
    assert page.has_content?('Cycle across Australia')
    assert page.has_content?('See a giraffe in the wild')
  end

  test 'Test for editing ideas' do
    new_idea = Idea.new title: 'Unedited new idea', user: User.new
    new_idea.save!
    visit(edit_idea_path(new_idea))
    fill_in('Done count', with: 10)
    fill_in('Title', with: 'Build an amazing web app')
    click_on('Update Idea')
    click_on('Build an amazing web app')

    assert page.has_content?('Build an amazing web app')
    assert page.has_content?('10 have done this')
  end

  test 'search' do
    idea_1 = Idea.new title: 'Climb Mont Blanc', user: User.new
    idea_1.save!

    idea_1 = Idea.new title: 'Visit Niagara Falls', user: User.new
    idea_1.save!

    visit(root_path)
    fill_in('q',	with: 'Mont')
    click_on('Search', match: :first)

    assert current_path.include?(ideas_path)
    assert page.has_content?('Climb Mont Blanc')
    refute page.has_content?('Visit Niagara Falls')
  end

  test 'No search results' do
    visit(ideas_path)
    assert page.has_content?('No ideas found')
  end

  test 'homepage highlights' do
    4.times do |i|
      idea = Idea.new title: "Title Idea #{i + 1}", user: User.new
      idea.save!
    end
    visit(root_path)

    assert page.has_content?('Title Idea 4')
    assert page.has_content?('Title Idea 3')
    assert page.has_content?('Title Idea 2')
    refute page.has_content?('Title Idea 1')
  end

  test 'when searching by title and description' do
    idea_1 = Idea.new title: 'Go cycling across Europe',
                      description: 'An amazing way to see lots of Europe',
                      user: User.new
    idea_1.save!
    idea_2 = Idea.new title: 'Visit Provence',
                      description: 'Go to vineyards, go cycling up Mont Ventoux, see the fields of lavender',
                      user: User.new
    idea_2.save!
    idea_3 = Idea.new title: 'Overnight hike in Switzerland',
                      description: 'Stay in a Swiss refuge in the mountains',
                      user: User.new
    idea_3.save!

    visit(root_path)

    fill_in('q', with: 'cycling')
    click_on('Search', match: :first)

    assert page.has_content?('Go cycling across Europe')
    assert page.has_content?('Visit Provence')
    refute page.has_content?('Overnight hike in Switzerland')
  end

  test 'new idea with no title' do
    user = User.new email: 'test@epfl.ch'
    user.save!

    visit(new_user_path)
    fill_in('Email', with: user.email)
    click_on('Log in')

    visit(new_idea_path)
    fill_in('Done count', with: 32)
    click_on('Create Idea')
    assert page.has_content?("Title can't be blank")
  end

  test 'exciting idea update with no title' do
    idea = Idea.new title: 'Exciting idea!', user: User.new
    idea.save!
    visit(edit_idea_path(idea))
    fill_in('Title', with: '')
    click_on('Update Idea')
    assert page.has_content?("Title can't be blank")
  end
end
