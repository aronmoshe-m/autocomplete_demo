class User < ApplicationRecord
  include PgSearch
  pg_search_scope :search_by_full_name, against: [:fname, :lname],
                  using: {
                      tsearch: {prefix: true}
                  }
end