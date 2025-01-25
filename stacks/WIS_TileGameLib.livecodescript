script "WIS_TileGameLib"

function getNumberOfTilesThatFitGrid pDistance,pTileSize,pOddMiddle
   ## Calculate the number of tiles that fit in a grid, given the length or height of the grid (px), and the side of a tile (px)
   ## If pOddMiddle is true then the grid should have a single tile as midpoint
   put trunc(pDistance / pTileSize) into tTiles
   if pOddMiddle is true AND tTiles/2 is an integer then add -1 to tTiles
   return tTiles
end getNumberOfTilesThatFitGrid


function createTileGridArray pColumns,pRows,pFirstKey,pDefaultValue
   ## Create an array for holding data relating to each tile in a grid
   ## Optionally add a key/default value to each node
   repeat with tColumn = 1 to pColumns
      repeat with tRow = 1 to pRows
         
         if pFirstKey is not empty then put pDefaultValue into tGridArray[(tColumn,tRow)][pFirstKey]
         else put empty into tGridArray[(tColumn,tRow)]
      end repeat
   end repeat
   
   return tGridArray
end createTileGridArray
