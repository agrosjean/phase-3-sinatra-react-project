class CreateVets < ActiveRecord::Migration[6.1]
  def change
    create_table :vets do |t|
      t.string :name
      t.string :information
    end
  end
end
