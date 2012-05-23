require "spec_helper"

describe Confirmation do
  describe "prelaunch" do
    let(:mail) { Confirmation.prelaunch }

    it "renders the headers" do
      mail.subject.should eq("Prelaunch")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "agenda_template" do
    let(:mail) { Confirmation.agenda_template }

    it "renders the headers" do
      mail.subject.should eq("Agenda template")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "meeting_minutes_template" do
    let(:mail) { Confirmation.meeting_minutes_template }

    it "renders the headers" do
      mail.subject.should eq("Meeting minutes template")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
