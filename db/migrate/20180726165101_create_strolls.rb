class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
    	t.references :dogsitter, index: true
    	t.references :dog, index: true

      	t.timestamps
    end
  end
end
