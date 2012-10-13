require 'spec_helper'

feature 'View the homepage' do

  scenario 'page should have breadcrumb' do
    visit_homepage
    page.should have_css(".breadcrumb")
  end


  def visit_homepage
    visit root_path
  end

end
