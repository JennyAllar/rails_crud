require_relative '../spec_helper'

feature 'cities functions' do
  scenario 'user can add city' do
    visit '/'
    click_on 'Cities'
    click_on 'Create City'

    fill_in 'City Name', with: 'Detroit'
    fill_in 'State', with: 'Michigan'
    select 'Eastern', :from => 'Please select a time zone'
  end
end