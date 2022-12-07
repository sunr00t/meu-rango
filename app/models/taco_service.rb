class TacoService
  include HTTParty
    base_uri 'https://taco.brunonascimento.dev.br/api/v1'

  def self.category
    get('/category')
  end

  def self.foods
    get('/food')
  end
  
  def self.id
    get("food/", :query => {:id => id})
  end
end