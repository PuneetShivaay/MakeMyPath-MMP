// var country = ["Norway", "Sweden", "Denmark", "hh"];
// var capital = ["Oslo", "Stockholm", "Copenhagen", "ok"]
// var table = document.createElement('table'),
//     thead = document.createElement('thead'),
//     tbody = document.createElement('tbody'),
//     th,
//     tr,
//     td;
// th = document.createElement('th'),
//     th.innerHTML = "County";
// table.appendChild(th);
// th = document.createElement('th');
// th.innerHTML = "Capital"
// table.appendChild(th);
// table.appendChild(thead);
// table.appendChild(tbody);

// document.body.appendChild(table);
// for (var i = 0; i < country.length; i++) {
//     tr = document.createElement('tr'),
//         //for county
//         td = document.createElement('td');
//     td.innerHTML = country[i];
//     tr.appendChild(td);

//     //for capital
//     td = document.createElement('td');
//     td.innerHTML = capital[i];
//     tr.appendChild(td);
//     tbody.appendChild(tr);
// }

let mountains = [
    { name: "Monte Falco", height: 1658, place: "Parco Foreste Casentinesi" },
    { name: "Monte Falterona", height: 1654, place: "Parco Foreste Casentinesi" },
    { name: "Poggio Scali", height: 1520, place: "Parco Foreste Casentinesi" },
    { name: "Pratomagno", height: 1592, place: "Parco Foreste Casentinesi" },
    { name: "Monte Amiata", height: 1738, place: "Siena" }
];

function generateTableHead(table, data) {
    let thead = table.createTHead();
    let row = thead.insertRow();
    for (let key of data) {
        let th = document.createElement("th");
        let text = document.createTextNode(key);
        th.appendChild(text);
        row.appendChild(th);
    }
}

function generateTable(table, data) {
    for (let element of data) {
        let row = table.insertRow();
        for (key in element) {
            let cell = row.insertCell();
            let text = document.createTextNode(element[key]);
            cell.appendChild(text);
        }
    }
}

let table = document.querySelector("table");
let data = Object.keys(mountains[0]);
generateTableHead(table, data);
generateTable(table, mountains);