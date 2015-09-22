class Sale < ActiveRecord::Base
    before_creare :populate_guid
    belongs_to :book
    
    private
    
    def populate_guid
        self.guid = SecureRandom.uuid()
    end
end
