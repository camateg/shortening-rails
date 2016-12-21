class Link < ApplicationRecord
	def self.search(code)
		if code
			find(:all, :conditions => ['code = ?', "%#{code}%"])
		else
			find(:all)
		end
	end
end
