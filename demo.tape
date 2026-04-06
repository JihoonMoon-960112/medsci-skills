# VHS Demo: check-reporting skill
# Run: VHS_CHROME_PATH="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" vhs demo.tape

Output demo.gif

Set Shell bash
Set FontSize 14
Set Width 880
Set Height 600
Set Padding 20
Set Theme "Catppuccin Mocha"

# Start clean, run simulation directly
Hide
Type "clear"
Enter
Sleep 300ms
Show

Sleep 300ms

Hide
Type "bash /tmp/demo_simulate.sh"
Enter
Sleep 100ms
Show

# Wait for script to finish (internal sleeps ~2.7s)
Sleep 8s
