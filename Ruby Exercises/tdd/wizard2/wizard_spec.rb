require_relative "wizard"

describe Wizard do
  it "has an ancestor chain that includes Human" do
    human = Wizard.ancestors.include?(Human)
    expect(human).to eq(true)
  end
  before do
    @wizard = Wizard.new
  end
  it"has a heal method that increases health by 10" do
    @wizard.health = 0
    @wizard.heal
    expect(@wizard.health).to eq(10)
  end

  it "has a default health of 50 and intelligence of 25" do
    expect(@wizard.health).to eq(50)
    expect(@wizard.intelligence).to eq(25)
  end
end