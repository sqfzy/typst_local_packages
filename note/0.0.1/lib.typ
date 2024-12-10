#let note(title, fill: rgb("#003366"), body) = [
  #let rblock = block.with(stroke: fill, radius: 0.5em, fill: fill.lighten(80%))
  #let top-left = place.with(top + left, dx: 1em, dy: -0.35em)
  #block(inset: (top: 0.35em), {
    rblock(width: 100%, inset: 1em, body)
    top-left(rblock(fill: white, outset: 0.25em, text(strong(title), fill: fill)))
  })
  <todo>
]

#let note_todo(body) = note("TODO", rgb("#FF0000"), body)
#let note_outline(body) = note("OUTLINE", rgb("#003366"), body)
