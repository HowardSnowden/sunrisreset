class SiteSetting < ActiveRecord::Base
  # The "singleton_guard" column is a unique column which must always be set to '0'
  # This ensures that only one AppSettings row is created
  validates_inclusion_of :singleton_guard, :in => [0]
  has_many :backgrounds 
  has_many :featured_links, class_name: 'Link'
  has_one :video, class_name: 'Video', foreign_key: :featured_video, primary_key: :id
  accepts_nested_attributes_for :featured_links, :limit => 5

  def self.instance
    # there will be only one row, and its ID must be '1'
    begin
      find(1)
    rescue ActiveRecord::RecordNotFound
      # slight race condition here, but it will only happen once
      row = SiteSetting.new
      row.singleton_guard = 0
      row.save!
      row
    end
  end
end
