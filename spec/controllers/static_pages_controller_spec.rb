require 'spec_helper'

describe StaticPagesController do

  describe "GET 'effective_meeting'" do
    it "returns http success" do
      get 'effective_meeting'
      response.should be_success
    end
  end

end
