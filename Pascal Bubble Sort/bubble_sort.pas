program BubbleSortExample;

procedure BubbleSort(var arr: array of Integer; n: Integer);
var
  i, j, temp: Integer;
begin
  for i := 0 to n - 1 do
    for j := 0 to n - i - 2 do
      if arr[j] > arr[j + 1] then
      begin
        // Swap arr[j] and arr[j + 1]
        temp := arr[j];
        arr[j] := arr[j + 1];
        arr[j + 1] := temp;
      end;
end;

procedure PrintArray(arr: array of Integer; n: Integer);
var
  i: Integer;
begin
  for i := 0 to n - 1 do
    Write(arr[i], ' ');
  Writeln;
end;

var
  arr: array of Integer;
  n, i: Integer;
begin
  Write('Enter the number of elements: ');
  Readln(n);
  SetLength(arr, n);

  Write('Enter the elements: ');
  for i := 0 to n - 1 do
    Read(arr[i]);

  BubbleSort(arr, n);

  Write('Sorted array: ');
  PrintArray(arr, n);
end.
