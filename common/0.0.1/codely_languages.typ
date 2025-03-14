
#let codly-languages = {
  // helper function which takes an image filename and creates an icon
  let __icon(image-filename) = {
    box(
      image("icons/" + image-filename, height: 0.9em),
      baseline: 0.05em,
      inset: 0pt,
      outset: 0pt,
    ) + h(0.3em)
  }

  // configurations for languages
  let base-languages = (
    aarch64:       (name: "Assembly (ARM)",   color: rgb("#1b3888"), icon: __icon("aarch64.svg")),
    angular:       (name: "Angular",          color: rgb("#dd0031"), icon: __icon("angular.svg")),
    ansible:       (name: "Ansible",          color: rgb("#1a1918"), icon: __icon("ansible.svg")),
    apache:        (name: "Apache",           color: rgb("#b7342a"), icon: __icon("apache.svg")),
    apl:           (name: "APL",              color: rgb("#24a148"), icon: __icon("apl.svg")),
    awk:           (name: "Awk",              color: rgb("#0a094d"), icon: __icon("awk.svg")),
    c:             (name: "C",                color: rgb("#659ad3"), icon: __icon("c.svg")),
    cairo:         (name: "Cairo",            color: rgb("#f39914"), icon: __icon("cairo.svg")),
    clojure:       (name: "Clojure",          color: rgb("#ffffff"), icon: __icon("clojure.svg")),
    clojurescript: (name: "ClojureScript",    color: rgb("#96ca4b"), icon: __icon("clojurescript.svg")),
    cmake:         (name: "CMake",            color: rgb("#064f8c"), icon: __icon("cmake.svg")),
    coffeescript:  (name: "CoffeeScript",     color: rgb("#28334c"), icon: __icon("coffeescript.svg")),
    cplusplus:     (name: "C++",              color: rgb("#00599c"), icon: __icon("cplusplus.svg")),
    crystal:       (name: "Crystal",          color: rgb("#000000"), icon: __icon("crystal.svg")),
    csharp:        (name: "C#",               color: rgb("#9b4f96"), icon: __icon("csharp.svg")),
    css:           (name: "CSS",              color: rgb("#1572b6"), icon: __icon("css3.svg")),
    dart:          (name: "Dart",             color: rgb("#00c4b3"), icon: __icon("dart.svg")),
    docker:        (name: "Docker",           color: rgb("#3a4d54"), icon: __icon("docker.svg")),
    elixir:        (name: "Elixir",           color: rgb("#685574"), icon: __icon("elixir.svg")),
    elm:           (name: "Elm",              color: rgb("#efa500"), icon: __icon("elm.svg")),
    emacs:         (name: "Emacs",            color: rgb("#421f5f"), icon: __icon("emacs.svg")),
    erlang:        (name: "Erlang",           color: rgb("#a90533"), icon: __icon("erlang.svg")),
    fortran:       (name: "Fortran",          color: rgb("#734c94"), icon: __icon("fortran.svg")),
    fsharp:        (name: "F#",               color: rgb("#378bba"), icon: __icon("fsharp.svg")),
    git:           (name: "Git",              color: rgb("#f34f29"), icon: __icon("git.svg")),
    go:            (name: "Go",               color: rgb("#f6d2a2"), icon: __icon("go.svg")),
    graphql:       (name: "GraphQL",          color: rgb("#e434aa"), icon: __icon("graphql.svg")),
    groovy:        (name: "Groovy",           color: rgb("#619cbc"), icon: __icon("groovy.svg")),
    grpc:          (name: "gRPC",             color: rgb("#3d5a60"), icon: __icon("grpc.svg")),
    handlebars:    (name: "Handlebars",       color: rgb("#000000"), icon: __icon("handlebars.svg")),
    haskell:       (name: "Haskell",          color: rgb("#463b63"), icon: __icon("haskell.svg")),
    haxe:          (name: "Haxe",             color: rgb("#f6b214"), icon: __icon("haxe.svg")),
    html:          (name: "HTML",             color: rgb("#e44d26"), icon: __icon("html5.svg")),
    java:          (name: "Java",             color: rgb("#0074bd"), icon: __icon("java.svg")),
    javascript:    (name: "JavaScript",       color: rgb("#f0db4f"), icon: __icon("javascript.svg")),
    json:          (name: "JSON",             color: rgb("#6d6d6d"), icon: __icon("json.svg")),
    julia:         (name: "Julia",            color: rgb("#cb3c33"), icon: __icon("julia.svg")),
    kotlin:        (name: "Kotlin",           color: rgb("#5e3cc2"), icon: __icon("kotlin.svg")),
    latex:         (name: "LaTeX",            color: rgb("#000000"), icon: __icon("latex.svg")),
    less:          (name: "Less",             color: rgb("#2a4d80"), icon: __icon("less.svg")),
    lua:           (name: "Lua",              color: rgb("#000080"), icon: __icon("lua.svg")),
    markdown:      (name: "Markdown",         color: rgb("#000000"), icon: __icon("markdown.svg")),
    matlab:        (name: "Matlab",           color: rgb("#4499dd"), icon: __icon("matlab.svg")),
    mysql:         (name: "MySQL",            color: rgb("#00618a"), icon: __icon("mysql.svg")),
    neovim:        (name: "Neovim",           color: rgb("#517d37"), icon: __icon("neovim.svg")),
    nginx:         (name: "Nginx",            color: rgb("#009900"), icon: __icon("nginx.svg")),
    nim:           (name: "Nim",              color: rgb("#f3d400"), icon: __icon("nim.svg")),
    nix:           (name: "Nix",              color: rgb("#7ebae4"), icon: __icon("nixos.svg")),
    objectivec:    (name: "Objective-C",      color: rgb("#0b5a9d"), icon: __icon("objectivec.svg")),
    ocaml:         (name: "OCaml",            color: rgb("#484444"), icon: __icon("ocaml.svg")),
    perl:          (name: "Perl",             color: rgb("#ffffff"), icon: __icon("perl.svg")),
    php:           (name: "PHP",              color: rgb("#5c5e8d"), icon: __icon("php.svg")),
    postgresql:    (name: "PostgreSQL",       color: rgb("#336791"), icon: __icon("postgresql.svg")),
    powershell:    (name: "PowerShell",       color: rgb("#1f2939"), icon: __icon("powershell.svg")),
    processing:    (name: "Processing",       color: rgb("#6e8375"), icon: __icon("processing.svg")),
    prolog:        (name: "Prolog",           color: rgb("#d6552d"), icon: __icon("prolog.svg")),
    purescript:    (name: "PureScript",       color: rgb("#111419"), icon: __icon("purescript.svg")),
    python:        (name: "Python",           color: rgb("#efda54"), icon: __icon("python.svg")),
    r:             (name: "R",                color: rgb("#284a8e"), icon: __icon("r.svg")),
    rails:         (name: "Rails",            color: rgb("#cc0000"), icon: __icon("rails.svg")),
    ruby:          (name: "Ruby",             color: rgb("#742013"), icon: __icon("ruby.svg")),
    rust:          (name: "Rust",             color: rgb("#de5420"), icon: __icon("rust.svg")),
    sass:          (name: "SCSS/Sass",        color: rgb("#cb6699"), icon: __icon("sass.svg")),
    scala:         (name: "Scala",            color: rgb("#390d09"), icon: __icon("scala.svg")),
    shellscript:   (name: "Shell",            color: rgb("#293138"), icon: __icon("bash.svg")),
    solidity:      (name: "Solidity",         color: rgb("#000000"), icon: __icon("solidity.svg")),
    sql:           (name: "SQL",              color: rgb("#f2f2f2"), icon: __icon("sql.svg")),
    sqlite:        (name: "SQLite",           color: rgb("#0b7fcc"), icon: __icon("sqlite.svg")),
    ssh-config:    (name: "SSH",              color: rgb("#231f20"), icon: __icon("ssh.svg")),
    stylus:        (name: "Stylus",           color: rgb("#333333"), icon: __icon("stylus.svg")),
    svelte:        (name: "Svelte",           color: rgb("#ff3e00"), icon: __icon("svelte.svg")),
    swift:         (name: "Swift",            color: rgb("#f05138"), icon: __icon("swift.svg")),
    terraform:     (name: "Terraform",        color: rgb("#5c4ee5"), icon: __icon("terraform.svg")),
    tex:           (name: "TeX",              color: rgb("#000000"), icon: __icon("tex.svg")),
    text:          (name: "Text",             color: rgb("#4579F9"), icon: __icon("text.svg")),
    typescript:    (name: "TypeScript",       color: rgb("#ffffff"), icon: __icon("typescript.svg")),
    typst:         (name: "Typst",            color: rgb("#458fa0"), icon: __icon("typst-small.png")),
    uml:           (name: "UML",              color: rgb("#fbbd16"), icon: __icon("unifiedmodelinglanguage.svg")),
    vala:          (name: "Vala",             color: rgb("#6034a5"), icon: __icon("vala.svg")),
    vim:           (name: "Vim",              color: rgb("#019833"), icon: __icon("vim.svg")),
    visualbasic:   (name: "Visual Basic",     color: rgb("#004e8c"), icon: __icon("visualbasic.svg")),
    vyper:         (name: "Vyper",            color: rgb("#000000"), icon: __icon("vyper.svg")),
    wasm:          (name: "WASM",             color: rgb("#654ff0"), icon: __icon("wasm.svg")),
    xml:           (name: "XML",              color: rgb("#ae007f"), icon: __icon("xml.svg")),
    yaml:          (name: "YAML",             color: rgb("#cb171e"), icon: __icon("yaml.svg")),
    zig:           (name: "Zig",              color: rgb("#f7a41d"), icon: __icon("zig.svg")),
  )

  // add aliases for our languages (e.g. so both "```typ" and "```typst" work)
  let aliases = (
    aarch64:       ("arm"),
    clojure:       ("clj"),
    clojurescript: ("cljs"),
    coffeescript:  ("coffee"),
    cplusplus:     ("cpp", "cxx", "c++"),
    csharp:        ("cs", "c#"),
    docker:        ("dockerfile"),
    elixir:        ("ex"),
    erlang:        ("erl"),
    fsharp:        ("fs", "f#"),
    go:            ("golang"),
    haskell:       ("hs"),
    javascript:    ("js"),
    julia:         ("jl"),
    kotlin:        ("kt"),
    neovim:        ("nvim"),
    objectivec:    ("objc", "obj-c"),
    ocaml:         ("ml"),
    perl:          ("pl"),
    powershell:    ("ps1"),
    python:        ("py"),
    ruby:          ("rb"),
    rust:          ("rs"),
    sass:          ("scss"),
    scala:         ("sc"),
    shellscript:   ("bash", "shell", "sh"),
    solidity:      ("sol"),
    ssh-config:    ("ssh"),
    stylus:        ("styl"),
    terraform:     ("tf"),
    text:          ("txt"),
    typescript:    ("ts"),
    typst:         ("typ", "typc", "typm"),
    vim:           ("vimscript"),
    visualbasic:   ("vb"),
    yaml:          ("yml"),
  )
  for (lang, aliases) in aliases {
    for alias in aliases {
      base-languages.insert(alias, base-languages.at(lang))
    }
  }

  // finished
  base-languages
}
