require 'spec_helper'

describe "Static Pages" do

let(:str) { "Ruby on Rails Tutorial Sample App" }

#------------------------
 describe "Home page" do
  before { visit root_path}

  it "should have the h1 'Sample App'" do 
  page.should have_selector( 'h1', :text => 'Sample App')
 end

 it "should have the base title" do
   page.should have_selector('title',
			:text => "#{str}")
 end

 it "should not have a custom page title" do
   page.should_not have_selector('title', :text => "| Home")
 end
end

#------------------------
 describe "Help page" do
  it "should have the h1 'Help'" do 
  visit help_path
  page.should have_selector( 'h1', :text => 'Help')
 end

 it "should have the right title 'Help'" do
   visit help_path
   page.should have_selector("title", :text => "#{str} | Help")
 end
end

#---------------------
 describe "About page" do
  it "should have the h1 'About Us'" do 
  visit about_path
  page.should have_selector( 'h1', :text => 'About Us')
 end

 it "should have the right title 'About Us'" do
   visit about_path
   page.should have_selector('title',
			:text => "#{str} | About Us")
  end
 end

#--------------------
 describe "Contact page" do
  it "should have the h1 'Contact'" do
  visit contact_path
  page.should have_selector( 'h1', :text => 'Contact')
 end

 it "should have the right title 'Contact'" do 
  visit contact_path
  page.should have_selector( 'title', :text => "#{str} | Contact")
  end
 end 
end
