#Setup for Project
library(tidyverse)
library(lubridate)
library(skimr)
library(janitor)
#Collecting and importing Data
Feb_trips <- read.csv('202202-divvy-tripdata.csv')
Mar_Trips <- read.csv('202203-divvy-tripdata.csv')
Apr_Trips <- read.csv('202204-divvy-tripdata.csv')
May_Trips <- read.csv('202205-divvy-tripdata.csv')
June_Trips <- read.csv('202206-divvy-tripdata.csv')
July_Trips <- read.csv('202207-divvy-tripdata.csv')
Aug_Trips <- read.csv('202208-divvy-tripdata.csv')
Sep_Trips <- read.csv('202209-divvy-publictripdata.csv')
Oct_Trips <- read.csv('202210-divvy-tripdata.csv')
Nov_Trips <- read.csv('202211-divvy-tripdata.csv')
Dec_Trips <- read.csv('202212-divvy-tripdata.csv')
Jan23_Trips <- read.csv('202301-divvy-tripdata.csv')
#Confirming all Column names match
colnames(Feb_Trips)
  #[1] "ride_id"            "rideable_type"      "started_at"        
  #[4] "ended_at"           "start_station_name" "start_station_id"  
  #[7] "end_station_name"   "end_station_id"     "start_lat"         
  #[10] "start_lng"          "end_lat"            "end_lng"           
  #[13] "member_casual" 
colnames(Mar_Trips)
  #[1] "ride_id"            "rideable_type"      "started_at"        
  #[4] "ended_at"           "start_station_name" "start_station_id"  
  #[7] "end_station_name"   "end_station_id"     "start_lat"         
  #[10] "start_lng"          "end_lat"            "end_lng"           
  #[13] "member_casual" 
colnames(Apr_Trips)
  #[1] "ride_id"            "rideable_type"      "started_at"        
  #[4] "ended_at"           "start_station_name" "start_station_id"  
  #[7] "end_station_name"   "end_station_id"     "start_lat"         
  #[10] "start_lng"          "end_lat"            "end_lng"           
  #[13] "member_casual" 
colnames(May_Trips)
  #[1] "ride_id"            "rideable_type"      "started_at"        
  #[4] "ended_at"           "start_station_name" "start_station_id"  
  #[7] "end_station_name"   "end_station_id"     "start_lat"         
  #[10] "start_lng"          "end_lat"            "end_lng"           
  #[13] "member_casual" 
colnames(June_Trips)
  #[1] "ride_id"            "rideable_type"      "started_at"        
  #[4] "ended_at"           "start_station_name" "start_station_id"  
  #[7] "end_station_name"   "end_station_id"     "start_lat"         
  #[10] "start_lng"          "end_lat"            "end_lng"           
  #[13] "member_casual" 
colnames(July_Trips)
  #[1] "ride_id"            "rideable_type"      "started_at"        
  #[4] "ended_at"           "start_station_name" "start_station_id"  
  #[7] "end_station_name"   "end_station_id"     "start_lat"         
  #[10] "start_lng"          "end_lat"            "end_lng"           
  #[13] "member_casual" 
colnames(Aug_Trips)
  #[1] "ride_id"            "rideable_type"      "started_at"        
  #[4] "ended_at"           "start_station_name" "start_station_id"  
  #[7] "end_station_name"   "end_station_id"     "start_lat"         
  #[10] "start_lng"          "end_lat"            "end_lng"           
  #[13] "member_casual" 
colnames(Sep_Trips)
  #[1] "ride_id"            "rideable_type"      "started_at"        
  #[4] "ended_at"           "start_station_name" "start_station_id"  
  #[7] "end_station_name"   "end_station_id"     "start_lat"         
  #[10] "start_lng"          "end_lat"            "end_lng"           
  #[13] "member_casual" 
colnames(Oct_Trips)
  #[1] "ride_id"            "rideable_type"      "started_at"        
  #[4] "ended_at"           "start_station_name" "start_station_id"  
  #[7] "end_station_name"   "end_station_id"     "start_lat"         
  #[10] "start_lng"          "end_lat"            "end_lng"           
  #[13] "member_casual" 
colnames(Nov_Trips)
  #[1] "ride_id"            "rideable_type"      "started_at"        
  #[4] "ended_at"           "start_station_name" "start_station_id"  
  #[7] "end_station_name"   "end_station_id"     "start_lat"         
  #[10] "start_lng"          "end_lat"            "end_lng"           
  #[13] "member_casual" 
