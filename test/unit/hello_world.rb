class RSpecGreeter

  def greet
    'Hello world!'
  end

end

describe 'Rspec Greeter' do
  it "should so hello world!" do
    greeter = RSpecGreeter.new
    greeting = greeter.greet
    greeting.should == 'Hello world!'
  end

end
