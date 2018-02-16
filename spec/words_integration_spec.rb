require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('list of words', {:type => :feature}) do
  it('returns the word after filling out the form') do
    visit('/')
    fill_in('word', :with => 'basin')
    fill_in('definition', :with => 'easily broken')
    click_button('Add!')
    expect(page).to have_content('basin')
  end
end
