require "spec_helper"

describe Notifier do
  describe "minutes_attachment" do
    let(:mail) { Notifier.minutes_attachment }

    it "renders the headers" do
      mail.subject.should eq("Minutes attachment")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "agenda_attachment" do
    let(:mail) { Notifier.agenda_attachment }

    it "renders the headers" do
      mail.subject.should eq("Agenda attachment")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
