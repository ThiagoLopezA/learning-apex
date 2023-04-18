/**
Rock beats scissors, scissors beats paper, paper beats rock. Implement the method
rockPaperScissors that takes as parameters two strings player1 and player2
representing the moves played by player 1 and player 2, valid moves being 'rock',
'paper', and 'scissors'. Return 1 if player 1 wins, 2 if player 2 wins, and 0 if
no one wins.

rockPaperScissors('rock', 'paper') = 2
rockPaperScissors('scissors', 'paper') = 1
rockPaperScissors('paper', 'paper') = 0
*/

public class Result {
    public static Integer rockPaperScissors(String player1, String player2) {
        List<String> options = new List<String>{'rock', 'paper', 'scissors'};
    
        if(player1 == player2) return 0;
    
        String selected = options.get(options.indexOf(player1));
    
        switch on selected {
            when 'rock' {
                if(player2 == 'paper') return 2;
                return 1;
            }
            when 'scissors' {
                if(player2 == 'rock') return 2;
                return 1;
            }
            when 'paper' {
                if(player2 == 'scissors') return 2;
                return 1;
            }
        }
    
        return 0;
    }
}