require 'spec_helper'

describe Event do
  before { @event = Event.new(:date => Time.now, :location => "foo", :title => "bar", :description => "foobar", :repeat => false, :all_day => false ) }

  subject { @event }

  # Attributes
  it { should respond_to :date }
  it { should respond_to :location }
  it { should respond_to :title }
  it { should respond_to :description }
  it { should respond_to :repeat }
  it { should respond_to :all_day }
  it { should respond_to :owner_id }

  # Validations
  describe "owner validations" do
    describe "owner must be present" do
      before { @event.owner_id = "" }
      it { should_not be_valid }
    end
  end

  describe "date validations" do
    describe "date must be present" do
      before { @event.date = '' }
      it { should_not be_valid }
    end

    describe "date must be a valid date" do
      before { @event.date = 'invalid date' }
      it { should_not be_valid }
    end
  end

  describe "title validations" do
    describe "title must be present" do
      before { @event.title = '' }
      it { should_not be_valid }
    end

    describe "title can't exceed 50 characters" do
      before { @event.title = 'a' * 51 }
      it { should_not be_valid }
    end
  end

  describe "repeat validations" do
    describe "it must be a boolean" do
      before { @event.repeat = "not a boolean" }
      it { should_not be_valid }
    end
  end

  describe "all_day validations" do
    describe "all_day must be a boolean" do
      before { @event.all_day = "not a boolean" }
      it { should_not be_valid }
    end
  end
  
end
