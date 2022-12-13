# Polar-Bears-ValetBike

Smith College CSC223: Software Engineering

Team members:
Sulagna Saha
Amanda Colby
Janice Smith
Nandini Chakravorty
Liam Knight

## Instructions for setting up the dev environment
Run `bundle install` to install required gems.
Create databases with `rake db:create`
Migrate the database with `rake db:migrate`
Populate the database (by importing data from CSV files) with `rake stations` and `rake bikes`

## MVP’s Functionality

The current MVP functionality consists of the following pages: Home, About, Station Map, Pricing, Sign Up and Log In.
- Our home page provides the user the ability to click through any one of these pages and also includes a direct link to the station map (Find a Bike).
- The About page allows users to navigate through “Instructions”, “What is ValetBike?”, “Who Are We?” and “FAQ”. These pages each contain information about instructions on how to use the bike, as well as information on ValetBike, the development team and common questions that users have.
- The Station Map page provides an interactive map where the user can move their cursor around in the map.
    - There are pinpoints on the locations of stations, when a pinpoint is clicked a small popup appears with the information of the location name, the address, the total dock count, the current docked bike count and the current available docks. Dock count and available bikes are dynamically updated based on the bike the user selects and the station the bike is returned to.
    - Below the map, there is a list of linked stations that the user can click on. When a link is clicked, if the user is not logged in, they are prompted to log in.
    - If a user is logged in, to start the ride from a station, the user must click on the station and a list of bike numbers appears. When a bike number is clicked the user unlocks a bike.
    - The user is then directed to a new page and given a drop down menu of where they would like to return their bike.
    - When the bike is returned, they have completed their ride and can return to the station map page. The user cannot return a bike to a station with no available docks.
    - Once the ride is completed, the user can see all the information regarding the ride including the station where the bike was taken from, the bike number, and where the bike was returned. This information can also be accessed through ride history which is linked on the user profile.    
- The Pricing page provides a pay per ride deal. When the user clicks on the “Pay per Ride” box, they are led to a page that describes how our payment plan and process works. Everyone starts with 100 points and whenever the user checks out a bike, 10 points are automatically deducted from their account. They can view the number of points they have in their profile page. They can also hit a button in their profile page to "purchase" 100 points, whenever they want. If they have 0 points, they cannot check out a new bike and in fact, they will not even see the list of stations below the station map. Instead they will see a message saying that they need to buy more points.
- The Sign Up button navigates the user to a page where they can enter their email, password and password confirmation. Once the user signs up, the user is added to the database and are given more functionality according to their account.
- The Sign in button navigates the user to a page where they can sign in to their account with their email and password. Once signed in the user is brought back to the home page. The “Sign Up” and “Sign In” buttons are now “Profile” and “Logout”, which logged in users can access. When “Profile” is clicked, users can edit their password, their email and check the status of their membership. The Logout button, logs the user out and they are immediately redirected to the home page.

## Summary of changes since prototype
Since the prototype, our group has changed the appearance of our page. We switched to a darker color scheme, while windows, buttons, and form-fields all have a more rounded, bubble-like appearance. We have also added more features to our Station Map, Sign In, Profile, Log Out and Pricing pages. For our station map, we have included pinpoints that when clicked on, provide a small pop up box of information about that current station location. We have also added the feature that unlocks the bike and returns it to a specific location. When a user signs into or logs out of their account, they are now redirected to our home page. For our Profile page, we added the option to edit the user's email address. For our pricing page, we have added a few features.
Recommended Walkthrough
The user can begin by clicking on the Sign Up button and creating an account in order to gain access to more of the website's features. After creating an account, the user is given the ability to edit password, edit their email or logout or sign back in. Once logged in, the user can click on the “About” page to gain insight  “Information”, “What is ValetBike?”, “Who Are We?” and “FAQ”, where the user can learn more about the bikes and our development team. Next, it is recommended that the user explore our payment system, by clicking on our “Pricing” page. Finally, it is recommended that the user go to our “Station Map” page, this can either be accessed through the “Find a Bike” link or our “Station Map” link on the home page. Once on this page, the user can click through the pinpoints on the map and move their cursor through locations to inquire information about each of the stations and their availability. Below the map, the user may click on a Station link and then a Bike number link in order to unlock a bike and ride. Once the user’s ride is completed, they can return their bike by indicating the station they are returning their bike to through a drop down menu and completing the return through the “Return Now” link. Now the user can log out through the “Logout” button or choose to continue exploring the page.


## Link to live production deployment of application
https://valetbikes.herokuapp.com/


## License

Copyright 2021-2022, Johanna Brewer

This program is free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU Affero General Public License along with this program. If not, see https://www.gnu.org/licenses.
