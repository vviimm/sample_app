require 'spec_helper'

describe "Static pages", type: :feature do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end  

  describe "Home page", type: :feature do
    before { visit root_path }

    let(:heading)    { 'Sample App' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should_not have_title('| Home') }
  end

  describe "Help page", type: :feature do
    before { visit help_path }

    let(:heading)    { 'Help' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should have_title("#{heading}") }
  end

  describe "About page", type: :feature do
    before { visit about_path }

    let(:heading)    { 'About' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should have_title("#{heading}") }
  end

  describe "Contact page", type: :feature do
    before { visit contact_path }

    let(:heading)    { 'Contact' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should have_title("#{heading}") }
  end

  # it "should have the right links on the layout" do
  #   visit root_path
  #   click_link "About"
  #   expect(page).to have_title(full_title('About Us'))
  #   click_link "Help"
  #   expect(page).to # заполнить
  #   click_link "Contact"
  #   expect(page).to # заполнить
  #   click_link "Home"
  #   click_link "Sign up now!"
  #   expect(page).to # заполнить
  #   click_link "sample app"
  #   expect(page).to # заполнить
  # end  
end