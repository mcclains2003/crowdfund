require 'spec_helper'

describe "Creating a new project" do

  it "saves the project and shows the new project's details" do 
    visit projects_url

    click_link 'Add New Project'

    expect(current_path).to eq(new_project_path)

    fill_in "Name", with: "New Project Name"
    fill_in "Description", with: "Helping one consumer at a time"
    fill_in "Target pledge amount", with: "5000.00"
    # select (Time.now.year + 1).to_s, :from => "pledging_ends_on(1i)"
    fill_in "Website", with: "www.consumer.com"
    fill_in "Team members", with: "The team members"
    fill_in "Image file name", with: "project.png"

    # If you're taking advantage of the HTML 5 date field in Chrome,
    # you'll need to use 'fill_in' rather than 'select'
    # fill_in "Released on", with: (Time.now.year - 1).to_s

    click_button 'Create Project'

    expect(current_path).to eq(project_path(Project.last))

    expect(page).to have_text('New Project Name')
  end

end