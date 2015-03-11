class Item < ActiveRecord::Base
    #def self.search(search)
        #if search
        #search_condition = "%" + search + "%"
        #find(:all, :conditions => ['title LIKE ? OR description LIKE?', search_condition, search_condition])
        #else
            #self.all
        #end
    #end


    belongs_to :type
end
