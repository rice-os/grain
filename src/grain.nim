import nimscripter, nimscripter/[variables, vmops]
import os, options, httpclient, asyncdispatch
include args
  

proc download(c: AsyncHttpClient, urls: seq[string]): Future[void] {.async.}:
  for file in urls:
    

if spec.install.seen:
  

  let script = readFile("examples/pyrospec")
  addVmops(pyrospec)
  addCallable(pyrospec):
    proc build(): void
  const addins = implNimscriptModule(pyrospec)
  var res = loadScript(NimScriptFile(script), addins)

  getGlobalNimsVars res:
    name: string
    desc: string
    version: string
    license: string
    deps: Option[seq[string]]
    opts: Option[seq[string]]
    provides: Option[seq[string]]
    src: string
  

  echo src

  try: res.invoke(prepare) except CatchableError: discard
  try: res.invoke(build) except CatchableError: discard
  try: res.invoke(install) except CatchableError: discard
  try: res.invoke(clean) except CatchableError: discard