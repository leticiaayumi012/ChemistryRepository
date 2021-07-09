unless DB.table_exists? :alunos
    DB.create_table(:alunos) do
        primary_key :id
        Text :usuario
        Integer :senha
    end
end

db1 = DB[:alunos]

as.each {|a|
    db1.insert(:usuario => a.usuario, :senha => a.senha)
}

