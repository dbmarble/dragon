require 'spec_helper'

describe StaticPagesController do

  describe "GET 'articles'" do
    it "returns http success" do
      get 'articles'
      response.should be_success
    end
  end

end
