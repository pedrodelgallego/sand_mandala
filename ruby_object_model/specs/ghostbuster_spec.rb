require "../solutions/ghostbuster"

class Person; end

describe "ghostbuster" do
  before(:all) do
    @spaniard = Person.new
    def @spaniard.speak
      puts hola
    end    
  end
  
  it "should find the ghost class" do
    @spaniard.ghostbuster.instance_methods.include? :speak
  end
end
