var Text, guide, o, refer, shengmu, yunmu;

Text = (function() {

  function Text(draw) {
    this.draw = draw;
  }

  Text.prototype.baseX = 20;

  Text.prototype.baseY = 600;

  Text.prototype.line = 0;

  Text.prototype.lineHeight = 50;

  Text.prototype.lineHistory = [];

  Text.prototype.cha = 0;

  Text.prototype.chaSize = 24;

  Text.prototype.chaSpace = 30;

  Text.prototype.place = 0;

  Text.prototype.col = 0;

  Text.prototype.posX = Text.baseX;

  Text.prototype.posY = Text.baseY;

  Text.prototype.strings = '';

  Text.prototype.newPosition = function() {
    this.posX = this.baseX + this.cha * (this.chaSize + this.chaSpace) + this.chaSize / 2 * this.col;
    return this.posY = this.baseY + this.line * this.lineHeight + this.place * this.chaSize / 4;
  };

  Text.prototype.forward = function(code) {
    this.strings += code;
    if (this.strings.length === 32) {
      console.log(this.strings.slice(16));
      this.draw.fillStyle = 'black';
      this.draw.font = '10px Ubuntu';
      this.draw.fillText(refer(this.strings), this.baseX + (this.chaSize + this.chaSpace) * this.cha, this.baseY + this.line * this.lineHeight + this.chaSize + 12);
      this.strings = '';
    }
    this.newPosition();
    if (this.place === 0 && this.col === 0) {
      this.draw.fillStyle = 'hsl(240,80%,90%)';
      this.draw.fillRect(this.posX, this.posY, this.chaSize, this.chaSize);
    }
    this.draw.strokeStyle = 'black';
    this.draw.beginPath();
    if (code[0] === '1') {
      this.draw.moveTo(this.posX, this.posY);
      this.draw.lineTo(this.posX + this.chaSize / 4, this.posY + this.chaSize / 4);
    }
    if (code[1] === '1') {
      this.draw.moveTo(this.posX + this.chaSize / 4, this.posY);
      this.draw.lineTo(this.posX, this.posY + this.chaSize / 4);
    }
    if (code[2] === '1') {
      this.draw.moveTo(this.posX + this.chaSize / 4, this.posY);
      this.draw.lineTo(this.posX + this.chaSize / 2, this.posY + this.chaSize / 4);
    }
    if (code[3] === '1') {
      this.draw.moveTo(this.posX + this.chaSize / 2, this.posY);
      this.draw.lineTo(this.posX + this.chaSize / 4, this.posY + this.chaSize / 4);
    }
    this.draw.closePath();
    this.draw.stroke();
    if (this.place < 3) {
      return this.place += 1;
    } else {
      this.place = 0;
      if (this.col === 0) {
        return this.col = 1;
      } else {
        this.col = 0;
        return this.cha += 1;
      }
    }
  };

  Text.prototype.changeLine = function() {
    this.lineHistory.push([this.cha, this.col, this.place, this.strings]);
    this.line += 1;
    this.cha = 0;
    this.col = 0;
    this.place = 0;
    return this.strings = '';
  };

  Text.prototype.backward = function() {
    var _ref;
    this.strings = this.strings.slice(0, this.strings.length - 4);
    if (this.place !== 0) {
      this.place -= 1;
    } else {
      this.place = 3;
      if (this.col !== 0) {
        this.col = 0;
      } else {
        this.col = 1;
        if (this.cha !== 0) {
          this.cha -= 1;
        } else {
          if (this.line === 0) {
            this.col = 0;
            this.place = 0;
            this.strings = '';
            return 'ended';
          } else {
            _ref = this.lineHistory.pop(), this.cha = _ref[0], this.col = _ref[1], this.place = _ref[2], this.strings = _ref[3];
            this.line -= 1;
          }
        }
      }
    }
    this.newPosition();
    if (this.col === 0 && this.place === 0) {
      this.draw.fillStyle = 'white';
      return this.draw.fillRect(this.posX, this.posY, this.chaSize + 40, this.chaSize + 40);
    } else {
      this.draw.fillStyle = 'hsl(240,80%,90%)';
      return this.draw.fillRect(this.posX, this.posY, this.chaSize / 2 + 1, this.chaSize / 4 + 1);
    }
  };

  return Text;

})();

