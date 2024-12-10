// TODO: 支持图标
#let note(title, icon: none, fill: rgb("#003366"), body) = [
  #let rblock = block.with(stroke: fill, radius: 0.5em, fill: fill.lighten(80%))
  #let top-left = place.with(top + left, dx: 1em, dy: -0.35em)
  #block(inset: (top: 0.35em), {
    rblock(width: 100%, inset: 1em, body)
    let title = if (icon != none) {
      grid(columns: 2, gutter: 1mm, image(icon, width: 3mm), title);
    } else {
      title
    }
    top-left(rblock(fill: white, outset: 0.25em, text(strong(title), fill)))
  })
  <todo>
]

#let note_todo(body) = note("TODO", icon, fill: rgb("#FF0000"), body)
#let note_outline(body) = note("OUTLINE", icon: none, fill: rgb("#003366"), body)
#let note_chatgpt(body) = note("ChatGPT", icon: "./chatgpt.svg", fill: rgb("#10A37F"), body)
