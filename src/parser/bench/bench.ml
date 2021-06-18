


let filename = "react.development.js"
;; assert (Sys.file_exists filename)
let (_,errors) = Parser_flow.program_file ~fail:true filename None [@landmark "parse"]


;; assert (errors = [])

;; Format.eprintf "%f@." (Unix.gettimeofday ())