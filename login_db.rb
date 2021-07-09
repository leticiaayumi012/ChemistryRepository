unless DB.table_exists? :user
    DB.create_table(:user) do
        primary_key :id
        Text :usuario
        Integer :senha
    end
end

create_table "users", force: :user do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end


db1 = DB[:alunos]

as.each {|a|
    db1.insert(:usuario => a.usuario, :senha => a.senha)
}

