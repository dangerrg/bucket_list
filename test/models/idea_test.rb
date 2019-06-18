# frozen_string_literal: true

require 'test_helper'

class IdeaTest < ActiveSupport::TestCase
  test 'the first empty Idea created is first in the list' do
    first_idea = Idea.new title: 'First title'
    first_idea.save!
    second_idea = Idea.new title: 'Second title'
    second_idea.save!
    assert_equal(first_idea, Idea.all.first)
  end

  test 'the first complete Idea created is first in the list' do
    first_idea = Idea.new
    first_idea.title = 'Cycle the length of the United Kingdom'
    first_idea.photo_url = 'http://mybucketlist.ch/an_image.jpg'
    first_idea.done_count = 12
    first_idea.save!
    second_idea = Idea.new
    second_idea.title = 'Visit Japan'
    second_idea.photo_url = 'http://mybucketlist.ch/second_image.jpg'
    second_idea.done_count = 3
    second_idea.save!
    assert_equal(first_idea, Idea.all.first)
  end

  test 'updated_at is changed after updating title' do
    idea = Idea.new
    idea.title = 'Visit Marrakech'
    idea.save!
    first_updated_at = idea.updated_at
    idea.title = 'Visit the market in Marrakech'
    idea.save!
    refute_equal(idea.updated_at, first_updated_at)
  end

  test 'updated_at is changed after updating done_count' do
    idea = Idea.new title: 'Idea'
    idea.done_count = 123
    idea.save!
    first_updated_at = idea.updated_at
    idea.done_count = 456
    idea.save!
    refute_equal(idea.updated_at, first_updated_at)
  end

  test 'updated_at is changed after updating photo_url' do
    idea = Idea.new title: 'Interesting idea!'
    idea.photo_url = '/images/turtle.jpg'
    idea.save!
    first_updated_at = idea.updated_at
    idea.photo_url = '/images/turtle-big.jpg'
    idea.save!
    refute_equal(idea.updated_at, first_updated_at)
  end

  test 'One matching result' do
    idea = Idea.new
    idea.title = 'Stand at the top of the Empire State Building'
    idea.save!
    assert_equal Idea.search('the top').length, 1
  end

  test 'No matching result' do
    idea = Idea.new
    idea.title = 'Stand at the top of the Empire State Building'
    idea.save!
    assert_empty Idea.search('snorkelling')
  end

  test 'Two matching result' do
    idea_1 = Idea.new
    idea_1.title = 'Stand at the top of the Empire State Building'
    idea_1.save!
    idea_2 = Idea.new
    idea_2.title = 'Stand on the pyramids'
    idea_2.save!
    assert_equal Idea.search('Stand').length, 2
  end

  test 'most_recent with no Ideas' do
    assert_empty Idea.most_recent
  end

  test 'most_recent with two Ideas' do
    idea_1 = Idea.new
    idea_1.title = 'Title idea_1'
    idea_1.save!
    idea_2 = Idea.new
    idea_2.title = 'Title idea_2'
    idea_2.save!

    assert_equal Idea.most_recent.length, 2
    assert_equal Idea.most_recent.first, idea_2
  end

  test 'most_recent with six Ideas' do
    6.times do |i|
      idea = Idea.new
      idea.title = "Title Idea #{i + 1}"
      idea.save!
    end

    assert_equal Idea.most_recent.length, 3
    assert_equal Idea.most_recent.first.title, 'Title Idea 6'
  end

  test 'when description match' do
    idea = Idea.new
    idea.title = 'Surfing in Portugal'
    idea.description = 'See what Atlantic coast waves are like!'
    idea.save!

    assert_equal 1, Idea.search('coast').length
  end

  test 'when description and title match' do
    idea_one = Idea.new
    idea_one.title = 'Overnight hike in Switzerland'
    idea_one.description = 'Stay in a Swiss refuge in the mountains'
    idea_one.save!
    idea_two = Idea.new
    idea_two.title = 'Hike the mountains in Italy'
    idea_two.description = 'See the Dolomites and Italian Alps.'
    idea_two.save!

    assert_equal 2, Idea.search('mountains').length
  end

  test 'maximum length of title' do
    idea = Idea.new title: 'Hike the mountains in Italy, See the Dolomites and Italian Alps, hjcgslkjchcld uchlwiuchwcw;kcj;wkjc;e'
    refute idea.valid?
  end

  test 'presence of title' do
    idea = Idea.new
    refute idea.valid?
  end
end