window.onload = function() {
  var cvs, t, x;
  var _this = this;
  cvs = document.getElementById('cvs');
  x = cvs.getContext('2d');
  guide(x);
  t = new Text(x);
  return document.onkeydown = function(e) {
    switch (e.keyCode) {
      case 13:
        return t.changeLine();
      case 49:
        return t.forward('0000');
      case 50:
        return t.forward('1000');
      case 51:
        return t.forward('0100');
      case 52:
        return t.forward('1100');
      case 81:
        return t.forward('0010');
      case 87:
        return t.forward('1010');
      case 69:
        return t.forward('0110');
      case 82:
        return t.forward('1110');
      case 65:
        return t.forward('0001');
      case 83:
        return t.forward('1001');
      case 68:
        return t.forward('0101');
      case 70:
        return t.forward('1101');
      case 90:
        return t.forward('0011');
      case 88:
        return t.forward('1011');
      case 67:
        return t.forward('0111');
      case 86:
        return t.forward('1111');
      case 8:
        return t.backward();
      default:
        return console.log(e.keyCode);
    }
  };
};

o = '_';

shengmu = ['p', 'ph', 'b', 'm', o, o, o, o, 't', 'th', 'd', 'n', 'cr', 'chr', 'zr', 'sr', 'c', 'ch', 'z', o, 's', o, 'zs', o, 'cj', 'chj', 'zj', 'nj', 'sj', o, 'zsj', 'j', o, o, o, 'l', 'k', 'kh', 'g', 'ng', 'h', 'q', 'gh', o, o, o, o, o, o, o, o, o, o, o, o, o, o, o, o, o, o, o, o, o];

yunmu = ['a', 'ra', 'ia', o, 'o', o, 'io', o, 'ua', 'rua', 'ya', o, o, o, 'yo', o, 'an', 'ren', 'ian', 'en', 'on', o, 'ion', o, 'uan', 'ruen', 'yan', 'uen', 'uon', o, 'yon', o, 'am', 'rem', 'iam', 'em', 'om', o, o, o, o, o, 'yam', o, o, o, 'im', o, 'ang', 'rang', 'iang', o, 'ong', o, 'ing', o, 'uang', 'ruang', 'yang', o, 'uong', o, 'yk', o, 'ai', 'rai', 'ied', 'e', 'au', 'rau', 'ieu', 'eu', 'uai', 'ruai', 'yed', 'ue', o, o, o, o, o, o, o, o, o, o, o, o, o, o, o, o, o, o, o, o, 'ie', 'ii', o, 'ioi', 'u', o, 'iu', o, 'ye', 'yi', o, 'yoi', o, o, 'y', o, o, 'reng', 'ieng', 'eng', 'ung', 'rung', 'yung', o, o, 'rueng', 'yeng', 'ueng', 'uung', o, 'iung', o];

refer = function(str) {
  var diao, sm, ym;
  str = str.slice(16);
  sm = 0;
  if (str[0] === '1') sm += 32;
  if (str[1] === '1') sm += 16;
  if (str[2] === '1') sm += 8;
  if (str[3] === '1') sm += 4;
  if (str[4] === '1') sm += 2;
  if (str[5] === '1') sm += 1;
  ym = 0;
  if (str[6] === '1') ym += 2;
  if (str[7] === '1') ym += 1;
  if (str[8] === '1') ym += 64;
  if (str[9] === '1') ym += 4;
  if (str[10] === '1') ym += 32;
  if (str[11] === '1') ym += 16;
  if (str[12] === '1') ym += 8;
  diao = 0;
  if (str[14] === '1') diao += 1;
  if (str[15] === '1') diao += 2;
  return shengmu[sm] + yunmu[ym] + diao;
};

