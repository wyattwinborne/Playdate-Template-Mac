# Playdate VS Code Template (Mac)
[![Lua Version](https://img.shields.io/badge/Lua-5.4-yellowgreen)](https://lua.org) [![Toybox Compatible](https://img.shields.io/badge/toybox.py-compatible-brightgreen)](https://toyboxpy.io)

Build and run projects in the Playdate simulator with a key shortcut.

## Requirements
- [VS Code](https://code.visualstudio.com)
- [Node](https://nodejs.org/)
- [Playdate SDK](https://play.date/dev/)
- [toybox.py](https://codeberg.org/DidierMalenfant/toybox.py)

## Get Started
**This is a template repo.**  

You can generate your own separate repositories from this template with the same directory structure, branches, and files. Click "Use this template" to create your own repo.

1. Clone or download the repo.
2. Open a terminal in VS Code and run the command `toybox update`. This will update all the dependencies that come with this template through toybox.
3. In VS Code, choose Run > Run Without Debugging to launch the project in the Playdate simulator.
4. Assign a keyboard shortcut to the Run Without Debugging option to build and run with a keypress (I like to use `option + p`).


## SDK Path
in `.vscode/settings.json` you will need to replace the SDK path with your own. It likely looks like this: `/Users/[yourComputerUsername]/Developer/PlaydateSDK`. Your Username can be found at this directory on your Mac: `macintoshHD/Users`

## Output
Build files get output to `Output.pdx`.  
Change this by editing the `playdate.output` property in `.vscode/settings.json`.

## Dependencies
This repo comes packaged with a my most used libraries, conveniently accessed and managed with **[toybox.py](https://codeberg.org/DidierMalenfant/toybox.py)**. You can find the installed dependencies in `PlaydateTemplate_Mac/Boxfile`.

### Installed
1. [AnimatedSprite](github.com/Whitebrim/AnimatedSprite)
2. [Signal](codeberg.org/DidierMalenfant/Signal) 
3. [Sequence](github.com/NicMagnier/PlaydateSequence) 
4. [roomy](github.com/RobertCurry0216/roomy-playdate)
