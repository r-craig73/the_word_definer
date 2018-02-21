require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('list of words', {:type => :feature}) do
  it('returns the word after filling out the form, click on the word to view the word and definition') do
    visit('/')
    fill_in('word', :with => 'basin')
    fill_in('definition', :with => 'a sink')
    click_button('Add!')
    click_link('basin')
    expect(page).to have_content('Definition: a sink')
  end
end
