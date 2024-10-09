//
//  FindMoonPhaseImage.swift
//  WeatherForecast
//
//  Created by Jan Hovland on 15/11/2023.
//

//
//  FindMoonPhaseImage.swift
//  WeatherForecast
//
//  Created by Jan Hovland on 15/11/2023.
//

import Foundation
import SwiftUI

func FindMoonPhaseImage(moonPhase: String,
                        moonIllumination: Int) -> (String, Int, Int) {
    
    var image: String = ""
    var daysToFullMoon: Int = 0
    var distance: Int = 0

    if moonPhase == String(localized: "New Moon") { /// Nymåne
        if moonIllumination > 2 || moonIllumination <= 0 {
            image = "New Moon"
            daysToFullMoon = 15
            distance = 400044
        }
    } else if moonPhase == String(localized: "Waxing Crescent") { /// Voksende månesigd
        if moonIllumination >= 0,
           moonIllumination <= 1 {
            image = "Waxing Crescent 1"
            daysToFullMoon = 14
            distance = 358482
        } else if moonIllumination >= 2,
            moonIllumination <= 6 {
            image = "Waxing Crescent 2"
            daysToFullMoon = 13
            distance = 358736
        } else if moonIllumination > 6,
                  moonIllumination <= 12 {
            image = "Waxing Crescent 3"
            daysToFullMoon = 12
            distance = 360330
        } else if moonIllumination >= 13,
                  moonIllumination <= 21 {
            image = "Waxing Crescent 4"
            daysToFullMoon = 11
            distance = 364384
        } else if moonIllumination >= 22,
                  moonIllumination <= 31 {
            image = "Waxing Crescent 5"
            daysToFullMoon = 10
            distance = 369030
        } else if moonIllumination >= 32,
                  moonIllumination <= 42 {
            image = "Waxing Crescent 6"
            daysToFullMoon = 9
            distance = 373386
        }
    } else if moonPhase == String(localized: "First Quarter") { /// Første kvarter
        if moonIllumination >= 43,
           moonIllumination <= 53 {
            image = "First Quarter"
            daysToFullMoon = 8
            distance = 379300
        }
    } else if moonPhase == String(localized: "Waxing Gibbous") { /// Voksende måne
        if moonIllumination >= 54 ,
           moonIllumination <= 63 {
            image = "Waxing Gibbous 1"
            daysToFullMoon = 7
            distance = 385473
        } else if moonIllumination >= 64,
                  moonIllumination <= 73 {
            image = "Waxing Gibbous 2"
            daysToFullMoon = 6
            distance = 389915
        } else if moonIllumination >= 74,
                  moonIllumination <= 81 {
            image = "Waxing Gibbous 3"
            daysToFullMoon = 5
            distance = 394202
        } else if moonIllumination >= 82,
                  moonIllumination <= 88 {
            image = "Waxing Gibbous 4"
            daysToFullMoon = 4
            distance = 397830
        } else if moonIllumination >= 89,
                  moonIllumination <= 94 {
            image = "Waxing Gibbous 5"
            daysToFullMoon = 3
            distance = 400784
        } else if moonIllumination >= 95,
                  moonIllumination <= 97 {
            image = "Waxing Gibbous 6"
            daysToFullMoon = 2
            distance = 403244
        } else if moonIllumination >= 98,
                  moonIllumination <= 99 {
            image = "Waxing Gibbous 6"
            daysToFullMoon = 1
            distance = 404744
        }
    } else if moonPhase == String(localized: "Full Moon") { /// Fullmåne
        if moonIllumination == 100 {
            image = "Full moon"
            daysToFullMoon = 30
            distance = 404044
        }
    } else if moonPhase == String(localized: "Waning Gibbous") { /// Minkende måne
        if moonIllumination <= 100 ,
           moonIllumination >= 98 {
            image = "Waning Gibbous 1"
            daysToFullMoon = 29
            distance = 402492
        } else if moonIllumination <= 97 ,
                  moonIllumination >= 96 {
            image = "Waning Gibbous 2"
            daysToFullMoon = 28
            distance = 404232
        } else if moonIllumination <= 95 ,
                  moonIllumination >= 91 {
            image = "Waning Gibbous 3"
            daysToFullMoon = 27
            distance = 405399
        } else if moonIllumination <= 90,
                  moonIllumination >= 85 {
            image = "Waning Gibbous 4"
            daysToFullMoon = 26
            distance = 405656
        } else if moonIllumination <= 84,
                  moonIllumination >= 78 {
            image = "Waning Gibbous 5"
            daysToFullMoon = 25
            distance = 405044
        } else if moonIllumination <= 77,
                  moonIllumination >= 70 {
            image = "Waning Gibbous 6"
            daysToFullMoon = 24
            distance = 403383
        } else if moonIllumination <= 69,
                  moonIllumination >= 61 {
            image = "Waning Gibbous 7"
            daysToFullMoon = 23
            distance = 400605
        } else if moonIllumination <= 60,
                  moonIllumination >= 51 {
            image = "Siste kvarter"
            daysToFullMoon = 22
            distance = 396717
        }
    } else if moonPhase == String(localized: "Last Quarter") { /// Siste kvartal
        if moonIllumination <= 50,
           moonIllumination >= 41 {
            image = "Last Quarter"
            daysToFullMoon = 21
            distance = 391824
        }
    } else if moonPhase == String(localized: "Waning Crescent") { /// Minkende måne 
        if moonIllumination <= 50,
           moonIllumination >= 41 {
            image = "Last Quarter"
            daysToFullMoon = 21
            distance = 391824
        }
        else if moonIllumination <= 40,
           moonIllumination >= 31 {
            image = "Waning Crescent 1"
            daysToFullMoon = 20
            distance = 386639
        } else if moonIllumination <= 30,
                  moonIllumination >= 22 {
            image = "Waning Crescent 2"
            daysToFullMoon = 19
            distance = 379983
        } else if moonIllumination <= 21,
                  moonIllumination >= 13 {
            image = "Waning Crescent 3"
            daysToFullMoon = 18
            distance = 373790
        } else if moonIllumination <= 21,
                  moonIllumination >= 13 {
            image = "Waning Crescent 4"
            daysToFullMoon = 18
            distance = 373790
        } else if moonIllumination <= 14,
                  moonIllumination >= 6 {
            image = "Waning Crescent 5"
            daysToFullMoon = 17
            distance = 368060
        } else if moonIllumination <= 5,
                  moonIllumination >= 2 {
            image = "Waning Crescent 6"
            daysToFullMoon = 16
            distance = 362985
        }
    }
    
    return (image, daysToFullMoon, distance)
}
