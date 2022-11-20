class Critica < ApplicationRecord
   has_many :filme
   @critica = @critica.filme.create(published_at: Time.now)
end
