class CreateMembros < ActiveRecord::Migration
  def self.up
    create_table :membros do |t|
      t.references :congregacao
      t.string :nome
      t.string :apelido
      t.integer :sexo
      t.string :endereco
      t.string :estado
      t.string :cidade
      t.string :bairro
      t.integer :cep
      t.string :telefone
      t.date :data_nascimento
      t.string :naturalidade
      t.string :rg
      t.string :cpf
      t.string :nome_pai
      t.string :nome_mae
      t.integer :estado_civil
      t.string :conjuge
      t.integer :conjuge_evangelico
      t.string :email
      t.binary :fotografia
      t.string :tempo_conversao
      t.integer :tipo_admissao
      t.date :data_admissao
      t.string :ata_admissao
      t.date :data_ata_admissao
      t.date :data_batismo
      t.string :ata_batismo
      t.date :data_ata_batismo
      t.date :data_profissao
      t.string :ata_profissao
      t.date :data_ata_profissao
      t.string :local_batismo
      t.string :igreja_remanescente
      t.string :area_atuacao
      t.integer :situacao
      t.date :data_desligamento
      t.string :ata_desligamento
      t.integer :codigo_desligamento
      t.string :igreja_destinataria
      t.string :respcad
      t.string :respmod
      t.date :data_readmissao
      t.string :resp_readmissao
      t.string :ata_readmissao

      t.timestamps
    end
  end

  def self.down
    drop_table :membros
  end
end
