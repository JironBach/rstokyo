class MasterGender
  include ActiveAttr::Model

	attribute :id
	attribute :value

	attr_accessor :id, :value

 	Records = {
 		1 => { id: 1, value: '男' },
  	2 => { id: 2, value: '女' }
	}

protected

  def initialize(attributes = {})
    attributes.each do |id, value|
      send("#{id}=", value)
    end
  end

  def persisted?
    false
  end


public

	def self.find(id)
		if Records.has_key? id
			self.new(Records[id])
		end
	end

	def self.all
		result = Array.new
		Records.each do |k, v|
			result << self.find(k)
		end
		result
	end

end
