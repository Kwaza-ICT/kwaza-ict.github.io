# MAC tips

## Copy and Paste issue across devices

If you are having trouble copying and pasting text between your Mac and other devices, make sure that you have the Handoff feature enabled on your Mac. To do this, go to System Preferences > General and check the box next to "Allow Handoff between this Mac and your iCloud devices." This will allow you to copy and paste text between your Mac and other devices that are signed in to the same iCloud account.

## Last trick

If above does not work and you are still having issue, please do:

```shell
 defaults delete ~/Library/Preferences/com.apple.coreservices.useractivityd.plist
 killall useractivityd
```