class Tag
  include DataMapper::Resource

  property :id, Serial
  property :name, String

  has n, :links, through: Resource

  def self.multiple_tags(tag_names, link)
    tag_names.split.each {|item| link.tags << self.first_or_create(name: item)}
    link.save
  end
end
