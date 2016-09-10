module Seed
  def get_adjective_list

    adjectives = []

    file_path = File.expand_path("../res/adjectives.txt", __FILE__)

    if File.exists?(file_path)
      adjectives = File.readlines(file_path)
    end

    return adjectives
  end
end
