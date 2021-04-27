case {1,2,3} do
  {4,5,6} -> "this will not match"
  {1,x,3} -> "This will match! value of x: #{x}"
  _ -> "This match whatever"
end

