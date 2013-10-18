require "spec_helper"

describe ProductMailer do
  describe "send_prodcut" do
    let(:mail) { ProductMailer.send_prodcut }

    it "renders the headers" do
      mail.subject.should eq("Send prodcut")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "spam" do
    let(:mail) { ProductMailer.spam }

    it "renders the headers" do
      mail.subject.should eq("Spam")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
