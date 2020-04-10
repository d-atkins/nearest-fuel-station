## Mod 3 Practice Diagnostic

### Setup instructions
```
bundle
rails db:create
figaro install
```

Today's Practice Challenge:

[Clone down nearest-fuel-station](https://github.com/turingschool-examples/nearest-fuel-station)

We will be using:

1. The NREL API:
[Alternate fuel station - nearest station endpoint](https://developer.nrel.gov/docs/transportation/alt-fuel-stations-v1/nearest/)

[Sign up for a key here](https://developer.nrel.gov/signup/)

1. The Google Directions API:
[endpoint](https://developers.google.com/maps/documentation/directions/start)

[Sign up for a key here](https://cloud.google.com/maps-platform/?_ga=2.209001618.1254742974.1571934871-2016725719.1571934871&refresh=1#get-started)

```
We will be searching for the nearest electric charging station to Turing.
As a user
When I visit "/"
And I select "Turing" form the start location drop down (Note: Use the existing search form)
And I click "Find Nearest Station"
Then I should be on page "/search"
Then I should see the closest electric fuel station to me.
For that station I should see
- Name
- Address
- Fuel Type
- Access Times
I should also see:
- the distance of the nearest station (should be 0.1 miles)
- the travel time from Turing to that fuel station (should be 1 min)
- The direction instructions to get to that fuel station
  "Turn left onto Lawrence St Destination will be on the left"
```
