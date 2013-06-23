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
    { p: ['zh', "'"], w: 'the' },
    { p: ['l', 'ii', 'r', 'ng'], w: 'leering' },
    { p: ['k', 'w', 'i', 'k'], w: 'quick' },
    { p: ['b', 'r', 'o', 'uu', 'n'], w: 'brown' },
    { p: ['f', 'o', 'k', 's'], w: 'fox' },
    { p: ['w', 'o', 'z'], w: 'was' },
    { p: ['k', 'oo', 't'], w: 'caught' },
    { p: ['dj', 'u', 'm', 'p', 'ng'], w: 'jumping' },
    { p: ['ou', 'v', 'r'], w: 'over' },
    { p: ['zh', "'"], w: 'the' },
    { p: ['l', 'ei', 'z', 'ii'], w: 'lazy' },
    { p: ['d', 'o', 'g', 'z'], w: "dog's" },
    { p: ['c', 'ai', 'n', 'ii'], w: 'shiny' }
    { p: ['h', 'a', 't'], w: 'hat' }
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
