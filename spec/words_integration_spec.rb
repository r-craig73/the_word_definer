require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('list of words', {:type => :feature}) do
  it('returns a word and defintion after filling out the word and definition form several times, click on the word to view a word and definition') do
    visit('/')
    fill_in('word', :with => 'basin')
    fill_in('definition', :with => 'a sink')
    click_button('Add!')
    visit('/')
    fill_in('word', :with => 'apple')
    fill_in('definition', :with => 'a boring fruit')
    click_button('Add!')
    visit('/')
    fill_in('word', :with => 'jazz')
    fill_in('definition', :with => 'music genre known for improvisation')
    click_button('Add!')
    click_link('basin')
    expect(page).to have_content('Definition: a sink')
  end
end
