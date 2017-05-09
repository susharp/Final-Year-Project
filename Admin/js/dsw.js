function openNav() {
    document.getElementById("mySideNav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
    document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
    document.getElementById("postComplaint").style.backgroundColor = "rgba(0,0,0,0.4)";
    document.getElementsByName("form").style.marginLeft = "250px";
}
function closeNav() {
    document.getElementById("mySideNav").style.width = "0";
    document.getElementById("main").style.marginLeft = "0";
    document.body.style.backgroundColor = "white";
    document.getElementById("postComplaint").style.backgroundColor = "white";
    document.getElementsByName("form").style.marginLeft = "auto";
}
function clear() {

}
