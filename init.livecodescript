script "init"
on preOpenStack
   answer "Hello Hitchhiker, would you like to open another stack?" with "Cancel" or "OK"
   if it is "OK" then
     go url "https://livecodeworld.github.io/lcw_Discord/wip/guide_Taker.livecode"
   end if
   pass preOpenStack
end preOpenStack
