const { readFile } = require('fs/promises')
const { xsltProcess, xmlParse } = require('xslt-processor')
const path = require('path')
const fastify = require('fastify')({ logger: true })

fastify.addContentTypeParser( 
  ['text/xml', 'application/xml', 'application/soap+xml'], 
  { parseAs: "string" },
  function (req, body, done) {
    done(null, body)
  }
)

fastify.post('/', async (request, reply) => {
  const soapAction = request.headers.soapaction
  const pathToXstlFile = path.join(__dirname, 'xml', soapAction, 'Transform.xslt')
  const xsltFile = await readFile(pathToXstlFile, 'utf-8')
  const replyFromXstl = xsltProcess( xmlParse(request.body), xmlParse(xsltFile) )
  
  reply
    .header('Content-Type', 'application/soap+xml; charset=utf-8')
    .send(replyFromXstl)
})

fastify.get('/', async (request, reply) => {
  return `Эмулятор сервиса "Вызов врача на дом"`
})

const start = async () => {
  try {
    await fastify.listen(3000)
  } catch (err) {
    fastify.log.error(err)
    process.exit(1)
  }
}

start()