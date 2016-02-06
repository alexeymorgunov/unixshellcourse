#!/bin/sh
echo "car, van, jeep, bicycle or something entirely different?"
read rental
case $rental in
   "car") echo "For $rental £30 per day";;
   "van") echo "For $rental £50 per day";;
   "jeep") echo "For $rental £60 per day";;
   "bicycle") echo "For $rental £7 per day";;
   *) echo "Sorry, I can not get a $rental for you";;
esac