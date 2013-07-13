###
handywriteOnCanvas - renders handywrite text onto HTML canvas elements

Written in 2013 by Karl Naylor <kpn103@yahoo.com>

To the extent possible under law, the author(s) have dedicated all
copyright and related and neighboring rights to this software to the
public domain worldwide. This software is distributed without any
warranty.

You should have received a copy of the CC0 Public Domain Dedication
along with this software. If not, see
<http://creativecommons.org/publicdomain/zero/1.0/>.
###

'use strict'

linesPath = 'handywriteOnCanvas/graphemes/lines'

it = (description, testFn) ->
  ait description, [linesPath], testFn

beforeEach = (setupFn) ->
  aBeforeEach [linesPath], setupFn

afterEach = (teardownFn) ->
  aAfterEach [linesPath], teardownFn

describe 'N', ->

  it 'is flat', (lines) ->
    n = new lines.classes.n()
    nbb = n.getBoundingBox()
    expect(nbb.top()).toBeCloseTo nbb.bottom(), 5
    expect(n.getEntryAngle()).toBe 0
    expect(n.getExitAngle()).toBe 0
