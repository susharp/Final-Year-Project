function openNav() {
    document.getElementById("mySideNav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
    document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
    document.getElementById("postComplaint").style.backgroundColor = "rgba(0,0,0,0.4)";
    document.getElementById("complaint").style.marginLeft = "300px";
    document.getElementById("form").style.marginLeft = "250px";
}
function closeNav() {
    document.getElementById("mySideNav").style.width = "0";
    document.getElementById("main").style.marginLeft = "0";
    document.body.style.backgroundColor = "white";
    document.getElementById("postComplaint").style.backgroundColor = "white";
    document.getElementById("complaint").style.marginLeft = "auto";
    document.getElementById("form").style.marginLeft = "auto";
}
function member(s1, s2) {
    var s1 = document.getElementById(s1);
    var s2 = document.getElementById(s2);
    s2.innerHTML = "";
    if(s1.value == "Mess" || s1.value == "Food Trucks" || s1.value == "Transport") {
        s2.innerHTML = "Gp. Capt. (Retd.) Ajoy Mudaliar (Director)";
    }
    else if (s1.value == "Hostel") {
        s2.innerHTML = "Col. (Retd.) Prahlad Singh (Director-Hostels)";
    }
    else if(s1.value == "IT") {
        s2.innerHTML = "Mr. Ravi Kant Pachauri (Manager-IT)";
    }
    else if(s1.value == "Fees and Accounts") {
        s2.innerHTML = "Mr. Sunil Kumar Bhargava (Manager)";
    }
    else if(s1.value == "Library") {
        s2.innerHTML = "Mr. Sonu Kumar (Deputy Librarian)";
    }
    else if(s1.value == "MI Room") {
        s2.innerHTML = "Dr. C.P Bandhu (Medical Head)";
    }
    else if(s1.value == "SRC") {
        s2.innerHTML = "Mr. Sudhir Kumar Mishra (Resource head)";
    }
}
