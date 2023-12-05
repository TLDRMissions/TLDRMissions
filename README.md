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

    !WA:2!vw1ZUTTny8AKdd1DRPndiDRBhe8WYIXg8Hn0UIn0dwoYjE1XYtsoo9KcL4NS4ImjbjvsCpSdgdyBxZJGpoSt(rypbcbd9bOpc5jyKwUbjfXOycW2KF87p)8p(77tvAVX4nWBG)JTfSCvgHcc3bbD70Z5cuUkLjC5kcJkRkM4MKibvL5iAS2EFgHQIA50lWXJBHjsEgAsaCMkmHjgJuH8qfzmSCxf(dIZLk2yJhd4yKc8GtaQ6n6QW0oqIhsWQu7M6Tcu8IA(upPcjuBDoMfwg9rrL)Y)lsI1UGYMqXe6i7jVaMSDn)(nB5uRU1V(CRAbD3XB)o((DC75h6VNRxqRbb1SuPa1AyZWBCSBFNEo7e62DNq7o92PtVDTE(QZoqXw(xD4BT)nRQK1JsiuImDRI7FuX68V)2c99dO66yiQYCCwL75yOUbkswJwmQIqZbxAtm2L2LHWaE7sSqKsdnQlqsoDbLUD9QwlFUUhn2DqNFypg7y)ybHR2UMl1pLD6nc0AiGoUzUajB4hJOlqGC7A3cUl5O6VVkShbd)VRqRUU(xvHQMVMQeKrJaH8(BjwU812QjCOy93iZJwiY8ZtsiNnpSvt)Gq)GMEbZWqK2yG2pXEoD73Eq3I7AVBqB3lXtOOXK4D0aXGRu7CnZhzu3GWtFeiRwMvj)RUL)9w3cENxQAdxaR7EfS6lanS88770T7ujhYY6GLv1Ie4ksPrJg1TYyXOmlqlk1B)rlT0xV(D14l5(sfUau5cQLsKdwqMeERHeKzJrbR)8wuLQVikw)8C6s6BtncE81UwUrYOy(dnTNNabLEVpdd)9D4F2TobOCHNzqaMV1QhsKbJqXtctYymr65silPC8ITBqG7(2jAro)bTfKxz9Z5iS(IbzfemtZJEWiJ86XBw8Ol0BJqXhpspiJITZ0DcjNNlHqQMSfPrkuMMZ30BCEMIuDM5Ky24iKk1lodjLBw8SQ26BH4YfKxbMftn12xV5tJKSCrmergZzc1fYueMD6HLdfxBMybqm6jBL()3LA0dckk7aTYuFWFo9uMapuG4thUCXSyMEmq5Wv(xSAUHlGyIjhRX)6v71svBOkvaYuwgEYse(Yse(53rC2Yb4IFrFVtsMy31PDWmfl(Ksm(jv(97vJG5F81BCdD5afWFBobpx(KG6N0Cs8U1FX8eHUtWxzUkw7YY3i02yYWar(T8CC6DoIsgVOh6PfFu7)bqstaaDKk9dkEKnLrHlWl7Yw0AiKGHtKtnUAsuXb2JreA7Ib6akoOyyXHfVu)7dFxlr64siJQYRTAgAmdhQlgCKxmlJj(P10pZl5OwlmuPsL1MPBib8Ixf9BF4CcTmfAaU5C9YyOCO0rZVwzQ9L8nKEpPXZA8DBCY)E4)9
## Farming Torghast Followers?

TLDR Missions has a small module bundled in to help you. Check out the guide here: https://github.com/TLDRMissions/TLDRMissions/wiki/Torghast-Follower-Farm
