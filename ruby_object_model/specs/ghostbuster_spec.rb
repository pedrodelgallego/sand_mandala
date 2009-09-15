require "../solutions/ghostbuster"

class Person; end

describe "ghostbuster" do
  before(:all) do
    @spaniard = Person.new
    def @spaniard.speak
      puts hola
    end    
  end

  it "should say hola" do
    Person.instance_methods.
      include?('speak').should be_false
  end
  
  
  it "should find the ghost class" do
    @spaniard.ghostbuster.instance_methods.
      include?('speak').should be_true    
  end
end
