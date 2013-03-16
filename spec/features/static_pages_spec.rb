require 'spec_helper.rb'

describe "static pages", :type => :feature do

  let(:user) { FactoryGirl.create(:user) }

  subject { page }

  describe "home page" do
    before { visit root_path }
    it { should have_selector "title", "GoodCal" }

    describe "when logged in" do
      before do
        sign_in user
        visit root_path
      end

      it { should have_selector(".user_menu", "logged in as: " + user.email) }
    end

    describe "when not logged in" do
      it { should_not have_selector(".user_menu") }
    end
  end
end
