class Abrec < ActiveRecord::Base
  
  paginates_per 20
  
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  
  
end
Abrec.import
  

