#let common(style: none, with_sidenote: false,  body) = {
  if with_sidenote {
    set page(margin: (left: 1cm, right: 4cm))
  }

  // set strong(delta: 1000)
  // set text(font: ("LXGW WenKai Mono", "0xProto"))
  set text(10pt)
  show table: set text(size: 9pt) 

  show figure: set block(breakable: true)
  // set block(breakable: false) // 不允许跨页

  // set table(
  //   fill: (x, y) =>
  //     if y == 0 { gray },
  // )
  
  // set heading(numbering: "一.1.I.A")
  // show heading: it => {
  //
  //     if it.level == 1 {
  //         let heading = text(counter(heading).display() + "、" + it.body, fill: rgb(title_style.at(0)), 18pt)
  //         block(heading)
  //     } else if it.level == 2 {
  //         let number = str(counter(heading).display())
  //         let heading = text(number.slice(4) + "）" + it.body, fill: rgb(title_style.at(1)), 14pt)
  //         block(heading)
  //     } else if it.level == 3 {
  //         let number = str(counter(heading).display())
  //         let heading = text(number.slice(6) + ". " + it.body, fill: rgb(title_style.at(2)), 12pt)
  //         block(heading)
  //     } else if it.level == 4 {
  //         let number = str(counter(heading).display())
  //         // let pos = number.position(".")
  //         let heading = text(number.slice(6) + " " + it.body, fill: rgb(title_style.at(2)), 10pt)
  //         block(heading)
  //     } else {
  //         block(counter(heading).display() + " " + it.body)
  //     }
  // }

  // change style each day
  let style_num = if style == none {
    calc.rem(datetime.today().day(), 5)
  } else {
    style
  }

  let style = if style_num == 0 {
    ("#1E90FF", "#003366", "#4682B4")
  } else if style_num == 1 {
    ("#E30B5D", "#FF007F", "#FF6EB4")
  } else if style_num == 2 {
    ("#000000", "#333333", "#555555")
  } else if style_num == 3 {
    ("#D500F9", "#4B0082", "#6A5ACD")
  } else if style_num == 4 {
    ("#00CC99", "#008080", "#228B22")
  } else {
    ("#1E90FF", "#003366", "#4682B4")
  }


  set heading(numbering: (..nums) => {
    let number = numbering("一.1.I.A.a", ..nums)
    
    if nums.pos().len() == 1 {
      number = number + "、"
    } else if nums.pos().len() == 2 {
      number = number.slice(4) + "）"
    } else if nums.pos().len() == 3 {
      number = number.slice(6) + "."
    } else if nums.pos().len() == 4 {
      number = number.slice(6)
    } else if nums.pos().len() == 5 {
      number = number.slice(8)
    } else {
      number = number
    }

    number
  })

  show heading: it => {
    if it.level == 1 {
      text(it, fill: rgb(style.at(0)), 18pt)
    } else if it.level == 2 {
      text(it, fill: rgb(style.at(1)), 14pt)
    } else if it.level == 3 {
      text(it, fill: rgb(style.at(2)), 12pt)
    } else {
      text(it, fill: rgb(style.at(2)), 10pt)
    }
  }

  import "@preview/codly:1.1.1": *
  import "@preview/codly-languages:0.1.1": *
  // import "codely_languages.typ": *
  show: codly-init.with()
  codly(languages: codly-languages)
  // set par(justify: true)
  
  // place(auto, dx: 8cm, float: true)[#line(length: 100%, end: (0%, 10%))]

  body
}

#let horizontalrule = line(length: 100%)

/******************************* note *******************************/

// TODO: 支持图标
#let note(title, icon: none, fill: rgb("#003366"), body) = [
  #let rblock = block.with(stroke: fill, radius: 0.5em, fill: fill.lighten(80%))
  #let top-left = place.with(top + left, dx: 1em, dy: -0.35em)
  #block(
    inset: (top: 0.35em), {
      rblock(width: 100%, inset: 1em, body)
      let title = if (icon != none) {
        grid(columns: 2, gutter: 1mm, image(icon, width: 3mm), title);
      } else {
        title
      }
      if title != none {
        top-left(rblock(fill: white, outset: 0.25em, text(strong(title), fill)))
      }
    },
  )
  <note>
]

#let note_todo(body) = note("TODO", icon: none, fill: rgb("#FF0000"), body)
#let note_outline_global() = note(none, icon: none, fill: rgb("#003366"), [
  #set text(12pt)
  #outline(title: none, depth: 2, indent: n => n * 2em)
])
#let note_outline(body) = note("OUTLINE", icon: none, fill: rgb("#003366"), body)
#let note_chatgpt(links) = note("CHATGPT", icon: "./chatgpt.svg", fill: rgb("#10A37F"), {
  if type(links) == str {
    [#link(links)]
  } else if type(links) == array {
    for l in links {
      [#link(l) \ ]
    }
  } else {
    panic("Invalid type of links")
  }
})
#let note_ref(body) = note("REF", icon: none, fill: gray, body)


/******************************* hl_math *******************************/
// inline: hl_math(math)
// non-inline: $ hl_math(math) $
#let hl_math(math, fill: rgb("#98FF98")) = block(math, fill: fill, outset: 5pt, radius: 20%)
#let hl(body, fill: rgb("#FFFF66")) = highlight(body, fill: fill, extent: 3pt, radius: 0.5em)

/******************************* sidenote *******************************/
#import "@preview/marge:0.1.0": sidenote

#let num(..nums) = {
  set text(fill: rgb("#8B4513"), size: 1.2em)
  numbering("⓵", ..nums)
}


#let sidenote_format(it) = {
  let sidenote(num, fill: rgb("#DAA520"), body) = [
    #let rblock = block.with(stroke: fill, radius: 0.5em, fill: fill.lighten(80%))
    #let top-left = place.with(top + left, dx: 0.2em, dy: 0.6em)
    #let body = text(body, size: 0.70em)
    #block(
      inset: (top: 0.35em), {
        rblock(width: 100%, inset: 0.8em, body)
        top-left(num)
      },
    )
  ]

  let num = link(it.source, super(it.counter.display(it.numbering)))
  sidenote(num, it.body)
}

#let sidenote = sidenote.with(numbering: num, padding: 0.5em, format: sidenote_format)
