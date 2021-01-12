class Article < ApplicationRecord
    #make sure that the title is present in order to save the article
    validates :title, presence: true, length: { minimum: 6, maximum:100 }
    #make sure that the description is present in order to save the article
    validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end
