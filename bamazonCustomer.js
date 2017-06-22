var inquirer = require('inquirer');
var mysql = require('mysql');

var connection = mysql.createConnection({
	host: 'localhost',
	port: 3306,
	user: 'root',
	password: '',
	database: 'bamazon_dB'
});


connection.connect(function(err) {
	if (err) throw err;
	queryAllData();
  	
});


function queryAllData() {
	connection.query("SELECT * FROM products", function(err, res) {
		if (err) throw err;
		for (var i = 0; i < res.length; i++) {
			console.log(res[i].item_id + " | " + res[i].product_name + " | " + res[i].price);
		}
		console.log("-----------------------------------");
	});
}


function runSearch() {
	inquirer.prompt({
		name: "action",
		type: "list",
		message: "What would you like to do?",
		choices: [
		"Find product by id",
		"Number of units to purhase",
		]
	}).then(function(answer) {
		switch (answer.action) {
			case "Find product by id":
				productSearch();
				break;

			case"Number of units to purhase":
				unitsCalc();
				break;
		}
	});
}
function productSearch() {
	inquirer
	.prompt({
		name: "item_id",
		type: "input",
		message: "What id or product would you like to buy?"

	})
}


runSearch();

