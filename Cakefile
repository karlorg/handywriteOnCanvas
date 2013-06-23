{spawn} = require 'child_process'

task 'build', 'Compile handywriteOnCanvas into the .compiled directory', ->
  proc = spawn 'coffee', ['-c', '-o', '.compiled', 'src']
  proc.stdout.on 'data', (data) -> console.log data.toString()
  proc.stderr.on 'data', (data) -> console.log data.toString()
  proc.on 'exit', (status) ->
    process.exit(1) if status != 0

