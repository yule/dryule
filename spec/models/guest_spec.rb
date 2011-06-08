require 'spec_helper'

describe Guest do
	it "a new gues should not be blocked" do
		guest = Guest.new
		guest.blocked.should_not_be_true
	end

end
