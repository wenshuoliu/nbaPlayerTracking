# list of addresses for raw data.
addressList <- list(pullup_address = "http://stats.nba.com/js/data/sportvu/pullUpShootData.js",
                    drives_address = "http://stats.nba.com/js/data/sportvu/drivesData.js", defense_address = "http://stats.nba.com/js/data/sportvu/defenseData.js",
                    passing_address = "http://stats.nba.com/js/data/sportvu/passingData.js",
                    touches_address = "http://stats.nba.com/js/data/sportvu/touchesData.js",
                    speed_address = "http://stats.nba.com/js/data/sportvu/speedData.js", rebounding_address = "http://stats.nba.com/js/data/sportvu/reboundingData.js",
                    catchshoot_address = "http://stats.nba.com/js/data/sportvu/catchShootData.js",
                    shooting_address = "http://stats.nba.com/js/data/sportvu/shootingData.js")

items <- gsub("_address", "", names(addressList))

for(j in 1:length(addressList)){
  item <- gsub("_address", "", names(addressList[j]))
  assign(item, readIt(addressList[[j]]))
}

remove(item, j)

save(list = ls(), file = "rawdata/data.RData")
