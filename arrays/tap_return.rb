require "byebug"

def hash_return(params)
  params.tap { |p| p[:page] = 1 }
end

p hash_return(per_page: 10)
