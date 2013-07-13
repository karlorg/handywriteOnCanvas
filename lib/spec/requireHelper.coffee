# helpers for using Jasmine with asynchronous require.js loads
#
# based on Pavan Podila's blog post http://blog.pixelingene.com/2011/12/simple-helper-method-for-async-testing-with-jasmine/

window.ait = (description, modules, testFn) ->
  it description, ->
    readyModules = []
    waitsFor ->
      require modules, -> readyModules = arguments
      return readyModules.length is modules.length

    runs ->
      arrayOfModules = Array.prototype.slice.call readyModules
      testFn(arrayOfModules...)
      return

window.aBeforeEach = (modules, setupFn) ->
  readyModules = []
  beforeEach ->
    waitsFor ->
      require modules, -> readyModules = arguments
      return readyModules.length is modules.length

    runs ->
      arrayOfModules = Array.prototype.slice.call readyModules
      setupFn(arrayOfModules...)
      return

window.aAfterEach = (modules, teardownFn) ->
  readyModules = []
  beforeEach ->
    waitsFor ->
      require modules, -> readyModules = arguments
      return readyModules.length is modules.length

    runs ->
      arrayOfModules = Array.prototype.slice.call readyModules
      teardownFn(arrayOfModules...)
      return
