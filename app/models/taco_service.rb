class TacoService
  include HTTParty
    base_uri 'https://taco.brunonascimento.dev.br/api/v1'
  

  def self.category
    get('/category')
  end

  def self.foods
    get('/food')
  end

  def self.id(taco_id)
    get("/food/#{taco_id}")
  end
  
end