class TacoService
  include HTTParty
    base_uri 'https://taco.brunonascimento.dev.br/api/v1'

  def initialize
    @options = {}
  end

  def get_categories
    self.class.get('/category', @options)
  end

  def get_foods
    self.class.get('/food', @options)
  end
end