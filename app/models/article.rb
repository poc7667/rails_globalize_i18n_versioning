class Article < ActiveRecord::Base
    translates :name, :content, :versioning => { :gem => :paper_trail, :options => { :on => [ :update ] } }
end
