module RandomData
  def self.complete_name
    FFaker::Name.name
  end

  def self.text
    FFaker::Lorem.paragraph
  end

  def self.boolean
    true
  end
end
