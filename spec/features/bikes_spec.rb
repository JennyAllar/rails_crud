require_relative '../spec_helper'


feature 'events on the index page' do

  scenario 'user can see a welcome message' do
    visit '/'
    click_on 'Sign up'

    fill_in 'Email', with: 'Jenny@jenny.com'
    fill_in 'Password', with: 'jennyjenny1'
    fill_in 'Password confirmation', with: 'jennyjenny1'
    click_on 'Sign up'
    visit '/'
    click_on 'Bikes'
    expect(page).to have_content('Welcome!')
  end
end

feature 'adding/updating/deleting bikes' do
  scenario 'user can add a bike' do
    visit '/'
    click_on 'Sign up'

    fill_in 'Email', with: 'Jenny@jenny.com'
    fill_in 'Password', with: 'jennyjenny1'
    fill_in 'Password confirmation', with: 'jennyjenny1'
    click_on 'Sign up'
    visit '/'
    click_on 'Bikes'
    click_on 'Add Bike'

    fill_in 'Brand', with: "Specialized"
    fill_in 'Model', with: "RockHopper"
    fill_in 'Color', with: "Red"
    click_on 'Add this Bike'

    expect(page).to have_content "RockHopper"
  end

  scenario 'user can update a bike' do
    visit '/'
    click_on 'Sign up'

    fill_in 'Email', with: 'Jenny@jenny.com'
    fill_in 'Password', with: 'jennyjenny1'
    fill_in 'Password confirmation', with: 'jennyjenny1'
    click_on 'Sign up'
    visit '/bikes'
    click_on 'Add Bike'

    fill_in 'Brand', with: "Trek"
    fill_in 'Model', with: "930"
    fill_in 'Color', with: "White"
    click_on 'Add this Bike'

    click_on '930'
    click_on 'Edit Bike'

    fill_in 'Model', with: "830"
    click_on 'Edit this Bike'

    expect(page).to have_content "830"
    expect(page).to have_no_content "930"
  end

  scenario 'user can delete a bike' do
    visit '/'
    click_on 'Sign up'

    fill_in 'Email', with: 'Jenny@jenny.com'
    fill_in 'Password', with: 'jennyjenny1'
    fill_in 'Password confirmation', with: 'jennyjenny1'
    click_on 'Sign up'
    visit '/bikes'
    click_on 'Add Bike'

    fill_in 'Brand', with: "Huffy"
    fill_in 'Model', with: "Argyle"
    fill_in 'Color', with: "Pink"
    click_on 'Add this Bike'

    click_on 'Argyle'
    click_on 'Delete Bike'

    expect(page).to have_no_content "Argyle"
  end
end