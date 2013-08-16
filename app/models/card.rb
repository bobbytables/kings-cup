class Card < ActiveRecord::Base
  def self.mission_for(card)
    key_name = card.name.split(' ')[0].downcase
    message = I18n.t("cards.card_#{key_name}")

    "#{key_name.upcase}: #{message}"
  end
end
