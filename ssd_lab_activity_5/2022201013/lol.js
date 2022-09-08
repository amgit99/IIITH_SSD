function add(){
    var rollno = document.getElementById("rol").value;
    var name = document.getElementById("nam").value;

    var table = document.getElementById("tab");

    var row = table.insertRow(table.rows.length);

    var rollnoData = row.insertCell(0);
    var nameData = row.insertCell(1);

    rollnoData.innerHTML = rollno;
    nameData.innerHTML = name;
}

function del(){
    var table = document.getElementById("tab");
    if (table.rows.length>1)
    table.deleteRow(table.rows.length-1);
}