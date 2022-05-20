# TLDRMissions
Issue tracker for TLDRMissions addon for World of Warcraft

Releases for this addon are available on CurseForge: https://www.curseforge.com/wow/addons/tldr-missions/files

## Common questions:

Q: The number of simulations is really high. Is it broken?

A: Some missions involve "randomness", such as spells that have a random target. When this happens, the addon could take a long time to find a way to guarantee success. If you would prefer the addon finds solutions more quickly, change some of the advanced settings. Perhaps lower the level restriction, so low level minions aren't tested on high level missions. Or perhaps change the option to always fill with troops.

Q: The simulator froze / the simulator counter isn't increasing?

A: The addon probably threw an error, and to protect the game from locking up, the simulator disables itsself. If you didn't see the error, you probably have errors disabled, or you're using another addon to hide the errors. I'll need to see the error to be able to investigate what happened.

Q: Sending missions is slow?!?

A: Due to problems on Blizzards end, there were issues with the wrong followers being sent on a mission, to combat this, I had to add a small delay to the Start Mission button where it double-checks after the delay to confirm the correct followers are still assigned before sending them. Better the small delay than the mission failing due to wrong followers!

## Translations:

If you'd like to provide translations, create an issue, tell me what locale you are in (eg: enUS/zhTW/frFR), and I'll create the template files for your locale and walk you through filling in the translations.

## Addon Events for Weakauras:

If you want to hear a sound or flash the taskbar or whatever when the addon finishes calculations, you can set something up with Weakauras, and listen for one of these custom events that TLDRMissions will send through AceEvent and directly to Weakauras if you have it installed:

- TLDRMISSIONS_SENT_SUCCESS (fired when all missions have been sent successfully)
- TLDRMISSIONS_SENT_PARTIAL: numSent, numSkipped, numFollowersAvailable (fired when some missions were sent - returns number of missions that were sent, number of missions that were skipped, number of followers that can still be sent on more missions)
- TLDRMISSIONS_NOT_ENOUGH_ANIMA (fired if the addon tried to send a mission but you didn't have enough Anima)
- TLDRMISSIONS_SENT_FAILURE (fired when the last possible mission failed, meaning you have followers left over not sent on any missions)
- TLDRMISSIONS_COMPLETE_MISSIONS_FINISHED (fired after you use the Finish Completed Missions button, and the addon has finished cycling through all the missions and collected their rewards)

Here is a simple WA I quickly whipped up that plays a Kaching sound when all the missions are successfully sent:

    !WA:2!1r1tVnoru8gLdizHw6Mdb2chSar1IqQslROWfKACwhTbL0eSDPfPi5DSNNThQZmJMzCBZEcfHeCL(riN5u(eG6boBvXNGLVb7NaEJDaHqSZf)EJF)93V3B6mQ3YE0E0F(JvIktjJdQzNfnz8P(bPIsH6R7Ih5NszAzjzveCJjotOwsmXYydBjetxXjlzPXMcfOleL0vQvZYY0G55NCYF(l7HNTeEAHqnxW4MKH(Ng5hiDFZrSvRJC)0kTrS0AXzskXabWva38ksfElXWspNrnfEdqvfj1WeC9XbAdrzomqlQ4u5xnMBavgjfwmGsX)V4CGC5GkfrVyU4Aq1iofOmYIqRh6fxssly88Je55RPI4M48IKmgNPloS(DQ3V(HfEOMXzTrXYZbL(bhQ2j(7EMvsiPTUFLUkPPGdRYYy3SnE4GWO4WObbr1o3nSGyCNcAnjh(hlNRa0YGW5(tMSHcjOJryavp3FY8rNnXRcZBIf1avRdA5JIM8SGPJddhp70W4qeCJdpB4q)WWaKxaTZ22Qj2wz1oR1sOSCmv7u)UYdYQ4n42J)exfyQuCxJQcCbo9V9QGrHalRqVTIVRlDKp0c3xbrT6tfu4x3t(()VmARq9JFnZsfCs53IigMsy91cf9CfrU(8DcEzcUrU)if7LUFtfHQigIBu0geDcGCl9Eq)6(3JQjK0lZvwQXRuqOJsmKsen6hSSQ0WC8WMmTF9N7eKws0ARKNM9sWkS2MKqu5r3RliuX1x0oS2DJQjhw82ZGTWMubNYAMQCKF0BEAvQGuMTJ6ElHZSZLc(X1py0DardHgfWZnfVvDFpo203tXboRfn0Hsd2KOxBn1M46bEljm(O6tqhQhu7vpS(z43E)3Bu3SBf73O)0b)aUIP(EKVyzR8M4pkAJrKEvlm)EDEXfFiJExZuctBVsVRX)U2q8b7TntHtkyPI4D3x3URoYELTKschg47FAcwOzSCNpRIr3EdWRwo54NKs)Y7XLr08zYwGA7)cN65UTnrdBEhPtNoD3Gt3aTzT9hF7TmElsIE6CRgkZAFGWBwu0SP90jp9OV4ON80Ex9hx8xd
    
## Help improve the accuracy of the addon?

If you run this addon across multiple characters, and would like to help me collect combat logs to improve the accuracy of the simulation engine, open a "Discrepancy Testing - Volunteering" issue to let me know. You can either do the testing work here on Github, or over Discord. I'll get back to you with instructions on what to do.
