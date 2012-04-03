class Article < ActiveRecord::Base
  attr_accessible :title, :body

  def to_param
    [id, title.downcase.split].join("-")
  end
end
