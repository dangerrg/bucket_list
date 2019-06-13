# frozen_string_literal: true

require 'application_system_test_case'

class IdeasTest < ApplicationSystemTestCase
  test 'create new idea' do
    visit(ideas_new_path)
    fill_in('title', with: 'Skydiving in Interlaken')
    fill_in('done_count', with: 65)
    fill_in('photo_url', with: 'http://monkeychute.co/wp-content/uploads/2018/01/skydive-interlaken.jpg')
    click_on('Create idea')
    assert page.has_content?('Skydiving in Interlaken')
  end

  test 'that Ideas are loaded in the index' do
    first_idea = Idea.new
    first_idea.title = 'Cycle across Australia'
    first_idea.save!

    second_idea = Idea.new
    second_idea.title = 'See a giraffe in the wild'
    second_idea.save!

    visit(ideas_index_path)
    assert page.has_content?('Cycle across Australia')
    assert page.has_content?('See a giraffe in the wild')
  end

  test 'Test for editing ideas' do
    new_idea = Idea.new
    new_idea.save!
    visit(edit_idea_path(new_idea))
    fill_in('done_count', with: 10)
    fill_in('title', with: 'Build an amazing web app')
    click_on('Update idea')
    click_on('Build an amazing web app')

    assert page.has_content?('Build an amazing web app')
    assert page.has_content?('10 have done this')
  end
end
