module Concerns::Findable

<<<<<<< HEAD
  def find_by_name(name)
    self.all.detect {|song| song.name == name}
  end

  def find_or_create_by_name(name)
    self.find_by_name(name) || self.create(name)
  end

=======
>>>>>>> 86c5072d0965970a850f5d0fe2de89d48cd3cc4a
end