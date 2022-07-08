# TLDRMissions
Issue tracker for TLDRMissions addon for World of Warcraft

Releases for this addon are available on CurseForge: https://www.curseforge.com/wow/addons/tldr-missions/files

## Common questions:

Q: The number of simulations is really high. Is it broken?

A: Its not broken, its just a really hard mission that takes a long time to find a solution for. I'm regularly making small improvements to bring down the simulation time; even going as far as to eimulate the most complicated missions in advance before the addon is published, and store the results with the addon.

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

Here is a simple WA I quickly whipped up that plays a Kaching sound when some or all the missions have finished processing:

    !WA:2!1rv3Unoru4KnxSswRw6gKcqbjSarfiqD3wwvHecPno4OniNMGTlDrkiVJ9CS9qTNz0mJBB2Rqrib3sFeY1CvEcq9jWQcXdWYBW(eWm2zriGn3KZpZ5VVVZXDh3VSpUp(N)abRsvqOGy2jHEto21pHvWeFvp9VnyIKxGwgcxQ6BFJmhHzx8TZstLG6D6SbrtYzI5mcvfpY94qxFU9)iIOuMOePI4rksjSvRlFNKkPIvAEXjCmsb(W5av9CuL2ksrsoLGv5od1QcuIIWOYJ8LkKqTNVKvrX8VycvbIuucSyigR9V4uaD2WkbsUyo7cq0iofWe0IateYfNHsYj0S9zzzRWSOM88uhcLOSIt1)jZ3R(1Q3P(E5RucswgiK3DpXwX)WrTKdXT99ZLvXnnCqvAk5YnrJggegfeo0pCfwxxtd3)GARRhLJu2tbPeLb)DqZfGoi)G5UEEBAtyuobd(gicVsYHIIjyPv9BW3nTI2m(F4hzlavLGARevGnqXT5sYFyO3x6pDsqWKzhhefOPGO56(yYqVpX()6k4KrJCdcEzznZuTLpfvcslNknueByoqSgdX6zlu7x8yxV5JpX7Qk6wSWIFpdPCoe2QpLHHFTd)T)F59wH639fedHrrfFJgx1t0zxHOKYgO6O67oUEGdLrHRbKecucGMPYV9nVemBAuHesyAICL5nMoR((oLicvhB99RFWTRpO(W6pvl(6)BloPmQIVZyb5z2FDfcRtkYomCTMr8HmZ21UdQhCJwngLCwMWSz4uWq4XosYZGb(LvfkILJMAsgu)5w(jfiP0ifRqfAAWiUYuKa9ZFRThjpP9iP3ArtnmDSJsJnR1SpGB2W)X7WF)x91cxajedw1J)XV6xHxQPpssKkxaYCwbE5vsOiT9K0zwy4SPIVxt3K0LoEUJdxRyjN3YbVz3N(DVhbFDZEcrAmjpSIG3CjqRk9o6Ge8NTjvO3o0uIgZ69I2Z9XgtM5joyKVR7XILTJ6JF0J(ZFPtNoDJ1evkjZsC5wh)g(N29h605w3OVW1jygV5M2AtlsnQ5RnD72T3Addt26KqBNuTM1Qlyc8PceF1PBf6l9F4(py)d7F(V)K)6p
    
This one will rebind your Space button to the Shortcut button while the Mission Table is open, and then change the binding back to whatever you normally use Space for afterwards:

    !WA:2!vw1tVnoru8nQhqkcTucsvLfoyfeLgbkcTcwqG2dXPoTHnnoy7209aYDSNNJhQ9mJMzCBZEGdrCGZ9JqoI4u(iW(fWQcXhG9Jq)eWmXPv7UQrRisr59M59V53737LA9AK3a3a)h7kyfQmcfeUhfmO)qhXLUjjsqvJ)LyIKNHMgaxQctyICKkKhQi5qiEkfLtIdvPcqMYYWtVwMIWSlEELZF6dwGOXPmXigHQI66mmWXJBT(awPvJVzCHuXYnwCehJuGhCoqvVcvOpfPiXJjyvQDhTQafRimQ8jEsfsO25kmlSY7tJQ(L)NKeR9bLnHIj0j2tFgmD3M(J601PzlRF7PwndgSN3H99977o0p0)axVGUhf00sLcuRXDcFJRDh5m0zVq3b7fA3F4E9hUV1txF0bk2Y)UlV98VADPSvucHsKP7u(bNwUj)7UpxF3fulTpe1Qy8YLgtKsdi1E)J6)dhWyN5hliC1UnDP(PSl0rnPGUeh3TL1yaDwNcbs22pgrDmaVC3M3toREFTSEhz4acg(FNHUdC9VldZucYKjGq(WDeRe)xB1uouU5RKfrl5g(fjjKlxe2TJFqOFqhVG5yisFyG2oXbodg17ObL1T3pON7nRiU7PRbtjLAxObSidPeeE6Raz9QOk5FX98WTUNsDrfzlCzzv)UYAKa0LLN)iNbdMj5qwwFSSUUVa3HhTB3ULvglgLzbAUKw9hT0mwT8Btnxb7vetbOkeulLOaSGmjC7bjiJIH4P)EBvLQ7bLBEvbDf8TLUcE0R1rEJGrX8p0mvDoeuz9Hmm8xpG3C9dU5mCOglHtVrpOdckk7yD7sh7ZUsczjvZ)2UbbUhANWOk(M9eKxy9ZfiS2nKvqWCnI5btmCOhTv52xRvJqXNnrVyIITZyiCYvfsiKQHvrAKcLPr3T8YlYuK6Zn3eZYJqQuV4mKuUv53x3wJ3XvcKxagHzMC7Rv(4ijRqedrKCotOwT26KQ1wBmxSSqmmhBL(XETEVJElMlF5MM68p5EbIkbpdEGNhZ0JTRm)ZwpUXfqmXGtBm7cMapwG4ZgVsyXR5wZpNl(vDRKKm1EGtVG5kw85vi821o9xAsW8p61hddD5afWpUGGxi)2GwN3zA8(TE2IeHMC7Rmy(g3uTBUN5iZtnYVRNJZWRqus(YXINu(WE)nGKgha6ev67vUTnLrHRXRgCwY2fsW8ALZmMAcu5X25icTx5rAhkpUCC5jLpx)BJ3(KiTFjKj19IzzmXpTH(Jy6Q)3zrvlP7YBQvR2gZ1ZraE5I)F)9xqOvaPUiQZ3z9aCgmbfpnmjJXePnKEFt7VU9JBC()CY)9d
    
## Farming Torghast Followers?

TLDR Missions has a small module bundled in to help you. Check out the guide here: https://github.com/TLDRMissions/TLDRMissions/wiki/Torghast-Follower-Farm