colnames(Dec_Trips)
  #[1] "ride_id"            "rideable_type"      "started_at"        
  #[4] "ended_at"           "start_station_name" "start_station_id"  
  #[7] "end_station_name"   "end_station_id"     "start_lat"         
  #[10] "start_lng"          "end_lat"            "end_lng"           
  #[13] "member_casual" 
colnames(Jan23_Trips)
  #[1] "ride_id"            "rideable_type"      "started_at"        
  #[4] "ended_at"           "start_station_name" "start_station_id"  
  #[7] "end_station_name"   "end_station_id"     "start_lat"         
  #[10] "start_lng"          "end_lat"            "end_lng"           
  #[13] "member_casual" 
#Now we need to make sure all data type match in each column
compare_df_cols(Feb_Trips, Mar_Trips, Apr_Trips, May_Trips, June_Trips, July_Trips, Aug_Trips, Sep_Trips, Oct_Trips, Nov_Trips, Dec_Trips, Jan23_Trips)
#column_name Feb_Trips Mar_Trips Apr_Trips May_Trips June_Trips July_Trips Aug_Trips Sep_Trips Oct_Trips Nov_Trips Dec_Trips Jan23_Trips
  #1             end_lat   numeric   numeric   numeric   numeric    numeric    numeric   numeric   numeric   numeric   numeric   numeric     numeric
  #2             end_lng   numeric   numeric   numeric   numeric    numeric    numeric   numeric   numeric   numeric   numeric   numeric     numeric
  #3      end_station_id character character character character  character  character character character character character character   character
  #4    end_station_name character character character character  character  character character character character character character   character
  #5            ended_at character character character character  character  character character character character character character   character
  #6       member_casual character character character character  character  character character character character character character   character
  #7             ride_id character character character character  character  character character character character character character   character
  #8       rideable_type character character character character  character  character character character character character character   character
  #9           start_lat   numeric   numeric   numeric   numeric    numeric    numeric   numeric   numeric   numeric   numeric   numeric     numeric
  #10          start_lng   numeric   numeric   numeric   numeric    numeric    numeric   numeric   numeric   numeric   numeric   numeric     numeric
  #11   start_station_id character character character character  character  character character character character character character   character
  #12 start_station_name character character character character  character  character character character character character character   character
  #13         started_at character character character character  character  character character character character character character   character

#Now we need to combine all the data into a big set
all_trips <- bind_rows(Feb_Trips, Mar_Trips, Apr_Trips, May_Trips, June_Trips, July_Trips, Aug_Trips, Sep_Trips, Oct_Trips, Nov_Trips, Dec_Trips, Jan23_Trips)

#Removing any unused columns
all_trips <- all_trips %>% select(-c(start_lat, start_lng, end_lat, end_lng))

#Renaming columns to be more simple and easier to understand
all_trips <- all_trips %>% rename(trip_id = ride_id, ride_type = rideable_type, start_time = started_at, end_time = ended_at, usertype = member_casual)

#Check to make sure new table is good to go
colnames(all_trips)
  #[1] "trip_id"            "ride_type"          "start_time"         "end_time"           "start_station_name" "start_station_id"   "end_station_name"  
  #[8] "end_station_id"     "usertype"  
dim(all_trips)
 #[1] 5754248       9
head(all_trips)
  #           trip_id    ride_type          start_time            end_time           start_station_name start_station_id               end_station_name
  #1 E1E065E7ED285C02 classic_bike 2022-02-19 18:08:41 2022-02-19 18:23:56       State St & Randolph St     TA1305000029         Clark St & Lincoln Ave
  #2 1602DCDC5B30FFE3 classic_bike 2022-02-20 17:41:30 2022-02-20 17:45:56  Halsted St & Wrightwood Ave     TA1309000061 Southport Ave & Wrightwood Ave
  #3 BE7DD2AF4B55C4AF classic_bike 2022-02-25 18:55:56 2022-02-25 19:09:34       State St & Randolph St     TA1305000029            Canal St & Adams St
  #4 A1789BDF844412BE classic_bike 2022-02-14 11:57:03 2022-02-14 12:04:00 Southport Ave & Waveland Ave            13235         Broadway & Sheridan Rd
  #5 07DE78092C62F7B3 classic_bike 2022-02-16 05:36:06 2022-02-16 05:39:00       State St & Randolph St     TA1305000029          Franklin St & Lake St
  #6 9A2F204F04AB7E24 classic_bike 2022-02-07 09:51:57 2022-02-07 10:07:53       St. Clair St & Erie St            13016        Franklin St & Monroe St
  #end_station_id usertype
  #1          13179   member
  #2   TA1307000113   member
  #3          13011   member
  #4          13323   member
  #5   TA1307000111   member
  #6   TA1309000007   member

