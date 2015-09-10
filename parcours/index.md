---
layout: default
title: Parcours
---
{% capture parcours %}
{% include parcours/parcours.md %}
{% endcapture %}
{% capture formation %}
{% include parcours/formation.md %}
{% endcapture %}
<!-- ![{{ site.author.name }}](/images/profil.png) -->

<section class="clearfix">
  <div class="west">
    <!-- <h2>Parcours</h2> -->
    <p><img src="{{ site.root }}/images/profil2.jpg" style="height: 350px;"/></p>
  </div>
  <div class="east">
    {{ parcours | markdownify }}
  </div>
</section>
<section class="clearfix">
  <h2 class="west">Formation artistique<p><img src="{{ site.root }}/images/profil.jpg" /></p></h2>
  <div class="east">
  {{ formation | markdownify }}
  </div>
</section>
