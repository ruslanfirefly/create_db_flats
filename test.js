import _ from "lodash"
import Promise from 'bluebird';
import db from 'sqlite';
import readline from "readline"
import fs from "fs"

function addToBase(filePath) {
  "use strict";
  let lineReader = readline.createInterface({
    input:fs.createReadStream(filePath)
  });

  lineReader.on('line', function (line) {
    let arr = line.split(";");
    // console.log(line)
    if (arr.length == 16) {
      arr = arr.map(el => _.trim(el));
      db.run(`INSERT INTO address (rooms, metro,street,house_number,floor,floors,total_sq,live_sq,kitchen_sq,day,month,year, base,price,currency,observation) VALUES ('${arr[0]}','${arr[1]}','${arr[2]}','${arr[3]}','${arr[4]}','${arr[5]}','${arr[6]}','${arr[7]}','${arr[8]}','${arr[9]}','${arr[10]}','${arr[11]}','${arr[12]}','${arr[13]}','${arr[14]}','${arr[15]}')`)
        .then((res) => {
          "use strict";
          console.log(line)
        })
        .catch((err) => {
          "use strict";
          console.log(line)
          console.log(err)
        })
    }
    if (arr.length == 14) {
      arr = arr.map(el => _.trim(el));
      let date = arr[9].split(".")
      db.run(`INSERT INTO address (rooms, metro,street,house_number,floor,floors,total_sq,live_sq,kitchen_sq,day,month,year, base,price,currency,observation) VALUES ('${arr[0]}','${arr[1]}','${arr[2]}','${arr[3]}','${arr[4]}','${arr[5]}','${arr[6]}','${arr[7]}','${arr[8]}','${date[0]}','${date[1]}','${date[2]}','${arr[12]}','${arr[13]}','${arr[14]}','${arr[15]}')`)
        .then((res) => {
          "use strict";
          console.log(line)
        })
        .catch((err) => {
          "use strict";
          console.log(line)
          console.log(err)
        })
    }
  });
}
Promise.resolve()
  .then(() => db.open('./database1.sqlite', {Promise}))
  .then(() => db.migrate({force: 'last'}))
  .then(() => {
    "use strict";
    addToBase("./csv/299/1.csv")
  })
  .then(res=>{
    "use strict";
    console.log(res)
  })
  .catch(err => console.error(err.stack))
// Finally, launch Node.js app
// .finally(() => app.listen(port));


