require 'spec_helper.rb'

describe "static pages", :type => :feature do

  subject { page }

  describe "home page" do
    before { visit root_path }
    it { should have_selector "title", "GoodCal" }
  end
end
