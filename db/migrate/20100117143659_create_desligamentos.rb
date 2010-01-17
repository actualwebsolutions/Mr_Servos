class CreateDesligamentos < ActiveRecord::Migration
  def self.up
    create_table :igrejas_desligamentos do |t|
      t.string :descricao
      t.string :respcad
      t.string :respmod

      t.timestamps
    end
  end

  def self.down
    drop_table :igrejas_desligamentos
  end
end
