class CreateSamuraiTasksTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :samurai_tasks_tasks do |t|
      t.string :title
      t.text :content
      t.references :user, index: true
      t.references :contact, index: true
      t.timestamps null: false
    end
    #t.references :samurai_user, foreign_key: true
    #t.references :samurai_contacts_contact, foreign_key: true
    add_foreign_key :samurai_tasks_tasks, :samurai_users
    add_foreign_key :samurai_tasks_tasks, :samurai_contacts_contacts
  end
end
