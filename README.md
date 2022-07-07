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

!WA:2!fsvZUTTrq4i4dbri)vfaN2KEqqf1qcTWOiO1fOa9GOeLSAKfvjPQspuqVK7qXnMC3f7Uu2mhf6HE2pc6CpPhH(eqyu0hG8i4NGU8NeKwyJOlAMLZoZ333mZ2yuRKw4w4)ORGLQIjuqyTWD6KzMIlScdLGQXvYieMD(Vw5(53zhIgeXeZzeQYFG5mxtBEBmrYJrzUWfkVqMibP84Ekscu71G)4GuPILueXcogPaBynqvVfLQpfPibljyvKrFTRafOimQ8iBPcjuhCjM5vD7t9R(N)6L99CNo0(KjootSM54zn3CM5qpRPd9mMmB4KzJB)JThdkdcftORmYEjK1TJZ8(dm70RTZ7)W7o7RB35)KpNJTSDhSWTtpDGe1b5p808hXrLXqKYc4D44ft(HJzSZCceeUQBhlQte7CDQctPLmOBV2lb0z9tfi5HobiQzbLLD7CdqxJkGI75hQlNmQUEF)nb0po17TrjiRwbc5dpquB(pgQmoK)O3kt9lvEN0WqYf78g03X1ZXTVT7UkX1lIGb7IMho)EgJDhzDnoJIsibd1ePGxrAO9SpGKcqLkOTvIuOGev5xYFYnaZnsoehpblB(EGmxaAGy7m3C603bHsSEpBDvbztJuDhWVy(ceBXGVg4U6Vlo2C68rlMEzkTMJn5FsXOZAWTY)egg(Z7W7C7tNjmSNMtWPxRNMbbff)lAvtZQZUucXHvd5gwUUwNyeYOk(JhjiVP9pNIW6RHA76UvtdByvXaXZ2p)PxPD9rbNTsVprXgXmeEKHK8gyF7K0yfPPHwac2p)OM2bXiPSWYxHI16qH5MII4Od)Z8LSura4ts4mHQEj8vvlH7TvuwXcvWqPz1LikjPS1Cu(dgL)udkJc)fGKGJsa0vQO7EfUU5vQTcjeWOy5MIykstEFJeeHQVBE)CJ7MpiFyUP28j))t4p)gvZkJ8NVv3kbC5U8VFF(xC7kpxabKcLEprw9ln8V62dVEc0tfjazelgNzhWIzIFAp9pXR1tnKWmJPMJC3QybRRAIFAJt)ToeC9Gy9ARNfhOa(fPe8o5352BD)SGX9E5UqHEytlx626Exx9g3OIJkuhFNb2MMZ4hC7amgwHcY8cJzmrKVwCdjRAEL(1nDES4LVN1C3hC9oFjFxvtDqjpA0OXEBl6jK6yj0QcO9AU5CMaVuG4BwwB0sA)Th(nh(IwR)7x9Vd

    
## Farming Torghast Followers?

TLDR Missions has a small module bundled in to help you. Check out the guide here: https://github.com/TLDRMissions/TLDRMissions/wiki/Torghast-Follower-Farm