#Get a summary of data and check for any missing variables
skim(all_trips)
  #── Data Summary ────────────────────────
  #Values   
  #Name                       all_trips
  #Number of rows             5754248  
  #Number of columns          9        
  #_______________________             
  #Column type frequency:              
  #  character                9        
  #________________________            
  #Group variables            None     
  #
  #── Variable type: character ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
  #  skim_variable      n_missing complete_rate min max  empty n_unique whitespace
  #1 trip_id                    0             1  16  16      0  5754248          0
  #2 ride_type                  0             1  11  13      0        3          0
  #3 start_time                 0             1  19  19      0  4824419          0
  #4 end_time                   0             1  19  19      0  4837610          0
  #5 start_station_name         0             1   0  64 843525     1680          0
  #6 start_station_id           0             1   0  37 843525     1312          0
  #7 end_station_name           0             1   0  64 902655     1697          0
  #8 end_station_id             0             1   0  37 902655     1317          0
  #9 usertype                   0             1   6   6      0        2          0
#Breaking the ride data down for easier use in calculations
all_trips$date <- as.Date(all_trips$start_time)
all_trips$month <- format(as.Date(all_trips$date), "%m")
all_trips$day <- format(as.Date(all_trips$date), "%d")
all_trips$year <- format(as.Date(all_trips$date), "%y")
all_trips$day_of_week <- format(as.Date(all_trips$date), "%A")

#Adding a ride length calculation
all_trips$ride_length <- difftime(all_trips$end_time,all_trips$start_time)

#Convert ride length to numeric so we can run calculations
is.factor(all_trips$ride_length)
  #[1] FALSE
all_trips$ride_length <- as.numeric(as.character(all_trips$ride_length))
is.numeric(all_trips$ride_length)
  #[1] TRUE

#When looking at the summary we see that there are a few entries that are negtive due to just being company checks on bikes, we need to remove these
skim(all_trips$ride_length)
  #── Data Summary ────────────────────────
  #Values               
  #Name                       all_trips$ride_length
  #Number of rows             5754248              
  #Number of columns          1                    
  #_______________________                         
  #Column type frequency:                          
  #  numeric                  1                    
  #________________________                        
  #Group variables            None                 
  #
  #── Variable type: numeric ─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
  #skim_variable n_missing complete_rate  mean     sd      p0 p25 p50  p75    p100 hist 
  #1 data                  0             1 1158. 10520. -621201 346 612 1100 2483235 ▁▇▁▁▁
all_trip_v2 <- all_trips[!(all_trips$ride_length<0),]
skim(all_trip_v2)
  #── Data Summary ────────────────────────
  #Values     
  #Name                       all_trip_v2
  #Number of rows             5754148    
  #Number of columns          15         
  #_______________________               
  #Column type frequency:                
  #character                13         
  #Date                     1          
  #numeric                  1          
  #________________________              
  #Group variables            None       

  #── Variable type: character ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
  #   skim_variable      n_missing complete_rate min max  empty n_unique whitespace
  # 1 trip_id                    0             1  16  16      0  5754148          0
  # 2 ride_type                  0             1  11  13      0        3          0
  # 3 start_time                 0             1  19  19      0  4824344          0
  # 4 end_time                   0             1  19  19      0  4837549          0
  # 5 start_station_name         0             1   0  64 843502     1680          0
  # 6 start_station_id           0             1   0  37 843502     1312          0
  # 7 end_station_name           0             1   0  64 902639     1697          0
  # 8 end_station_id             0             1   0  37 902639     1317          0
  # 9 usertype                   0             1   6   6      0        2          0
  #10 month                      0             1   2   2      0       12          0
  #11 day                        0             1   2   2      0       31          0
  #12 year                       0             1   2   2      0        2          0
  #13 day_of_week                0             1   6   9      0        7          0

  #── Variable type: Date ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
  #skim_variable n_missing complete_rate min        max        median     n_unique
  #1 date                  0             1 2022-02-01 2023-01-31 2022-07-27      365
  #
  #── Variable type: numeric ─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
  #skim_variable n_missing complete_rate  mean     sd p0 p25 p50  p75    p100 hist 
  #1 ride_length           0             1 1159. 10517.  0 346 612 1100 2483235 ▇▁▁▁▁
#Summary of Ride_length
summary(all_trip_v2$ride_length)
  #Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  #  0     346     612    1158    1100 2483235 
#Now we export to a CSV file for further analysis
write.csv(all_trip_v2, "data.csv")