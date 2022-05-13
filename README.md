# TLDRMissions
Issue tracker for TLDRMissions addon for World of Warcraft

Releases for this addon are available on CurseForge: https://www.curseforge.com/wow/addons/tldr-missions/files

Common questions:

Q: The number of simulations is really high. Is it broken?

A: Some missions involve "randomness", such as spells that have a random target. When this happens, the addon could take a long time to find a way to guarantee success. If you would prefer the addon finds solutions more quickly, change some of the advanced settings. Perhaps lower the level restriction, so low level minions aren't tested on high level missions.

Q: The simulator froze / the simulator counter isn't increasing?

A: The addon probably threw an error, and to protect the game from locking up, the simulator disables itsself. If you didn't see the error, you probably have errors disabled, or you're using another addon to hide the errors. I'll need to see the error to be able to investigate what happened.

Q: Sending missions is slow?!?

A: Due to problems on Blizzards end, there were issues with the wrong followers being sent on a mission, to combat this, I had to add a small delay to the Start Mission button where it double-checks after the delay to confirm the correct followers are still assigned before sending them. Better the small delay than the mission failing due to wrong followers!

Translations:

If you'd like to provide translations, create an issue, tell me what locale you are in (eg: enUS/zhTW/frFR), and I'll create the template files for your locale and walk you through filling in the translations.

Addon Events for Weakauras:

If you want to hear a sound or flash the taskbar or whatever when the addon finishes calculations, you can set something up with Weakauras, and listen for one of these custom events that TLDRMissions will sent through AceEvent and directly to Weakauras if you have it installed:

- TLDRMISSIONS_SENT_SUCCESS (fired when all missions have been sent successfully)
- TLDRMISSIONS_NOT_ENOUGH_ANIMA (fired if the addon tried to send a mission but you didn't have enough Anima)
- TLDRMISSIONS_SENT_FAILURE (fired when the last possible mission failed, meaning you have followers left over not sent on any missions)
- TLDRMISSIONS_COMPLETE_MISSIONS_FINISHED (fired after you use the Finish Completed Missions button, and the addon has finished cycling through all the missions and collected their rewards)
