------------------
AQZ NetPlay Plugin
------------------

Website:

www.play64.com/netplay-input



Instructions:

1) Unzip the dll into the Plugin folder.

2) Open Project64 and select AQZ NetPlay as the input plugin.

3) Go to Options, Configure Controller Plugin. Then, select and configure an input plugin to use. (The netplay plugin relies on another input plugin to do the actual work of reading input from the keyboard/controller.) Make sure one and only one controller is plugged in for each player that will be playing locally (at the same computer). To be a spectator, unplug all controllers.

4) Select a game to play. Send the save file for that game to each player you plan to play with. The save file is located in the "Save" folder by default. If each player does not have the exact same save file, the emulators will probably desync. (If I could, I would have the netplay plugin automatically distribute the save file to everyone else, but it is impossible for an input plugin to know where the save files are located.)

5) Open the game. The netplay plugin window will appear. One person will host the server and everyone else will connect to the host.

The host needs to type the "/server port" command in the box at the bottom and hit enter, where "port" is the port number the server will listen on for connections. The port can be any number between 1 and 65535. A message from a firewall may appear. Be sure to click Allow. Also, if the host is behind an NAT (home router), the port will needed to be forwarded.

Everyone else needs to use the command "/connect host port" to connect to the host, where "host" is the IP address of the host and "port" is the port that the host chose to host the server.

(Note: If anyone is using WiFi (excluding spectators), the game may be laggy unless they have a strong signal with low interference. You're better off using an ethernet cable.)

6) Use the "/name name" command to change your name. The name you choose will be remembered next time you play.

7) Use the "/start" command to start the game.

8) Use the "/lag lag" command to change the lag of the game, where "lag" is the number of frames of delay between when you press a button and when that information reaches the game. Choose the lowest number possible. If you set the lag too low, the game will run slow, especially if there is a lot of latency on the connection between the players. If you set the lag too high, the game will be difficult to play.

Golf Mode:

To turn golf mode on and off, use the "/golf" command. Every player must turn golf mode on for golf mode to work.

What golf mode does is allow certain games to be played with absolutely no lag no matter how much latency there is on the connection. It will only work with games where only one player plays at a time. The reason it is called golf mode is because I designed it specifically for Mario Golf.

To use golf mode, wait until it is your turn to play. Before you play, press the L button. What this will do is set your own lag to 0, but set everyone else's lag to what your lag was previously set to. Now you are free to do your turn without any lag. When it is someone else's turn, they will simply to the same thing. I chose the L button because it is unnecessary in Mario Golf and uncommon in other games. I could always change this or make it more flexible if people find use for golf mode in other games.

Notes:

From my experience lag is fairly low and often not very noticeable. It is much better than my experience with Kaillera. Of course, the huge advantage of the netplay plugin has over Kaillera is that it works with Project64 2.2, the best N64 emulator in my opinion. You can use the netplay plugin with other N64 emulators, too. However, in my experience, most of them, including Project64 1.6, will desync while playing a game. I have never had a desync occur while using Project64 2.2 though.

I recommend going to Options, Settings, and unchecking "Pause emulation when windows is not active?" That way you can adjust the lag easily while the game is running. Otherwise, every time you click the window that lets you adjust the lag setting, the game will pause.

Let me know if you encounter any bugs.

Enjoy Project64 2.2 with netplay support!



Changes:

v0.20:
 - Added chat
 - Added support for Memory Pak
 - Added "golf mode"

v0.13:
 - Corrected the version numbering to reflect the current version (version 0.12 reported to the emulator that it was version 0.1)
 - The NetPlay dialog (that lets you adjust lag) now appears immediately when the game starts. If a game is running and you want to configure the underlying controller plugin, go to Configure Controller Plugin

v0.12:
 - Fixed a bug that sometimes caused a crash when the emulator was closed
 - Increased the maximum lag to 60 frames

v0.11:
 - Fixed a bug that made it impossible to run the server on Windows XP

v0.10:
 - Initial release