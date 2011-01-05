require "spec_helper"

describe UserMailer do

  describe "welcome email" do

    describe "success" do
 
      before(:each) do
        @user = Factory(:user)
        @email = UserMailer.welcome_email(@user).deliver
      end

      it "should queue the email" do
        ActionMailer::Base.deliveries.should_not be_empty
      end         

      it "should be sent to the correct user" do
        [@user.email].should == @email.to
      end

      it "should have the correct subject" do
        @email.subject.should match /^welcome.+sample app/i
      end

      it "should have the user's name in the body" do
        @email.encoded.should match /#{@user.name}/
      end

      it "should be a multipart email" do
        @email.should be_multipart
      end
    end
  end
end
