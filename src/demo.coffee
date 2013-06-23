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

window.load = -> require ['handywriteOnCanvas'], (hoc) ->
  doc = window.document

  renderer = new hoc.DocumentRenderer(doc)

  words = [
    { p: ['Th', 'uh'], w: 'the' },
    { p: ['l', 'i', 'r', 'ng'], w: 'leering' },
    { p: ['k', 'w', 'ih', 'k'], w: 'quick' },
    { p: ['b', 'r', 'a', 'u', 'n'], w: 'brown' },
    { p: ['f', 'a', 'k', 's'], w: 'fox' },
    { p: ['w', 'a', 'z'], w: 'was' },
    { p: ['k', 'aw', 't'], w: 'caught' },
    { p: ['j', 'c', 'm', 'p', 'ng'], w: 'jumping' },
    { p: ['o', 'v', 'r'], w: 'over' },
    { p: ['Th', 'uh'], w: 'the' },
    { p: ['l', 'ey', 'z', 'i'], w: 'lazy' },
    { p: ['d', 'a', 'g', 'z'], w: "dog's" },
    { p: ['sh', 'ay', 'n', 'i'], w: 'shiny' }
    { p: ['h', 'ae', 't'], w: 'hat' }
    ]

  body = doc.getElementById('body')

  para = doc.createElement('p')
  textNode = doc.createTextNode( (word.w for word in words).join(' ') )
  para.appendChild(textNode)
  body.appendChild(para)

  for pw in words
    { p: phonemes, w: word } = pw
    canvas = renderer.createCanvas(phonemes, word)
    body.appendChild(canvas)

  return true
