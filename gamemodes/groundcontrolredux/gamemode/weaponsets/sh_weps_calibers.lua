AddCSLuaFile()

-- Manage all ammunition types here
-- Weight recorded is that of the whole cartridge in grams
function GM:RegisterCalibers()
    GAMEMODE:registerCaliber(".22LR", 3.68, 2)
    GAMEMODE:registerCaliber(".30 Carbine", 12.8, 12)
    GAMEMODE:registerCaliber(".30-06", 25, 33)
    GAMEMODE:registerCaliber(".300 Blackout", 17, 15)
    GAMEMODE:registerCaliber(".303 British", 26.76, 27, {".303"})
    GAMEMODE:registerCaliber(".32 ACP", 7.6, 2, {"7.65x17MM"})
    GAMEMODE:registerCaliber(".338 Lapua", 49, 41)
    GAMEMODE:registerCaliber(".357 Magnum", 15.7, 9, {".357", "357"})
    GAMEMODE:registerCaliber(".357 SIG", 14.4, 9)
    GAMEMODE:registerCaliber(".38 Special", 15.1, 2)
    GAMEMODE:registerCaliber(".380 ACP", 9.4, 2, {"9x17MM"})
    GAMEMODE:registerCaliber(".380/200", 17, 1)
    GAMEMODE:registerCaliber(".410 Bore", 21, 1)
    GAMEMODE:registerCaliber(".44 Magnum", 24.5, 13)
    GAMEMODE:registerCaliber(".45 ACP", 20.85, 2)
    GAMEMODE:registerCaliber(".50 AE", 45, 12)
    GAMEMODE:registerCaliber(".50 BMG", 117.48, 51)
    GAMEMODE:registerCaliber(".500 S&W", 46.5, 11, {".500", ".500 S&W Magnum", ".500 Magnum"})
    GAMEMODE:registerCaliber("10mm Auto", 17.25, 11, {"alyxgun"})
    GAMEMODE:registerCaliber("12 Gauge", 36, 2, {"buckshot"})
    GAMEMODE:registerCaliber("12.7x55MM", 70, 9)
    GAMEMODE:registerCaliber("4 Bore", 113, 2)
    GAMEMODE:registerCaliber("4.6x30mm", 7, 19, {"smg1"})
    GAMEMODE:registerCaliber("40MM", 230, 0)
    GAMEMODE:registerCaliber("5.45x39MM", 10, 24)
    GAMEMODE:registerCaliber("5.56x45MM", 12.3, 28)
    GAMEMODE:registerCaliber("5.7x28MM", 6.15, 18)
    GAMEMODE:registerCaliber("7.62x25MM", 10.6, 11)
    GAMEMODE:registerCaliber("7.62x39MM", 17.5, 20, {"ar2"})
    GAMEMODE:registerCaliber("7.62x51MM", 23.5, 29, {"airboatgun"})
    GAMEMODE:registerCaliber("7.62x54mmR", 26.2, 29)
    GAMEMODE:registerCaliber("7.92x33MM", 17.5, 16)
    GAMEMODE:registerCaliber("7.92x57MM", 27.1, 29, {"7.92x57MM Mauser", "8mm Mauser", "8x57MM"})
    GAMEMODE:registerCaliber("9x18MM", 10, 4)
    GAMEMODE:registerCaliber("9x19MM", 12.7, 7, {"pistol"})
    GAMEMODE:registerCaliber("9x21MM", 11, 14)
    GAMEMODE:registerCaliber("9x39MM", 23, 15)
end
