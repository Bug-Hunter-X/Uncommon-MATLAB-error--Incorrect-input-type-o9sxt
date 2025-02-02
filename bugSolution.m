function result = myFunction(input)
  % Check if the input is numeric
  if ~isnumeric(input)
    error('Input must be a number.');
  end
  % Check if the input is non-negative
  if input < 0
    error('Input must be non-negative.');
  end
  result = input * 2;
end

% Example usage with error handling
try
  input = -5;
  result = myFunction(input);
catch ME
  fprintf('Error: %s\n', ME.message);
end

try
  input = 'abc';
  result = myFunction(input);
catch ME
  fprintf('Error: %s\n', ME.message);
end

% Example usage with correct input
input = 5;
result = myFunction(input); 