#lang pollen

◊header{
    ◊h1{Welcome}

    ◊div[#:id "rain-bar"]
}

◊section{
    I'm ◊strong{astynax} and this is my tilde page.

    ◊pre[#:class "logo"]{
        ◊span[#:class "snd"]{  \  /}
        ◊span[#:class "fst"]{<}◊span[#:class "eye"]{o}◊span[#:class "fst"]{\}◊span[#:class "snd"]{\/}
        ◊span[#:class "fst"]{  /\}◊span[#:class "eye"]{o}◊span[#:class "snd"]{>}
        ◊span[#:class "fst"]{ /  \}
    }
}

◊section{
    I like programming and programming languages. My favourite PLs:

    ◊ul{
        ◊li{Haskell}
        ◊li{Elm}
        ◊li{Racket}
        ◊li{Clojure}
        ◊li{Rust}
        ◊li{Emacs Lisp}
    }

    Also I like coffee, chinese tea, reading, cycling and DIY electronics.
}

◊section{
    Also me in the Web:

    ◊ul{
        ◊li{◊a[#:href "./blog"]{~astynax/blog}, a blog (kinda) I made using the Tilda's TTBS engine}
        ◊li{◊a[#:href "https://github.com/astynax"]{astynax@github}}
        ◊li{◊a[#:href "https://recursive.one"]{Recursive.One}, a machine for my Small-Web'ish stuff}
        ◊li{◊a[#:href "https://astynax.me"]{astynax.me}, a "VCard"-site (sorta)}
    }
}

◊script[#:src "rain.min.js"]
◊script[#:type "text/javascript"
"
const app = Elm.Main.init({
    node: document.getElementById('rain-bar'),
    flags: {
      width: 64,
      height: 8
    }
});
"]
