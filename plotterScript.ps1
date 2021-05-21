##############
# made by ** #
# idepixel * #
#-~-~-~-~-~-~#
# DRIVE LETTERS
###############
# I use two final hard disk drives and one temporal file of 4TB (1TB NVMe x 4 with RAID configuration)
[string]$temp_route = "E:\temp" 
[string]$final_route_1 = "F:\plots"
[string]$final_route_2 = "G:\plots"
# MAIN VARIABLES
################
# Your installed Chia version
[string]$chia_version = "1.1.5"
# Your windows username, used for routes (log and main app)
# You can find your username by following this steps
# 1.- While sitting at the host computer with LogMeIn installed, press and hold the Windows key and press the letter R on your keyboard. The Run dialog box is displayed.
# 2.- In the box, type cmd and press Enter. The command prompt window will appear.
# 3.- Type whoami and press Enter.
# 4.- Your current username will be displayed.
[string]$windows_username = "idepi"
# You can find these variables by following this steps
# 1.- While sitting at the host computer with LogMeIn installed, press and hold the Windows key and press the letter X on your keyboard.
# 2.- Select "Windows Power Shell" option.
# 3.- Type in your powershell
# 3.1.- C:\Users\ <your username here> \AppData\Local\chia-blockchain\app-1.1.5\resources\app.asar.unpacked\daemon\chia.exe keys show
# 4.- Press Enter.
[string]$farmer_public_key = 'b43f9...'
[string]$pool_public_key = '8a283...'
[string]$fingerprint = '24751...'
# SYSTEM RESOURSE ALLOCATION
############################
# How many RAM assigned
[int]$memory_buffer_size = 4096
# How many plots will it queue
[int]$number_of_plots = 1
# How many threads assigned
[int]$cpu_threads = 4
# Size of plot
[int]$k_size = 32
# I recommend don't change this value
[int]$buckets = 128
# STRING COMMANDS
#################
[string]$log_path = "C:\Users\$windows_username\.chia\mainnet\plotter"
[string]$chia_route = "C:\Users\$windows_username\AppData\Local\chia-blockchain\app-$chia_version\resources\app.asar.unpacked\daemon\"
[string]$chia_command_1 = ".\chia.exe plots create -k $k_size -b $memory_buffer_size -u $buckets -r $cpu_threads -t $temp_route -d $final_route_1 -n $number_of_plots -f $farmer_public_key -p $pool_public_key -a $fingerprint"
[string]$chia_command_2 = ".\chia.exe plots create -k $k_size -b $memory_buffer_size -u $buckets -r $cpu_threads -t $temp_route -d $final_route_2 -n $number_of_plots -f $farmer_public_key -p $pool_public_key -a $fingerprint"
# RUN SCRIPTS
#############
############ PLOTTERS FOR FIRST FINAL DRIVE - STARTS NEW ONE EVERY 40 MIN
invoke-expression "cmd /c start powershell -NoExit -Command { cd $chia_route ; (Get-Host).ui.RawUI.WindowTitle = 'LOTE1P1' ; start-sleep 0 ; $chia_command_1 | Tee-Object -FilePath '$log_path\plotter_log_$([GUID]::NewGUID().ToString('D')).txt' }"
invoke-expression "cmd /c start powershell -NoExit -Command { cd $chia_route ; (Get-Host).ui.RawUI.WindowTitle = 'LOTE1P2' ; start-sleep 2400 ; $chia_command_1 | Tee-Object -FilePath '$log_path\plotter_log_$([GUID]::NewGUID().ToString('D')).txt' }"
invoke-expression "cmd /c start powershell -NoExit -Command { cd $chia_route ; (Get-Host).ui.RawUI.WindowTitle = 'LOTE1P3' ; start-sleep 4800 ; $chia_command_1 | Tee-Object -FilePath '$log_path\plotter_log_$([GUID]::NewGUID().ToString('D')).txt' }"
invoke-expression "cmd /c start powershell -NoExit -Command { cd $chia_route ; (Get-Host).ui.RawUI.WindowTitle = 'LOTE1P4' ; start-sleep 7200 ; $chia_command_1 | Tee-Object -FilePath '$log_path\plotter_log_$([GUID]::NewGUID().ToString('D')).txt' }"
invoke-expression "cmd /c start powershell -NoExit -Command { cd $chia_route ; (Get-Host).ui.RawUI.WindowTitle = 'LOTE1P5' ; start-sleep 9600 ; $chia_command_1 | Tee-Object -FilePath '$log_path\plotter_log_$([GUID]::NewGUID().ToString('D')).txt' }"
invoke-expression "cmd /c start powershell -NoExit -Command { cd $chia_route ; (Get-Host).ui.RawUI.WindowTitle = 'LOTE1P6' ; start-sleep 12000 ; $chia_command_1 | Tee-Object -FilePath '$log_path\plotter_log_$([GUID]::NewGUID().ToString('D')).txt' }"
############ PLOTTERS FOR SECOND FINAL DRIVE - STARTS NEW ONE EVERY 40 MIN
invoke-expression "cmd /c start powershell -NoExit -Command { cd $chia_route ; (Get-Host).ui.RawUI.WindowTitle = 'LOTE2P1' ; start-sleep 0 ; $chia_command_2 | Tee-Object -FilePath '$log_path\plotter_log_$([GUID]::NewGUID().ToString('D')).txt' }"
invoke-expression "cmd /c start powershell -NoExit -Command { cd $chia_route ; (Get-Host).ui.RawUI.WindowTitle = 'LOTE2P2' ; start-sleep 2400 ; $chia_command_2 | Tee-Object -FilePath '$log_path\plotter_log_$([GUID]::NewGUID().ToString('D')).txt' }"
invoke-expression "cmd /c start powershell -NoExit -Command { cd $chia_route ; (Get-Host).ui.RawUI.WindowTitle = 'LOTE2P3' ; start-sleep 4800 ; $chia_command_2 | Tee-Object -FilePath '$log_path\plotter_log_$([GUID]::NewGUID().ToString('D')).txt' }"
invoke-expression "cmd /c start powershell -NoExit -Command { cd $chia_route ; (Get-Host).ui.RawUI.WindowTitle = 'LOTE2P4' ; start-sleep 7200 ; $chia_command_2 | Tee-Object -FilePath '$log_path\plotter_log_$([GUID]::NewGUID().ToString('D')).txt' }"
invoke-expression "cmd /c start powershell -NoExit -Command { cd $chia_route ; (Get-Host).ui.RawUI.WindowTitle = 'LOTE2P5' ; start-sleep 9600 ; $chia_command_2 | Tee-Object -FilePath '$log_path\plotter_log_$([GUID]::NewGUID().ToString('D')).txt' }"
invoke-expression "cmd /c start powershell -NoExit -Command { cd $chia_route ; (Get-Host).ui.RawUI.WindowTitle = 'LOTE2P6' ; start-sleep 12000 ; $chia_command_2 | Tee-Object -FilePath '$log_path\plotter_log_$([GUID]::NewGUID().ToString('D')).txt' }"
##############
# made by ** #
# idepixel * #
#-~-~-~-~-~-~#