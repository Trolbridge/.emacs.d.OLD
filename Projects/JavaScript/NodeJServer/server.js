import { createServer } from 'http'
import { readFile } from 'fs'

const server = createServer(function(req, res) {
  res.writeHead(200, { 'Content-Type': 'text/html' })
  readFile('index.html', function(error, data) {
    if (error) {
      res.writeHead(404)
      res.write('Error: File Not Found');
  // res.write('hello node');
    } else {
      res.write(data)
    }
      res.end()
  })
})

server.listen(port, function(error) {
  if (error) {
    console.error('Something went wrong', error);
  } else {
    console.log('Server is listening on port ' + port);
  }

)}
