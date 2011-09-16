require 'spec_helper'

describe StuffController do

  describe "GET 'moonphase'" do
    it "should be successful" do
      get 'moonphase'
      response.should be_success
    end
  end

end
