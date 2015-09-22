module ProjectsHelper

  def format_pledge_end(project)
    if project.expired?
      content_tag(:strong, "All Done!")
    else
      distance_of_time_in_words(Time.now, project.pledging_ends_on)
    end
  end

  def image_for(project)
    if project.image_file_name.blank?
      image_tag('project.png', :size => '110x110')
    else
      image_tag(project.image_file_name, :size => '110x110')
    end
  end
  
end
