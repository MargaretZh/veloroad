@water: #9fd9e5;
@green: #0f0;
@gray: #909090;
@lightgray: #e0e0e0;
@purple: #ac46ac;
@lpurple: lighten(@purple, 40%);
@yellow: #ffe7a8;

@sans: "PT Sans Regular", "Droid Sans Fallback Regular";
@sans_italic: "PT Sans Italic", "Droid Sans Fallback Regular";
@sans_bold: "PT Sans Bold", "Droid Sans Fallback Regular";
@sans_caption: "PT Sans Caption Regular", "Droid Sans Fallback Regular";

Map {
  background-color: white;
  buffer-size: 128;
  font-directory: url(data/ptsans);
}

.route {
  line-width:5;
  line-color:#012d64;
  line-join: round;
  line-cap: round;
  [zoom<10] {
    line-width: 4;
  }
}

#buildings[zoom>=15] {
  polygon-fill: @gray;
  polygon-opacity: 1;
}

#power[zoom>=13] {
  line-width: 0.5;
  line-color: fadeout(#a51a1a, 30%);
  line-dasharray: 20, 2, 2, 2;
}

/*  ADMIN BORDERS  */

#admin[admin_level="2"] {
  line-color: @lpurple;
  line-width: 6;
  [zoom<8] { line-width: 5; }
}

#admin[admin_level="4"][zoom>=8] {
  line-color: @lpurple;
  line-width: 3;
}

#admin[admin_level="4"][zoom<8],
#admin[admin_level="6"][zoom>=9] {
  line-width: 2;
  [zoom<10] { line-width: 1.5; }
  line-color: @lpurple;
  line-dasharray: 6;
}

#admin-line[admin_level="4"][zoom>=8] {
  line-width: 1;
  line-dasharray: 6;
  line-color: @purple;
}

#admin-line[admin_level="2"] {
  line-width: 2;
  [zoom<9] { line-width: 1.5; }
  line-dasharray: 6;
  line-color: @purple;
}

/* SCALE */

#scale[label=''] {
  ::casing {
    line-width: 5;
    line-color: black;
  }
  ::fill[id2=1] {
    line-width: 3;
    line-color: white;
  }
}

#scale[label!=''] {
  text-name: [label];
  text-face-name: @sans;
  text-size: 9;
  text-dy: -7;
  [label=~'.+Open.+'] {
    text-dy: 7;
    text-size: 8;
  }
  text-allow-overlap: true;
}
