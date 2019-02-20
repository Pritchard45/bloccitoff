module ItemsHelper
  def display_time_remaining(item)
    distance_of_time_in_words(item.created_at + (60*60*24*7), Time.now )+" remaining."
  end
end
