# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100117190320) do

  create_table "bairros", :force => true do |t|
    t.string   "estado",     :null => false
    t.string   "cidade",     :null => false
    t.string   "bairro",     :null => false
    t.string   "respcad"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "respmod"
  end

  create_table "congregacoes", :force => true do |t|
    t.integer  "igreja_id"
    t.string   "nome"
    t.string   "endereco"
    t.string   "estado"
    t.string   "cidade"
    t.string   "bairro"
    t.integer  "cep"
    t.integer  "telefone"
    t.date     "data_fundacao"
    t.string   "respcad"
    t.string   "respmod"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "igrejas", :force => true do |t|
    t.integer  "cnpj"
    t.string   "razao_social"
    t.string   "endereco"
    t.string   "estado"
    t.string   "cidade"
    t.string   "bairro"
    t.string   "cep"
    t.string   "telefone"
    t.date     "data_organizao"
    t.string   "presbiterio"
    t.string   "sinodo"
    t.binary   "logotipo"
    t.binary   "logotipo_relatiorios"
    t.string   "respcad"
    t.string   "respmod"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "igrejas_desligamentos", :force => true do |t|
    t.string   "descricao"
    t.string   "respcad"
    t.string   "respmod"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "membros", :force => true do |t|
    t.integer  "congregacao_id"
    t.string   "nome"
    t.string   "apelido"
    t.integer  "sexo"
    t.string   "endereco"
    t.string   "estado"
    t.string   "cidade"
    t.string   "bairro"
    t.integer  "cep"
    t.string   "telefone"
    t.date     "data_nascimento"
    t.string   "naturalidade"
    t.string   "rg"
    t.string   "cpf"
    t.string   "nome_pai"
    t.string   "nome_mae"
    t.integer  "estado_civil"
    t.string   "conjuge"
    t.integer  "conjuge_evangelico"
    t.string   "email"
    t.binary   "fotografia"
    t.string   "tempo_conversao"
    t.integer  "tipo_admissao"
    t.date     "data_admissao"
    t.string   "ata_admissao"
    t.date     "data_ata_admissao"
    t.date     "data_batismo"
    t.string   "ata_batismo"
    t.date     "data_ata_batismo"
    t.date     "data_profissao"
    t.string   "ata_profissao"
    t.date     "data_ata_profissao"
    t.string   "local_batismo"
    t.string   "igreja_remanescente"
    t.string   "area_atuacao"
    t.integer  "situacao"
    t.date     "data_desligamento"
    t.string   "ata_desligamento"
    t.integer  "codigo_desligamento"
    t.string   "igreja_destinataria"
    t.string   "respcad"
    t.string   "respmod"
    t.date     "data_readmissao"
    t.string   "resp_readmissao"
    t.string   "ata_readmissao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ministerios", :force => true do |t|
    t.integer  "igreja_id"
    t.string   "nome"
    t.string   "objetivo"
    t.string   "respcad"
    t.string   "respmod"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "textos_biblicos", :primary_key => "SEQUENCIAL", :force => true do |t|
    t.text   "TEXTO"
    t.string "FUNDAMENTO", :limit => 40
  end

  create_table "usuarios", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
  end

end
