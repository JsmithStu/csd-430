<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--
    Johnathan Smith
    6/21/2026
    Assignment: Module 3 CSD430 - JSP Data Collection Form
-->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Job Application Form</title>
</head>
<body>
    <h1>Job Application</h1>
    <p>Please complete the form below to apply for a position with our company. All fields marked with an asterisk (*) are required.</p>
    <form action="job_application_display.jsp" method="post">
        <!-- Full Name Text Field -->
        <label for="fullName">Full Name*:</label>
        <input type="text" id="fullName" name="fullName" required>
        <br><br>

        <!-- Email Address Text Field -->
        <label for="email">Email Address*:</label>
        <input type="email" id="email" name="email" required>
        <br><br>

        <!-- Phone Number (optional) -->
        <label for="phone">Phone Number:</label>
        <input type="tel" id="phone" name="phone">
        <br><br>

        <!-- Position Applying For Select Dropdown -->
        <label for="position">Position Applying For*:</label>
        <select id="position" name="position" required>
            <option value="">--Select Position--</option>
            <option value="Software Engineer">Software Engineer</option>
            <option value="Project Manager">Project Manager</option>
            <option value="Quality Assurance">Quality Assurance</option>
            <option value="Product Designer">Product Designer</option>
        </select>
        <br><br>

        <!-- Education Level Radio Buttons -->
        <p>Highest Level of Education*:</p>
        <input type="radio" id="highSchool" name="education" value="High School" required>
        <label for="highSchool">High School</label>
        <input type="radio" id="bachelor" name="education" value="Bachelor's Degree">
        <label for="bachelor">Bachelor's</label>
        <input type="radio" id="master" name="education" value="Master's Degree">
        <label for="master">Master's</label>
        <input type="radio" id="phd" name="education" value="PhD">
        <label for="phd">PhD</label>
        <br><br>

        <!-- Years of Experience Number Input -->
        <label for="experience">Years of Professional Experience:</label>
        <input type="number" id="experience" name="experience" min="0" max="50">
        <br><br>

        <!-- Skills Checkboxes -->
        <p>Select Your Skills:</p>
        <input type="checkbox" id="skillJava" name="skills" value="Java">
        <label for="skillJava">Java</label>
        <input type="checkbox" id="skillPython" name="skills" value="Python">
        <label for="skillPython">Python</label>
        <input type="checkbox" id="skillSQL" name="skills" value="SQL">
        <label for="skillSQL">SQL</label>
        <input type="checkbox" id="skillDesign" name="skills" value="UI/UX Design">
        <label for="skillDesign">UI/UX Design</label>
        <br><br>

        <!-- Submission -->
        <input type="submit" value="Submit Application">
    </form>
</body>
</html>