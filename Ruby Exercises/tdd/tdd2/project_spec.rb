require_relative "project"

describe Project do
	it "It has a getter and setter for name attribute" do 
		project = Project.new
		project.name = "Project Name"
		expect(project.name).to eq("Project Name")
	end

	it "It has a description attribute" do 
		project = Project.new
		project.description = "description"
		expect(project.description).to eq("description")
	end
end
