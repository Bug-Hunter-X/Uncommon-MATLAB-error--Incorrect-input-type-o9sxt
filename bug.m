function result = myFunction(input)
  % Some code here that might cause an error
  if input < 0
    error('Input must be non-negative');
  end
  result = input * 2; %This line might cause an error if input is not a number
end

% Example usage
input = -5; %this is the problematic line
result = myFunction(input);