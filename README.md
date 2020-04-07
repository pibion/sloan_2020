To pretty-print the ksy file:

$ a2ps --columns=3 --rows=5 --lines-per-page=18 --portrait --line-numbers=1 --no-header srecord.ksy -o - | ps2pdf - file.pdf

Sadly a YAML style sheet for a2ps doesn't exist
