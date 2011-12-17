var Text, o, refer, shengmu, yunmu;

Text = (function() {

  function Text(draw) {
    this.draw = draw;
  }

  Text.prototype.baseX = 20;

  Text.prototype.baseY = 20;

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
    console.log(this.strings);
    if (this.strings.length === 32) {
      this.draw.fillStyle = 'black';
      this.draw.font = '10px Ubuntu';
      this.draw.fillText(refer(this.strings), this.baseX + (this.chaSize + this.chaSpace) * this.cha, this.baseY + this.line * this.lineHeight + this.chaSize + 12);
      this.strings = '';
      console.log('drawing');
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
    this.lineHistory.push([this.cha, this.col, this.place]);
    console.log(this.lineHistory);
    this.line += 1;
    this.cha = 0;
    this.col = 0;
    return this.place = 0;
  };

  Text.prototype.backward = function() {
    var _ref;
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
            return 'ended';
          } else {
            _ref = this.lineHistory.pop(), this.cha = _ref[0], this.col = _ref[1], this.place = _ref[2];
            this.line -= 1;
          }
        }
      }
    }
    this.newPosition();
    if (this.col === 0 && this.place === 0) {
      this.draw.fillStyle = 'white';
      this.draw.fillRect(this.posX, this.posY, this.chaSize + 40, this.chaSize + 40);
    } else {
      this.draw.fillStyle = 'hsl(240,80%,90%)';
      this.draw.fillRect(this.posX, this.posY, this.chaSize / 2 + 1, this.chaSize / 4 + 1);
    }
    return console.log('backward');
  };

  return Text;

})();

window.onload = function() {
  var cvs, t, x;
  var _this = this;
  cvs = document.getElementById('cvs');
  x = cvs.getContext('2d');
  t = new Text(x);
  return document.onkeydown = function(e) {
    switch (e.keyCode) {
      case 13:
        return t.changeLine();
      case 49:
        return t.forward('0000');
      case 50:
        return t.forward('0100');
      case 51:
        return t.forward('1000');
      case 52:
        return t.forward('1100');
      case 81:
        return t.forward('0001');
      case 87:
        return t.forward('0101');
      case 69:
        return t.forward('1001');
      case 82:
        return t.forward('1101');
      case 65:
        return t.forward('0010');
      case 83:
        return t.forward('0110');
      case 68:
        return t.forward('1010');
      case 70:
        return t.forward('1110');
      case 90:
        return t.forward('0011');
      case 88:
        return t.forward('0111');
      case 67:
        return t.forward('1011');
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

shengmu = ['p', 'ph', 'b', 'm', o, o, o, o, 't', 'th', 'd', 'n', o, o, o, o, 'c', 'ch', 'z', o, 's', o, 'zs', o, 'cj', 'chj', 'zj', 'nj', 'sj', o, 'zsj', 'j', o, o, o, 'l', 'k', 'kh', 'g', 'ng', 'h', 'q', 'gh', o, o, o, o, o, o, o, o, o, o, o, o, o, o, o, o, o, o, o, o, o];

yunmu = ['a', 'ra', 'ia', o, 'o', o, 'io', o, 'ua', 'rua', 'ya', o, o, o, 'yo', o, 'an', 'ren', 'ian', 'en', 'on', o, 'ion', o, 'uan', 'ruen', 'yan', 'uen', 'uon', o, 'yon', o, 'am', 'rem', 'iam', 'em', 'om', o, o, o, o, o, 'yam', o, o, o, 'im', o, 'ang', 'rang', 'iang', o, 'ong', o, 'ing', o, 'uang', 'ruang', 'yang', o, 'uong', o, 'yk', o, 'ai', 'rai', 'ied', 'e', 'au', 'rau', 'ieu', 'eu', 'uai', 'ruai', 'yed', 'ue', o, o, o, o, o, o, o, o, o, o, o, o, o, o, o, o, o, o, o, o, 'ie', 'ii', o, 'ioi', 'u', o, 'iu', o, 'ye', 'yi', o, 'yoi', o, o, 'y', o, o, 'reng', 'ieng', 'eng', 'ung', 'rung', 'yung', o, o, 'rueng', 'yeng', 'ueng', 'uung', o, 'iung', o];

refer = function(str) {
  console.log(shengmu.length, yunmu.length);
  return 'returned';
};
