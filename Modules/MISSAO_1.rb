def capitalize_name(name_lambda) 
    name_lambda.call('vinicius')
    name_lambda.call('fabio')
end

name_lambda = -> (name){ puts name.capitalize}

capitalize_name(name_lambda)
