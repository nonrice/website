m4_define([[m4_base_body]], [[

<div id="layout-container">

<div id="layout-header">
<code>What does he even do?</code>
</div>

<div id="layout-wrapper">

<div id="layout-side">

<div id="layout-nav" class="box">
<div class="box-title">
<h2>Navigation</h2>
</div>

<div class="box-content">
<a href="index.html">Home</a><br>
<a href="blog.html">Blog</a><br>
<a href="school.html">School</a><br>
<a href="credits.html">Credits</a>
</div>
</div>


<div class="box">
<div class="box-title">
<h2>Links</h2>
</div>

<div class="box-content">
<a href="https://github.com/nonrice">GitHub</a><br>
<a href="https://ch.tetr.io/u/nonric2">TETR.IO</a>
</div>
</div>

</div>

<div id="layout-main" class="box">
<div class="box-title">
<h2>dontwalkaway.nekoweb.org</h2>
</div>

<div class="box-content">
m4_layout_body

<div id="layout-footer-banner">

<p>Page last compiled: m4_esyscmd([[date -Iseconds]])</p>
</div>

</div>

</div>

]])

m4_include([[src/templates/base.m4]])
