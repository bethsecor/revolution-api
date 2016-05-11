class LegislatorSerializer < ActiveModel::Serializer
  attributes :name,
             :state,
             :district,
             :political_party,
             :term_starts_on,
             :term_ends_on

  def term_starts_on
    object.term_starts_on.strftime("%Y-%m-%d")
  end

  def term_ends_on
    object.term_ends_on.strftime("%Y-%m-%d")
  end
end
