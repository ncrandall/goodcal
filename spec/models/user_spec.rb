require 'spec_helper'

describe User do

  before { @user = User.new(email: "foo@bar.com", password: "foobar", password_confirmation: "foobar", phone: "555-555-5555", googlecalid: 'ncrandall@gmail.com') }

  subject { @user }

  # Attributes
  it { should respond_to :first_name }
  it { should respond_to :last_name }
  it { should respond_to :phone }
  it { should respond_to :googlecalid }
  it { should respond_to :outlookid }
  it { should respond_to :events }
  it { should be_valid }


  # Validations
  describe "validations" do
    describe "should limit first_name" do
      before { @user.first_name = "a" * 41 }
      it { should_not be_valid }
    end

    describe "should limit last_name" do
      before { @user.last_name = "a" * 41 }
      it { should_not be_valid }
    end

    describe "phone number should be formatted" do
      before { @user.phone = "555" }
      it { should_not be_valid }
    end
  end

end
