script "init"
--> Events
-
on preOpenStack
   put the ghurl_Url ["index.html"] of me into gURL
   go to stack url gURL 
   pass preOpenStack
end preOpenStack


--> Deps
-
getprop ghurl_Url [pShortFile]
   if pShortFile is empty then
      put "init.livecodescript" into pShortFile
   end if
   get the my_ProjectName of me
   return ghurl_Url (pShortFile, it)
end ghurl_Url

getprop my_ProjectName
   get the effective filename of the defaultstack
   set the itemdelimiter to slash
   return item -2 of it
end my_ProjectName

function ghurl_Url shortFile, projectName
   put ghurl_BaseUrl() into gURL
   put projectName & slash after gURL
   put shortFile after gURL
   return gURL
end ghurl_Url

function ghurl_BaseUrl
   return "https://livecodeworld.github.io/"
end ghurl_BaseUrl
