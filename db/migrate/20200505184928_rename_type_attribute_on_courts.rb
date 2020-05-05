class RenameTypeAttributeOnCourts < ActiveRecord::Migration[5.2]
    def change
        rename_column :courts, :type, :floor_type
    end
end
