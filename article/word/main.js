var Text;

Text = (function() {

  function Text(draw) {
    this.draw = draw;
  }

  Text.prototype.baseX = 20;

  Text.prototype.baseY = 20;

  Text.prototype.line = 0;

  Text.prototype.lineHeight = 30;

  Text.prototype.cha = 0;

  Text.prototype.chaSize = 20;

  Text.prototype.chaSpace = 8;

  Text.prototype.place = 0;

  Text.prototype.col = 0;

  Text.prototype.posX = Text.baseX;

  Text.prototype.posY = Text.baseY;

  Text.prototype.newPosition = function() {
    this.posX = this.baseX + this.cha * (this.chaSize + this.chaSpace) + this.chaSize / 2 * this.col;
    return this.posY = this.baseY + this.line * this.lineHeight + this.place * this.chaSize / 4;
  };

  Text.prototype.forword = function(code) {
    this.newPosition();
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
    this.line += 1;
    return this.cha = 0;
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
        return t.forword('0000');
      case 50:
        return t.forword('0100');
      case 51:
        return t.forword('1000');
      case 52:
        return t.forword('1100');
      case 81:
        return t.forword('0001');
      case 87:
        return t.forword('0101');
      case 69:
        return t.forword('1001');
      case 82:
        return t.forword('1101');
      case 65:
        return t.forword('0010');
      case 83:
        return t.forword('0110');
      case 68:
        return t.forword('1010');
      case 70:
        return t.forword('1110');
      case 90:
        return t.forword('0011');
      case 88:
        return t.forword('0111');
      case 67:
        return t.forword('1011');
      case 86:
        return t.forword('1111');
      default:
        return t.forword();
    }
  };
};
