class RootController < ApplicationController


  def index

    adjective = Adjective.limit(1).offset(rand(Adjective.count)).first # Find a random record
    @word = error_check_adjective(adjective)

  end




  private

    # Small routine to check if the adjective is nil or blank
    # and if the word is nil or blank
    # Returns the correct word or the word as an error message if
    def error_check_adjective(adjective)

      # Check if adjective is nil or blank. If not, find word.
      if adjective.nil?
        word = "Internal Error: Adjective not found, please reload."
        # TODO Throw error for this outcome
      elsif adjective.blank?
        word = "Internal Error: Adjective found is blank, please reload."
        # TODO Throw error for this outcome
      else
        word = adjective.word # Find word

        # Check if adjective is nil or blank. If not, correct word is returned
        if word.nil?
          word = "Internal Error: Word not found from adjective, please reload."
          # TODO Throw error for this outcome
        elsif word.blank?
          word = "Internal Error: Word found is blank, please reload."
          # TODO Throw error for this outcome
        end

      end

      return word # Return word or error message
    end

end
