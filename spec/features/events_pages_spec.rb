include 'spec_helper'

describe "Event Pages" do
  let(:user) { FactoryGirl.create(:user) }
  let(:event) { FactoryGirl.create(:event, :user => user)
  subject { page }

  describe "Event Index Page" do
    before { visit events_path }
  end

  describe "New Event Page" do
    before { visit new_event_path }
  end

  describe "Edit Event Page" do
    before { visit edit_event_path }
  end
end
