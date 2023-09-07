# frozen_string_literal: true
$legal_figures = ["Rock", "Paper", "Scissors"]
$winning_combinations = {
  "Rock": "Scissors",
  "Paper": "Rock",
  "Scissors": "Paper"
}

def game(figure1, figure2)
  if !figure1.is_a?(String) || !figure2.is_a?(String)
    puts("Error: input has to be of String type")
    return
  end
  if !is_input_correct?(figure1) || !is_input_correct?(figure2)
    puts("Error: input has to be of #{$legal_figures}")
    return
  end
  puts(get_result(figure1, figure2))
end

private def is_input_correct?(figure)
  $legal_figures.each { |legal_figure|
    if figure == legal_figure
      return true
    end
  }
  false
end

private def get_result(figure1, figure2)
  if figure1 == figure2
    "Draw"
  elsif $winning_combinations[figure1.to_sym] == figure2
    "You won"
  else
    "You lost"
  end
end

game(ARGV[0], ARGV[1])