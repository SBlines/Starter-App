class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :avatar
      t.string :role

      t.timestamps
    end
  end

<<<<<<< HEAD
#   devise :database_authenticatable, :registerable, :confirmable, :recoverable, :stretches => 20
=======
    # devise :database_authenticatable, :registerable, :confirmable, :recoverable, :stretches => 20
>>>>>>> d5f172ff3289fb2c9168f4ae64f424ebe2580013

end
