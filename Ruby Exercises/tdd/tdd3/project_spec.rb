require_relative "project"

describe Project do 
	before do
		@project = Project.new("Andrew", "Test")
	end
	it "Has initializer" do 
		expect(@project.name).to eq("Andrew")
		expect(@project.description).to eq("Test")
	end
	it "Has getter and setter for name" do 
		@project.name = "Gerald"
		expect(@project.name).to eq("Gerald")
	end
	it "Has getter and setter for description" do
		@project.description = "New Test"
		expect(@project.description).to eq("New Test") 
	end
	it "Had a method elevator_pitch to explain name and description" do 
		project1 = Project.new("Project 1", "description 1")		
		project2 = Project.new("Project 2", "description 2")

		expect(project1.elevator_pitch).to eq("Project 1 description 1")		
		expect(project2.elevator_pitch).to eq("Project 2 description 2")		
	end
end

