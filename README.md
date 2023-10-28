# Playdate VS Code Template (Mac)
Build and run projects in the Playdate simulator with a key shortcut.

## Requirements
- [VS Code](https://code.visualstudio.com)
- [Node](https://nodejs.org/)
- [Playdate SDK](https://play.date/dev/)

## Get Started
**This is a template repo.**  
You can generate your own separate repositories from this template with the same directory structure, branches, and files. Click "Use this template" to create your own repo.

1. Clone or download the repo.
2. In VS Code, choose Run > Run Without Debugging to launch the project in the Playdate simulator.
3. Assign a keyboard shortcut to the Run Without Debugging option to build and run with a keypress.

## SDK Path
in `.vscode/settings.json` you will need to replace the SDK path with your own. It likely looks like this: `/Users/[yourComputerUsername]/Developer/PlaydateSDK`. Your Username can be found at this directory on your Mac: `macintoshHD/Users`

## Output
Build files get output to `Output.pdx`.  
Change this by editing the `playdate.output` property in `.vscode/settings.json`.
