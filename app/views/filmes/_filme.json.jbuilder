json.extract! filme, :id, :titulo, :ano_de_lançamento, :ator_id, :criticas_id, :created_at, :updated_at
json.url filme_url(filme, format: :json)
