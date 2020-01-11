

# build (no deps)
ocamlbuild ./parser_flow.cma


Only when upgrade needs
# checkout version sedlex@2.1
```
bsc -dsource -bs-syntax-only -ppx '`ocamlfind query sedlex`/ppx/ppx.exe --as-ppx' -impl flow_lexer_sedlex.ml   &>flow_lexer.ml
```

# Side notes
get used functions
```js
var s = new Set([...s.matchAll(/Sedlexing.(?<use>[.a-zA-Z_0-9]+)\b/g)].map(x=>x.groups.use))
copy([...s].join(''))
```

```
Utf8.lexeme Utf8.sub_lexeme lexbuf lexeme_start lexeme_end from_int_array next backtrack mark start lexeme_length Utf8.from_string rollback lexeme
```
# pack

```
~/git/bucklescript/jscomp/bin/bspack.exe -bs-MD -bs-main Parser_flow -o mini_flow_parser.ml
```