---
layout: default
title: parcours
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
    <p><img src="{{ site.root }}/images/profil.png" /></p>
  </div>
  <div class="east">
    {{ parcours | markdownify }}
  </div>
</section>
<section class="clearfix">
  <h2 class="west">Formation artistique</h2>
  <div class="east">
  {{ formation | markdownify }}
  </div>
</section>
