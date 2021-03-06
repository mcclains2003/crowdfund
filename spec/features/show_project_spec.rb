require 'spec_helper'

describe "Viewing an individual project" do

  it "shows the project's details" do
    project = Project.create(project_attributes(target_pledge_amount: 100, pledging_ends_on: 1.week.from_now.in_time_zone("Central Time (US & Canada)")))

    visit project_url(project)

    expect(page).to have_text(project.name)
    expect(page).to have_text(project.description)
    expect(page).to have_text("$100.00")
    expect(page).to have_text("7 days remaining")
    expect(page).to have_text(project.website)
    expect(page).to have_text(project.team_members)
    expect(page).to have_selector("img[src$='#{project.image_file_name}']")
  end

  it "shows the days remaining if the pledging end date is in the future" do
    project = Project.create(project_attributes(pledging_ends_on: 1.week.from_now.in_time_zone("Central Time (US & Canada)")))

    visit project_url(project)

    expect(page).to have_text("7 days remaining")
  end

  it "shows 'All Done!' if the pledging end date is in the past" do
    project = Project.create(project_attributes(pledging_ends_on: 1.week.ago))

    visit project_url(project)

    expect(page).to have_text("All Done!")
  end

end
