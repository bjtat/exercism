module Blackjack
  def self.parse_card(card)
    case card
    when 'ace'
      11
    when 'ten', 'jack', 'queen', 'king'
      # when %w[ten jack queen king]
      10
    when 'nine'
      9
    when 'eight'
      8
    when 'seven'
      7
    when 'six'
      6
    when 'five'
      5
    when 'four'
      4
    when 'three'
      3
    when 'two'
      2
    else
      0
    end
  end

  def self.card_range(card1, card2)
    case parse_card(card1) + parse_card(card2)
    when 4..11
      'low'
    when 12..16
      'mid'
    when 17..20
      'high'
    when 21
      'blackjack'
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    dealer_value = parse_card(dealer_card)
    case parse_card(card1) + parse_card(card2)
    when 22 then 'P'
    when 21
      case dealer_value
      when 10, 11
        'S'
      else
        'W'
      end
    when 17..20 then 'S'
    when 12..16
      case dealer_value
      when 1..6
        'S'
      else
        'H'
      end
    else 'H'
    end
  end
end
