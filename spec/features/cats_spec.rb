require_relative '../spec_helper'

feature 'create an index page' do
  
  scenario 'user can add a cat' do
    visit '/'
    click_on 'Sign up'

    fill_in 'Email', with: 'Jenny@jenny.com'
    fill_in 'Password', with: 'jennyjenny1'
    fill_in 'Password confirmation', with: 'jennyjenny1'
    click_on 'Sign up'
    visit '/cats'
    click_on 'Create Cat'

    fill_in 'Cat Name', with: 'Olive'
    fill_in 'Cat Color', with: 'White'
    fill_in 'Kittens', with: '9'

    click_on 'Add Cat'

    expect(page).to have_content('Olive')
  end

  scenario 'user can view the details of a cat' do
    visit '/'
    click_on 'Sign up'

    fill_in 'Email', with: 'Jenny@jenny.com'
    fill_in 'Password', with: 'jennyjenny1'
    fill_in 'Password confirmation', with: 'jennyjenny1'
    click_on 'Sign up'
    visit '/cats'

    expect(page).to have_no_content('Apollo')
    click_on 'Create Cat'

    fill_in 'Cat Name', with: 'Apollo'
    fill_in 'Cat Color', with: 'Black'
    fill_in 'Kittens', with: '0'

    click_on 'Add Cat'

    click_link 'Apollo'
    expect(page).to have_content('Black')
    expect(page).to have_content('0')
  end

  scenario 'user can view the details of a cat' do
    visit '/'
    click_on 'Sign up'

    fill_in 'Email', with: 'Jenny@jenny.com'
    fill_in 'Password', with: 'jennyjenny1'
    fill_in 'Password confirmation', with: 'jennyjenny1'
    click_on 'Sign up'
    visit '/cats'

    expect(page).to have_no_content('Marley')
    click_on 'Create Cat'

    fill_in 'Cat Name', with: 'Marley'
    fill_in 'Cat Color', with: 'Tan'
    fill_in 'Kittens', with: '8'

    click_on 'Add Cat'

    click_link 'Marley'
    click_on 'Update Cat'

    fill_in 'Cat Color', with: 'Brown'
    click_on 'Update Cat'

    expect(page).to have_content('Brown')
  end
  
  scenario 'user can delete a cat' do
    visit '/'
    click_on 'Sign up'

    fill_in 'Email', with: 'Jenny@jenny.com'
    fill_in 'Password', with: 'jennyjenny1'
    fill_in 'Password confirmation', with: 'jennyjenny1'
    click_on 'Sign up'
    visit '/cats'
    click_on 'Create Cat'
    
    fill_in 'Cat Name', with: 'Felix'
    fill_in 'Cat Color', with: 'Orange'
    fill_in 'Kittens', with: '99'
    
    click_on 'Add Cat'
    
    click_link 'Felix'
    click_on 'Delete Cat'
    
    expect(page).to have_no_content('Felix')
  end

end