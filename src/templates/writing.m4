m4_define([[m4_p]], [[m4_dnl
<p>m4_patsubst([[$1]], [[

]], [[</p>
<p>]])</p>m4_dnl
]])

m4_define([[m4_a]], [[m4_dnl
<a href="$1">$2</a>m4_dnl
]])

m4_define([[m4_h1]], [[
<h1>$1</h1>
]])

m4_define([[m4_h2]], [[
<h2>$1</h2>
]])

m4_define([[m4_h3]], [[
<h3>$1</h3>
]])

m4_define([[m4_ul]], [[m4_dnl
<ul>
m4_patsubst([[$1]], [[- \(.*\)]], [[<li>\1</li>]])
</ul>m4_dnl
]])
