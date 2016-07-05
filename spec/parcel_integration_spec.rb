require "capybara/rspec"
require "./app"
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the figure out your parcel cost to ship path', {:type => :feature}) do
  it('receives user input on Check button click') do
    visit('/')

    fill_in('height', :with => '3')
    fill_in('width', :with => '4')
    fill_in('depth', :with => '5')
    fill_in('weight', :with => '1')
    select('Overnight!', :from =>'delivery')
    click_button('Check')
    expect(page).to have_content('60.80')
  end
end
