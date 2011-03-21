# A Cucumber step to generate any number of objects, for any model, typically using factory girl
# http://cassiomarques.wordpress.com/2009/04/16/a-cucumber-step-to-generate-any-number-of-objects-for-any-model/
Given /^there are (\d+) (.+)$/ do |n, model_str|
  model_str = model_str.gsub(/\s/, '_').singularize
  model_sym = model_str.to_sym
  klass = eval(model_str.camelize)
  klass.transaction do
    klass.destroy_all
    n.to_i.times do |i|
      Factory(model_sym)
    end
  end
end

