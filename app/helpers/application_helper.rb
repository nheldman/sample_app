module ApplicationHelper

<<<<<<< .merge_file_1RBm57
  # Return a title on a per-page basis
=======
  # Return a title on a per-page basis.
>>>>>>> .merge_file_Nl0Ya5
  def title
    base_title = "Ruby on Rails Tutorial Sample App"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
<<<<<<< .merge_file_1RBm57

=======
>>>>>>> .merge_file_Nl0Ya5
end
