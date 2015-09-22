class Project < ActiveRecord::Base

  def expired?
    Time.now > pledging_ends_on
  end

  def self.accepting_pledges
    where('pledging_ends_on >= ?', Time.now).order('pledging_ends_on')
  end

end
