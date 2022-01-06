class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|

      t.string :date
      t.string :time

      t.integer :vet_id
      t.integer :dog_id

    end
  end
end
