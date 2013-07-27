class CreateRepositories < ActiveRecord::Migration
  def change
    create_table :repositories do |t|
      t.string :name
      t.string :description
      t.datetime :created
      t.string :default_branch
      t.string :html_url
      t.integer :forks
      t.string :id_str
      t.integer :watchers
      t.string :language
      t.string :owner_avatar
      t.string :owner_url
      t.string :owner_login
      t.timestamps
    end
  end
end