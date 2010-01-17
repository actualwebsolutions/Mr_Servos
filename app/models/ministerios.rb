class Ministerios < ActiveRecord::Base
  validates_presence_of :nome, :objetivo, :igreja_id
	belongs_to :igrejas
end
