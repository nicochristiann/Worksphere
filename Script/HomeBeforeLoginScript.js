var industry = document.getElementById("jobs-industry");
var loc = document.getElementById("jobs-location");
var popular = document.getElementById("jobs-popular");
var company = document.getElementById("jobs-company");

function hideShowIndustry() {

    industry.style.visibility = "visible";

    popular.style.visibility = "hidden";
    loc.style.visibility = "hidden";
    company.style.visibility = "hidden";
}

function hideShowLocation() {

    loc.style.visibility = "visible";

    popular.style.visibility = "hidden";
    industry.style.visibility = "hidden";
    company.style.visibility = "hidden";
}

function hideShowPopular() {

    popular.style.visibility = "visible";

    loc.style.visibility = "hidden";
    industry.style.visibility = "hidden";
    company.style.visibility = "hidden";
}

function hideShowCompany() {

    company.style.visibility = "visible";

    popular.style.visibility = "hidden";
    loc.style.visibility = "hidden";
    industry.style.visibility = "hidden";
}