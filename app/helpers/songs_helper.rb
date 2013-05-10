module SongsHelper
  
  def generate_filter_by_letter
    html_str = String.new()
    ('A'..'Z').to_a.each do |letter|
      html_str += "<li><a class='song_filter' data-song-filter='#{letter}' href='#'>#{letter}</a></li>"
    end
    return html_str.html_safe
  end
  
end
