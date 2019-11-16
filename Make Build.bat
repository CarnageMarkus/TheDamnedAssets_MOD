echo D|xcopy /S /Q /Y /F "Music\menu_men\dz.*" 		"..\..\_Build\_Work\Data\Music\menu_men"
echo D|xcopy /S /Q /Y /F "Video\*.*" 			"..\..\_Build\_Work\Data\Video"
echo D|xcopy /S /Q /Y /F "_Build\*.*" 			"..\..\_Build"

echo D|xcopy /S /Q /Y /F "..\..\Data\ModVDF\TheDamned_Anims.mod" 		"..\..\_Build\Data\ModVDF"
echo D|xcopy /S /Q /Y /F "..\..\Data\ModVDF\TheDamned_Meshes.mod" 		"..\..\_Build\Data\ModVDF"
echo D|xcopy /S /Q /Y /F "..\..\Data\ModVDF\TheDamned_Scripts.mod" 		"..\..\_Build\Data\ModVDF"
echo D|xcopy /S /Q /Y /F "..\..\Data\ModVDF\TheDamned_Textures.mod" 		"..\..\_Build\Data\ModVDF"
echo D|xcopy /S /Q /Y /F "..\..\Data\ModVDF\TheDamned_Worlds.mod" 		"..\..\_Build\Data\ModVDF"

PAUSE