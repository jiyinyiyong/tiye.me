var drawDouble3, drawIdeas, drawInitial, drawList, drawMe, drawNotes, drawThree16, drawUntitled, ideas, index, l, mePage1, notes, r;
var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };
l = $('#left');
r = $('#right');
index = ['me', 'ideas', 'notes'];
ideas = ['ideas', 'double3', 'three16'];
notes = ['notes', 'initial', 'untitled'];
drawList = function(ls) {
  var item, _i, _len;
  l.empty();
  for (_i = 0, _len = ls.length; _i < _len; _i++) {
    item = ls[_i];
    l.append('<section id=' + item + '>' + item + '</section>');
  }
  if ($('#me')) {
    $('#me').click(__bind(function() {
      return console.log('fobbiden');
    }, this));
  }
  if ($('#ideas')) {
    $('#ideas').click(__bind(function() {
      drawList(index);
      return drawIdeas();
    }, this));
  }
  if ($('#notes')) {
    $('#notes').click(__bind(function() {
      drawList(index);
      return drawNotes();
    }, this));
  }
  if ($('#doubles')) {
    $('#double3').click(__bind(function() {
      drawList(ideas);
      return drawDouble3();
    }, this));
  }
  if ($('#three16')) {
    $('#three16').click(__bind(function() {
      drawList(ideas);
      return drawThree16();
    }, this));
  }
  if ($('#initial')) {
    $('#initial').click(__bind(function() {
      drawList(notes);
      return drawInitial();
    }, this));
  }
  if ($('#untitled')) {
    return $('#untitled').click(__bind(function() {
      drawList(notes);
      return drawUntitled();
    }, this));
  }
};
mePage1 = ['google', 'google'];
drawMe = function() {
  var item, _i, _len, _results;
  _results = [];
  for (_i = 0, _len = mePage1.length; _i < _len; _i++) {
    item = mePage1[_i];
    _results.push(r.append('<nav class="x">' + item + '</nav>'));
  }
  return _results;
};
drawIdeas = function() {
  r.empty();
  return r.append('ideas');
};
drawNotes = function() {
  r.empty();
  return r.append('notes');
};
drawDouble3 = function() {
  r.empty();
  return r.append('double3');
};
drawThree16 = function() {
  r.empty();
  return r.append('three16');
};
drawInitial = function() {
  r.empty();
  return r.append('initial');
};
drawUntitled = function() {
  r.empty();
  return r.append('untitled');
};
$(document).ready(function() {
  drawList(index);
  return drawMe();
});