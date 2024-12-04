setPreference -pref AutoSignature:FALSE
setPreference -pref KeepSVF:FALSE
setPreference -pref ConcurrentMode:FALSE
setPreference -pref UseHighz:FALSE
setPreference -pref svfUseTime:FALSE
loadProjectFile -file "C:/Dokumente und Einstellungen/Besitzer/Desktop/Source_Xilinx_CPLD/Video1.ipf"
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
setMode -bs
setMode -bs
setMode -bs
deleteDevice -position 1
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
setMode -bs
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
setMode -bs
loadProjectFile -file "C:/Dokumente und Einstellungen/Besitzer/Desktop/Source_Xilinx_CPLD/Video1.ipf"
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
setCable -port auto
Identify 
identifyMPM 
assignFile -p 1 -file "C:/Dokumente und Einstellungen/Besitzer/Desktop/Source_Xilinx_CPLD/graka.jed"
Program -p 1 -e -defaultVersion 0 
saveProjectFile -file "C:/Dokumente und Einstellungen/Besitzer/Desktop/Source_Xilinx_CPLD/Video1.ipf"
