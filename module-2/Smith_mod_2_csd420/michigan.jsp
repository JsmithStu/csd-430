<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    /*
        * Name: Johnathan Smith
        * Date: June 13, 2026
        * Assignment: Module 2.2 Programming Assignment
     */
       class Attraction {
           String name;
           String location;
           String description;
           String highlights;
           Attraction(String name, String location, String description, String highlights) {
               this.name = name;
               this.location = location;
               this.description = description;
               this.highlights = highlights;
           }
       }

       // Create a list of attractions.  Each record includes:
       //  • name       – the official name of the attraction
       //  • location   – where in Michigan the attraction is found
       //  • description– an overview of what makes the site special
       //  • highlights – key activities or experiences enjoyed at the site
       java.util.List<Attraction> attractions = new java.util.ArrayList<>();

       attractions.add(new Attraction(
               "Mackinac Island",
               "Northern Michigan, Lake Huron",
               "Car‑free island featuring sugar‑sand and pebble beaches, turquoise waters, pine‑scented trails and Victorian‑era architecture",
               "Bike the Shoreline Trail, tour Fort Mackinac, sample Murdick’s fudge, hike to Arch Rock and relax at British Landing Beach"
       ));

       attractions.add(new Attraction(
               "Tahquamenon Falls",
               "Upper Peninsula, Tahquamenon Falls State Park",
               "Twin amber‑colored waterfalls framed by emerald forest and misty river vistas",
               "Hike the River Trail between the Upper and Lower falls, row a rental boat close to the Lower Falls and enjoy views from the Upper Falls overlook"
       ));

       attractions.add(new Attraction(
               "Pictured Rocks National Lakeshore",
               "Northern shoreline of Michigan’s Upper Peninsula on Lake superior",
               "42‑mile stretch of rainbow‑striped sandstone cliffs, caves, natural arches, sandy beaches and waterfalls",
               "Kayak beneath Painted Cliffs, hike the Chapel Loop to Chapel Falls, dive into Lake Superior, tour Sable Light Station and unwind at Sand Point Beach"
       ));

       attractions.add(new Attraction(
               "Holland State Park Beach",
               "Lake Michigan shoreline near Holland, Lower Peninsula",
               "Beach with endless soft golden sand, rolling dunes, sparkling blue waters and a bright red lighthouse",
               "Swim in Lake Michigan, photograph Big Red, hike the Mt. Pisgah Dune Boardwalk, kayak across Lake Macatawa and camp at the beach campground"
       ));

       attractions.add(new Attraction(
               "Historic Gaslight District, Petoskey",
               "Petoskey, Little Traverse Bay, Lower Peninsula",
               "Charming district with ornate Victorian buildings, brick‑lined streets and views of Little Traverse Bay",
               "Browse unique boutiques like Grandpa Shorter’s, dine at local restaurants, enjoy bay vistas from Pennsylvania Park and stay at the Inn at Bay Harbor"
       ));
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Favorite Places in Michigan</title>
    <!-- Link to external stylesheet -->
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>Memorable Places Visited in Michigan</h1>
        <p>This table lists five attractions in the state of Michigan that provide natural beauty, historic charm and unique experiences.</p>
    </header>

    <section>
        <table>
            <caption>Top Michigan Attractions</caption>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Location</th>
                    <th>Description</th>
                    <th>Highlights</th>
                </tr>
            </thead>
            <tbody>
            <%-- Iterate through the list of attractions and render each record. --%>
            <%
                for (Attraction a : attractions) {
            %>
                <tr>
                    <td><%= a.name %></td>
                    <td><%= a.location %></td>
                    <td><%= a.description %></td>
                    <td><%= a.highlights %></td>
                </tr>
            <%
                }
            %>
            </tbody>
        </table>
    </section>

    <footer>
        <p>Compiled by JSP Scriptlets assignment</p>
    </footer>
</body>
</html>