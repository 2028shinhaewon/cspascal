program conditionals;
var
  num, guess, i : integer;
begin
  randomize;
  num := random(10);

  repeat
    write('Guess a number between 0 and 9: ');
    read(guess);
    if guess < num then writeln('Incorrect, too low')
    else if guess > num then writeln('Incorrect, too high')
    else writeln('Correct');
  until num = guess;

  read(guess)
end.