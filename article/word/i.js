var main, main2, one0, one1, unit;

main = function() {
  var ctx, cvs;
  var _this = this;
  cvs = document.getElementById('canvas');
  ctx = cvs.getContext('2d');
  (document.getElementById('run0')).onclick = function(e) {
    return main2(ctx, 0, 1);
  };
  (document.getElementById('run4')).onclick = function(e) {
    return main2(ctx, 4, 1);
  };
  (document.getElementById('ru0')).onclick = function(e) {
    return main2(ctx, 0, 0);
  };
  return (document.getElementById('ru4')).onclick = function(e) {
    return main2(ctx, 4, 0);
  };
};

main2 = function(ctx, sp, bg) {
  var i, j, n, size;
  size = 18;
  n = 20;
  ctx.clearRect(0, 0, 800, 800);
  ctx.fillStyle = '#ddd';
  ctx.beginPath();
  if (bg === 1) {
    for (i = 1; 1 <= n ? i <= n : i >= n; 1 <= n ? i++ : i--) {
      for (j = 1; 1 <= n ? j <= n : j >= n; 1 <= n ? j++ : j--) {
        ctx.fillRect(i * (size + sp), j * (size + sp), size, size);
      }
    }
  }
  ctx.fillStyle = '#ddd';
  for (i = 1; 1 <= n ? i <= n : i >= n; 1 <= n ? i++ : i--) {
    for (j = 1; 1 <= n ? j <= n : j >= n; 1 <= n ? j++ : j--) {
      one1(ctx, size / 2, (size + sp) * i, (size + sp) * j);
      one1(ctx, size / 2, (size + sp) * i + size / 2, (size + sp) * j);
    }
  }
  ctx.closePath();
  return ctx.stroke();
};

window.onload = main;

unit = function(ctx, x, y, xt, yt) {
  if ((Math.round(Math.random())) === 0) {
    ctx.moveTo(x, y);
    return ctx.lineTo(xt, yt);
  }
};

one0 = function(ctx, s, x, y) {
  var dx, dy, j, _results;
  dx = s / 2;
  dy = s / 2;
  _results = [];
  for (j = 0; j <= 3; j++) {
    unit(ctx, x, y + j * dy, x + dx, y + j * dy + dy);
    unit(ctx, x + 2 * dx, y + j * dy, x + dx, y + j * dy + dy);
    unit(ctx, x + dx, y + j * dy, x, y + j * dy + dy);
    _results.push(unit(ctx, x + dx, y + j * dy, x + 2 * dx, y + j * dy + dy));
  }
  return _results;
};

one1 = function(ctx, s, x, y) {
  var ddx, ddy, dx, dy, j, _results;
  dx = s / 2;
  ddx = s / 4;
  dy = s / 2;
  ddy = s / 4;
  _results = [];
  for (j = 0; j <= 3; j++) {
    unit(ctx, x + ddx, y + j * dy, x + ddx, y + j * dy + dy);
    unit(ctx, x, y + j * dy + ddy, x + dx, y + j * dy + ddy);
    unit(ctx, x + dx + ddx, y + j * dy, x + dx + ddx, y + j * dy + dy);
    _results.push(unit(ctx, x + dx, y + j * dy + ddy, x + 2 * dx, y + j * dy + ddy));
  }
  return _results;
};
