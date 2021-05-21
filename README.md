# Chia Network PLOOTING file
## _for Windows 10 (PowerShell)_

Script that automatically executes 12 plots in parallel with time delay, 
contains variables so that it can be used by anyone on any computer.

- Starts plots automatically
- Runs under windows 10 (PowerShell)
- For any system setup

> Note: PLEASE edit the file with your specs before execute the script!

#### How to edit?

You can edit this ps1 file with the VSCode application or with the windows 
text editor, inside the file you can find some variables, they are:

```sh
...
$temp_route             // The main temporal route 
$final_route_1          // The final route
$final_route_2          // The second final route (i use two final hard drives for this example)
$chia_version           // The installed chia version on your computer
$windows_username       // Your windows username
$farmer_public_key      // Your chia farmer public key
$pool_public_key        // Your chia pool public key 
$fingerprint            // Your chia fingerprint
$memory_buffer_size     // Assigned RAM for queue
$number_of_plots        // Plots of queue
$cpu_threads            // Threads assigned for queue
$k_size                 // Chia plot k size
$buckets                // Chia plot buckets
...
```


Each line with the "invoke-expression" command is a queue that runs in parallel. 
They will be executed every 40 min, this time can be adjusted after the start-sleep 
flag in each line (the time is in seconds).


> Note: In my configuration I use two hard drives for the final file, it is for this reason 
that there are two processes running at the same time. If you use a single disk for 
the final file, modify the time of the last 6 lines continuing with the previous 
time (12000 + 2400) and so you continue with the rest. You must also put the 
variable chia_command_1.

You need to specify the values of these variables with your data!!.

## How to use?

It's really simple, after you setting your configurations only have to push 
right click on file and select the option "Open with PowerShell".

## 3rd party apps that i use

I use these third party applications to monitor system resources and edit the file 
with the script (remember that you can also use the text editor).

| App | Link |
| ------ | ------ |
| Visual Studio Code | [https://code.visualstudio.com/][PlDb] |
| HWiNFO | [https://www.hwinfo.com/][PlGh] |
| Crystal Disk Info | [https://crystalmark.info/en/][PlGd] |
| Chia Plot Status | [https://github.com/grayfallstown/Chia-Plot-Status][PlOd] |

## License

MIT

**Free code, have a nice plotting!**

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

   [PlDb]: <https://code.visualstudio.com/>
   [PlGh]: <https://www.hwinfo.com/>
   [PlGd]: <https://crystalmark.info/en/>
   [PlOd]: <https://github.com/grayfallstown/Chia-Plot-Status>
