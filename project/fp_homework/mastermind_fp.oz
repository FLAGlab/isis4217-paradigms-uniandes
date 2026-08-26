%% ============================================================================
%% Main game controller that manages the overall game flow
%% ============================================================================
%% Color enumeration - valid colors in the game
%% Type: Color :: red | blue | green | yellow | orange | purple
%% ============================================================================
declare 

   fun {StartGame Code}
      %% Starts a new game session with a codemaker with a defined secret code and the rounds played 
      %% Input: The code
      %% Output: A code maker with the code
      
      %% Your code here
      nil 
   end
   
   fun {PlayRound Codemaker Guess}
      %% Executes one round of the game (guess + feedback)
      %% Input: the code maker and the guess from the codebreaker  
      %% Output: [FeedbackClue] % Black and white Clues received
      %%          round, the number of rounds played so far   
      %% Your code here
      nil 
   end
   
   fun {GetGameStatus Feedback Rounds}
      %% Returns current game status
      %% Input: Game Feedback
      %%        The number of rounds played so far 
      %% Output: Result :: GameStatus - Current status of the game
      %%         GameStatus :: 'playing' | 'won' | 'lost' 
      %% Your code here
      nil 
   end
   
   fun {GetCurrentRound Codemaker}
      %% Returns current round number
      %% Input: Codemaker
      %% Output: Result :: Int - Current round number (1-12)
      %% Your code here
      nil 
   end
   
   fun {GetRemainingRounds Codemaker}
      %% Returns number of rounds left
      %% Input: Codemaker
      %% Output: Result :: Int - Number of rounds remaining (0-11)
      %% Your code here
      nil 
   end
   
   fun {EvaluateGuess Codemaker Guess}
      %% Evaluates a guess against the secret code
      %% Input: Codebreaker
      %%        Guess :: [Color] - List of exactly 4 colors representing the guess
      %% Output: [Result] :: blackClues: Int     % Number of correct color & position
      %%            whiteClues: Int            % Number of correct color, wrong position  
      %%            ClueList: [FeedbackClue]   % List of individual Clue results
      %% Your code here
      nil 
   end

   fun {GetSecretCode Codemaker}
      %% Returns the current secret code (for testing/debugging)
      %% Input: None
      %% Output: Result :: [Color] | nil - Secret code or nil if not set
      %% Note: Should only be used for testing, breaks game in normal play
      %% Your code here
      nil 
   end