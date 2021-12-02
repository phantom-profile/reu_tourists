class CatsController < ApplicationController
  def random_cat
    @cat = Cats::GetRandomCat.meow
  end
end