guide = function(x) {
  var beginX, beginY, chaSize, height, i, j, px, py, width, _ref, _ref2, _ref3, _ref4, _ref5, _ref6;
  x.fillStyle = 'black';
  x.font = '16px Ubuntu';
  x.textBaseline = 'top';
  height = 30;
  width = 80;
  beginX = 50;
  beginY = 50;
  chaSize = 24;
  for (i = 0, _ref = shengmu.length - 1; 0 <= _ref ? i <= _ref : i >= _ref; 0 <= _ref ? i++ : i--) {
    x.fillText(shengmu[i], beginX + (i % 4) * width + 10, beginY + (Math.floor(i / 4)) * height);
  }
  x.fillStyle = 'hsl(240,80%,90%)';
  for (i = 0, _ref2 = shengmu.length - 1; 0 <= _ref2 ? i <= _ref2 : i >= _ref2; 0 <= _ref2 ? i++ : i--) {
    x.fillRect(beginX + (i % 4) * width - chaSize, beginY + (Math.floor(i / 4)) * height, chaSize, chaSize);
  }
  x.fillStyle = 'black';
  x.beginPath();
  for (j = 0, _ref3 = shengmu.length - 1; 0 <= _ref3 ? j <= _ref3 : j >= _ref3; 0 <= _ref3 ? j++ : j--) {
    px = beginX + (j % 4) * width - chaSize / 2;
    py = beginY + (Math.floor(j / 4)) * height;
    i = j;
    if (i >= 32) {
      i -= 32;
      console.log('once');
      x.moveTo(px, py);
      x.lineTo(px + chaSize / 4, py + chaSize / 4);
    }
    if (i >= 16) {
      i -= 16;
      x.moveTo(px + chaSize / 4, py);
      x.lineTo(px, py + chaSize / 4);
    }
    if (i >= 8) {
      i -= 8;
      x.moveTo(px + chaSize / 4, py);
      x.lineTo(px + chaSize / 2, py + chaSize / 4);
    }
    if (i >= 4) {
      i -= 4;
      x.moveTo(px + chaSize / 2, py);
      x.lineTo(px + chaSize / 4, py + chaSize / 4);
    }
    if (i >= 2) {
      i -= 2;
      x.moveTo(px, py + chaSize / 4);
      x.lineTo(px + chaSize / 4, py + chaSize / 2);
    }
    if (i >= 1) {
      i -= 1;
      x.moveTo(px + chaSize / 4, py + chaSize / 4);
      x.lineTo(px, py + chaSize / 2);
    }
  }
  x.closePath();
  x.stroke();
  beginX += 400;
  x.fillStyle = 'black';
  for (i = 0, _ref4 = yunmu.length - 1; 0 <= _ref4 ? i <= _ref4 : i >= _ref4; 0 <= _ref4 ? i++ : i--) {
    x.fillText(yunmu[i], beginX + (i % 8) * width + 10, beginY + (Math.floor(i / 8)) * height);
  }
  x.fillStyle = 'hsl(240,80%,90%)';
  console.log(yunmu.length);
  for (i = 0, _ref5 = yunmu.length - 1; 0 <= _ref5 ? i <= _ref5 : i >= _ref5; 0 <= _ref5 ? i++ : i--) {
    x.fillRect(beginX + (i % 8) * width - chaSize, beginY + (Math.floor(i / 8)) * height, chaSize, chaSize);
  }
  x.fillStyle = 'black';
  x.beginPath();
  for (j = 0, _ref6 = yunmu.length - 1; 0 <= _ref6 ? j <= _ref6 : j >= _ref6; 0 <= _ref6 ? j++ : j--) {
    px = beginX + (j % 8) * width - chaSize / 2;
    py = beginY + (Math.floor(j / 8)) * height;
    i = j;
    if (i >= 64) {
      i -= 64;
      x.moveTo(px, py + chaSize / 2);
      x.lineTo(px + chaSize / 4, py + chaSize * 3 / 4);
    }
    if (i >= 32) {
      i -= 32;
      x.moveTo(px + chaSize / 4, py + chaSize / 2);
      x.lineTo(px + chaSize / 2, py + chaSize * 3 / 4);
    }
    if (i >= 16) {
      i -= 16;
      x.moveTo(px + chaSize / 2, py + chaSize / 2);
      x.lineTo(px + chaSize / 4, py + chaSize * 3 / 4);
    }
    if (i >= 8) {
      i -= 8;
      x.moveTo(px, py + chaSize * 3 / 4);
      x.lineTo(px + chaSize / 4, py + chaSize);
    }
    if (i >= 4) {
      i -= 4;
      x.moveTo(px + chaSize / 4, py + chaSize / 2);
      x.lineTo(px, py + chaSize * 3 / 4);
    }
    if (i >= 2) {
      i -= 2;
      x.moveTo(px + chaSize / 4, py + chaSize / 4);
      x.lineTo(px + chaSize / 2, py + chaSize / 2);
    }
    if (i >= 1) {
      i -= 1;
      x.moveTo(px + chaSize / 2, py + chaSize / 4);
      x.lineTo(px + chaSize / 4, py + chaSize / 2);
    }
  }
  return x.stroke();
};
