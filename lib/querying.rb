def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title as title, books.year as year
  FROM books
  WHERE series_id = 1
  ORDER BY year";
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name as name, characters.motto as motto
  FROM characters
  ORDER BY name DESC LIMIT 1";
end

def select_value_and_count_of_most_prolific_species
  "SELECT characters.species as value, COUNT(characters.species) as count
  FROM characters
  GROUP BY value
  ORDER BY count DESC LIMIT 1";
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM authors
  INNER JOIN subgenres
  ON authors.id = subgenres.id";
end

def select_series_title_with_most_human_characters
  "SELECT series.title
  FROM series
  INNER JOIN characters
  ON series.id = characters.series_id
  ORDER BY characters.species DESC LIMIT 1";
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name as name, COUNT(character_books.book_id) as count
  FROM characters
  INNER JOIN character_books
  ON characters.id = character_books.character_id
  GROUP BY name
  ORDER BY count DESC";
end
