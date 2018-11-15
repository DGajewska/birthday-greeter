feature 'front page' do

  scenario 'greet user and ask for name' do
    visit '/'
    expect(page).to have_content("What's your name?")
  end

  scenario 'contain field for user to enter name' do
    visit '/'
    expect(page).to have_field('name')
  end

  scenario 'ask user for their birthday' do
    visit '/'
    expect(page).to have_content("When's your birthday?")
  end

  scenario 'contain day field for user to enter day' do
    visit '/'
    expect(page).to have_field('day')
  end

  scenario 'contain month field for user to enter month' do
    visit '/'
    expect(page).to have_field('month')
  end

  scenario 'user can submit their information' do
    visit '/'
    expect(page).to have_button('Submit')
  end

end
