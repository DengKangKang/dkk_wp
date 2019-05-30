// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:angular/angular.dart';

@Component(
  selector: 'presentations',
  template: '''
    <div>
      <p>{{presentations}}</p>
      <p>{{presentations}}</p>
    </div>
  ''',
  styles: [
    'div{ width:40%;margin: 72px 0px 36px 108px;}',
    'p{ textsize:20px;color:white;}',
  ],
)
class PresentationsComponent {
  var presentations =
      "Fernanda comes from a ruined, aristocratic family that kept her isolated from the world.[12] She was chosen as the most beautiful of 5000 girls. Fernanda is brought to Macondo to compete with Remedios for the title of Queen of the local carnival; however, her appearance turns the carnival into a bloody confrontation. After the fiasco, she marries Aureliano Segundo, who despite this maintains a domestic relation with his concubine, Petra Cotes. Nevertheless, she soon takes the leadership of the family away from the now-frail Úrsula. She manages the Buendía affairs with an iron fist. She has three children by Aureliano Segundo: José Arcadio, Renata Remedios, a.k.a. Meme, and Amaranta Úrsula. She remains in the house after her husband dies, taking care of the household until her death.Fernanda is never accepted by anyone in the Buendía household for they regard her as an outsider, although none of the Buendías rebel against her inflexible conservatism. Her mental and emotional instability is revealed through her paranoia, her correspondence with the invisible doctors, and her irrational behavior towards Aureliano, whom she tries to isolate from the whole world.";
}
