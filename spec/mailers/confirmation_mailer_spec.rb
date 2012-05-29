require "spec_helper"

describe ConfirmationMailer do
  describe "prelaunch_confirmation" do
    let(:mail) { ConfirmationMailer.prelaunch_confirmation }

    it "renders the headers" do
      mail.subject.should eq("Prelaunch confirmation")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
