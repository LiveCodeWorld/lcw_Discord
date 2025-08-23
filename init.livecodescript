script "init"
--> Metadata
-
/*
This stack script is a custom init script specifc to one project.
In this case the lcw_Discord project.
*/


--> Events
-
on preOpenStack
   put the ghurl_Url of me into indexURL
   --
   put _BrowserWidget() into bWidget
   set the url of bWidget to gURL
   pass preOpenStack
end preOpenStack

private function _BrowserWidget
   put _ProjectName() into sName
   put the long id of widget 1 of stack sName into bWidget
   return bWidget
end _BrowserWidget

private function _ProjectName
   return "lcw_Discord"
end _ProjectName


--> Deps
-
getprop lcw_Url [pShortFile]
   if pShortFile is empty then
      put "index.html" into pShortFile
   end if
   put _ProjectName() into pName
   return lcw_ConstructUrl (pShortFile, pName)
end lcw_Url

function lcw_ConstructUrl shortFile, projectName
   put "https://" & projectName & ".livecode.wiki/" into gURL
   put shortFile after gURL
   return gURL
end lcw_ConstructUrl
