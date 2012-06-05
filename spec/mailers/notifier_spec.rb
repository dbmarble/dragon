require "spec_helper"

describe Notifier do
  describe "agenda_confirmation" do
    let(:mail) { Notifier.agenda_confirmation }

    it "renders the headers" do
      mail.subject.should eq("agenda confirmation")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
