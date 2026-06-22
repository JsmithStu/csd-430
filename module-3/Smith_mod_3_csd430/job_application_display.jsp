<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // -----------------------------------------------------------------------------
    // Retrieve the parameters from the request.
    // Use request.getParameter() for single-value fields and
    // request.getParameterValues() for fields that may return multiple values (e.g., checkboxes).
    // These variables will be used later in the page to display the user's input.
    String fullName = request.getParameter("fullName");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String position = request.getParameter("position");
    String education = request.getParameter("education");
    String experience = request.getParameter("experience");
    String[] skills = request.getParameterValues("skills");

    // Provide default values for optional fields if they are missing or empty.
    if (phone == null || phone.trim().equals("")) {
        phone = "N/A";
    }
    if (experience == null || experience.trim().equals("")) {
        experience = "N/A";
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Job Application Submitted</title>
</head>
<body>
    <h1>Application Details</h1>
    <p>Thank you for submitting your job application. Below is a summary of the information you provided.</p>
    <!--
        Display the data in a table. Each row shows a field, the corresponding value,
        and a brief description explaining what the field represents.
    -->
    <table border="1" cellpadding="8" cellspacing="0">
        <tr>
            <th>Field</th>
            <th>Value</th>
            <th>Description</th>
        </tr>
        <tr>
            <td>Full Name</td>
            <td><%= fullName %></td>
            <td>The applicant's full name as entered on the form.</td>
        </tr>
        <tr>
            <td>Email Address</td>
            <td><%= email %></td>
            <td>The primary email address for contacting the applicant.</td>
        </tr>
        <tr>
            <td>Phone Number</td>
            <td><%= phone %></td>
            <td>Optional phone number to reach the applicant.</td>
        </tr>
        <tr>
            <td>Position Applied For</td>
            <td><%= position %></td>
            <td>The position the applicant is interested in.</td>
        </tr>
        <tr>
            <td>Highest Education</td>
            <td><%= education %></td>
            <td>The highest level of education completed by the applicant.</td>
        </tr>
        <tr>
            <td>Years of Experience</td>
            <td><%= experience %></td>
            <td>Number of years of professional experience.</td>
        </tr>
        <tr>
            <td>Skills</td>
            <td>
                <%
                    // Loop through the skills array and display each selected skill.
                    if (skills != null && skills.length > 0) {
                        for (int i = 0; i < skills.length; i++) {
                            if (i > 0) {
                                out.print(", ");
                            }
                            out.print(skills[i]);
                        }
                    } else {
                        out.print("None selected");
                    }
                %>
            </td>
            <td>A list of the technical skills selected by the applicant.</td>
        </tr>
    </table>
    <p>We appreciate your interest in joining our team. Our hiring department will review your application and contact you if your skills and experience match our needs.</p>
</body>
</html>