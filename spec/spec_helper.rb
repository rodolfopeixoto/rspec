RSpec.configure do |config|
  # config.before(:suite) do
  #   puts ">>>>>>>>>>>>>>>>>>>>> ANTES DE TODA A SUÍTE DE TESTES(SUITE)"
  # end

  # config.after(:suite) do
  #   puts ">>>>>>>>>>>>>>>>>>>>> AFTER DE TODA A SUÍTE DE TESTES(SUITE)"
  # end
  # config.before(:context) do
  #   puts ">>>>>>>>>>>>>>>>>>>>> ANTES DE TODOS OS TESTES(CONTEXT OU ALL)"
  # end

  # config.after(:context) do
  #   puts ">>>>>>>>>>>>>>>>>>>>> AFTER DE TODOS OS TESTES(CONTEXT OU ALL)"
  # end


  # config.before(:each) do
  #   puts ">>>>>>>>>>>>>>>>>>>>> AFTER DE TODOS OS TESTES(EACH OU EXAMPLE)"
  # end
  # config.before(:example) do
  #   puts ">>>>>>>>>>>>>>>>>>>>> AFTER DE TODOS OS TESTES(EACH OU EXAMPLE)"    
  # end

  # config.after(:each) do
  #   puts ">>>>>>>>>>>>>>>>>>>>> AFTER DE TODOS OS TESTES(EACH OU EXAMPLE)"
  # end
  # config.after(:example) do
  #   puts ">>>>>>>>>>>>>>>>>>>>> AFTER DE TODOS OS TESTES(EACH OU EXAMPLE)"    
  # end

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
