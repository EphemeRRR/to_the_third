class BookController < ApplicationController
  skip_before_action :authenticate_user!, only: [:premiere_page]
  
  def premiere_page
    if current_user
      test_history
      @history = current_user.history
    end
  end

  def seconde_page
    test_history
    @history = current_user.history
  end

  private

    def test_history
      mark = false
      for chapter in current_user.history
        p chapter.first
        if chapter.first == "/seconde_page"
          mark = true
        end
      end
      if !mark
        current_user.history << ["/seconde_page", 1]
        current_user.save
      end
    end
end
