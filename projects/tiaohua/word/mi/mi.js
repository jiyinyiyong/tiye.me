var draw;

draw = function(ctx, center, range) {};

window.onload = function() {
  var base, cX, cY, ctx, cvs, rX, rY, rangeX, rangeY, s, space, x, y, _i, _j, _k, _l, _len, _len2, _len3, _len4, _ref, _ref2, _ref3, _ref4;
  cvs = document.getElementById("cvs");
  ctx = cvs.getContext("2d");
  cvs.width = 800;
  cvs.height = 800;
  base = {
    x: 30,
    y: 30
  };
  space = 30;
  s = 5;
  ctx.beginPath();
  for (y = 1; y <= 20; y++) {
    for (x = 1; x <= 20; x++) {
      _ref = [-s, s];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        rX = _ref[_i];
        _ref2 = [-s, s];
        for (_j = 0, _len2 = _ref2.length; _j < _len2; _j++) {
          rY = _ref2[_j];
          cX = base.x + x * space + rX;
          cY = base.y + y * space + rY;
          _ref3 = [-s, 0, s];
          for (_k = 0, _len3 = _ref3.length; _k < _len3; _k++) {
            rangeX = _ref3[_k];
            _ref4 = [-s, 0, s];
            for (_l = 0, _len4 = _ref4.length; _l < _len4; _l++) {
              rangeY = _ref4[_l];
              if ((Math.floor(Math.random() * 2)) === 0) {
                ctx.moveTo(cX, cY);
                ctx.lineTo(cX + rangeX, cY + rangeY);
              }
            }
          }
        }
      }
    }
  }
  return ctx.stroke();
};
