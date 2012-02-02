var Trinary, o;

o = console.log;

Trinary = (function() {

  Trinary.prototype.len = 81;

  Trinary.prototype.center = 0;

  Trinary.prototype.zero = [];

  function Trinary(leng) {
    var i, _ref;
    this.leng = leng;
    this.len = this.leng;
    for (i = 0, _ref = this.len - 1; 0 <= _ref ? i <= _ref : i >= _ref; 0 <= _ref ? i++ : i--) {
      this.zero.push('5');
    }
    this.center = (this.len - 1) / 2;
  }

  Trinary.prototype.equal = function(array_1, array_2) {
    var i, len_1, len_2, _ref;
    len_1 = array_1.length;
    len_2 = array_2.length;
    if (len_1 !== len_2) {
      return false;
    } else {
      for (i = 0, _ref = len_1 - 1; 0 <= _ref ? i <= _ref : i >= _ref; 0 <= _ref ? i++ : i--) {
        if (array_1[i] !== array_2[i]) return false;
      }
      return true;
    }
  };

  Trinary.prototype.core = function(char_1, char_2) {
    var pair;
    pair = char_1 + char_2;
    switch (pair) {
      case '11':
        return '19';
      case '15':
        return '51';
      case '19':
        return '55';
      case '51':
        return '51';
      case '55':
        return '55';
      case '59':
        return '59';
      case '91':
        return '55';
      case '95':
        return '59';
      case '99':
        return '91';
      default:
        return "core error";
    }
  };

  Trinary.prototype.plus = function(array_1, array_2) {
    var array_3, array_4, i, pair, _ref;
    array_3 = this.zero.concat();
    array_4 = this.zero.concat();
    while (!this.equal(array_2, this.zero)) {
      for (i = _ref = this.len - 1; _ref <= 0 ? i <= 0 : i >= 0; _ref <= 0 ? i++ : i--) {
        pair = this.core(array_1[i], array_2[i]);
        if (pair[1] !== "5") array_3[i] = pair[1];
        if (pair[0] !== "5") if (i > 0) array_4[i - 1] = pair[0];
      }
      array_1 = array_3.concat();
      array_2 = array_4.concat();
      array_3 = this.zero.concat();
      array_4 = this.zero.concat();
    }
    return array_1;
  };

  Trinary.prototype.reverse = function(char) {
    switch (char) {
      case "1":
        return "9";
      case "5":
        return "5";
      case "9":
        return "1";
    }
  };

  Trinary.prototype.minus = function(array_1, array_2) {
    array_2 = array_2.map(this.reverse);
    return this.plus(array_1, array_2);
  };

  Trinary.prototype.multiply = function(array_1, array_2) {
    var array_3, array_4, array_5, i, j, point, _ref, _ref2;
    array_3 = this.zero.concat();
    array_4 = this.zero.concat();
    for (i = _ref = this.len - 1; _ref <= 0 ? i <= 0 : i >= 0; _ref <= 0 ? i++ : i--) {
      if (array_1[i] === "5") {
        continue;
      } else if (array_1[i] === "1") {
        array_5 = array_2.concat();
      } else {
        array_5 = array_2.map(this.reverse);
      }
      array_4 = this.zero.concat();
      for (j = _ref2 = this.len - 1; _ref2 <= 0 ? j <= 0 : j >= 0; _ref2 <= 0 ? j++ : j--) {
        point = (i - this.center) + (j - this.center) + this.center;
        if ((0 <= point && point <= this.len - 1)) array_4[point] = array_5[j];
      }
      array_3 = this.plus(array_3, array_4);
    }
    return array_3;
  };

  Trinary.prototype.abs = function(array_1) {
    var i, _i, _len;
    for (_i = 0, _len = array_1.length; _i < _len; _i++) {
      i = array_1[_i];
      if (i === "5") {
        continue;
      } else if (i === "1") {
        return array_1;
      } else if (i === "9") {
        return array_1.map(this.reverse);
      }
    }
    return array_1;
  };

  Trinary.prototype.char_smaller = function(char_1, char_2) {
    if (char_1 === "1") {
      return false;
    } else if (char_1 === "5") {
      if (char_2 === "1") {
        return true;
      } else if (char_2 === "9") {
        return false;
      }
    } else if (char_1 === "9") {
      if (char_2 === "9") {
        return false;
      } else {
        return true;
      }
    } else {
      return "error chars";
    }
  };

  Trinary.prototype.smaller = function(array_1, array_2) {
    var i, _ref;
    array_1 = this.abs(array_1);
    array_2 = this.abs(array_2);
    for (i = 0, _ref = this.len - 1; 0 <= _ref ? i <= _ref : i >= _ref; 0 <= _ref ? i++ : i--) {
      if (this.char_smaller(array_1[i], array_2[i])) return true;
      if (this.char_smaller(array_2[i], array_1[i])) return false;
    }
    return false;
  };

  Trinary.prototype.divide = function(array_1, array_2) {
    var array_3, array_4, choice, chosen, count_5_head, head_5s_1, head_5s_2, i, j, n, point, range_0, _ref, _ref2;
    if (this.equal(array_1, this.zero)) return this.zero;
    if (this.equal(array_2, this.zero)) {
      o("Divide 0..");
      return "0 error";
    }
    array_3 = this.zero.concat();
    array_4 = this.zero.concat();
    count_5_head = function(array_1) {
      var i, n, _i, _len;
      n = 0;
      for (_i = 0, _len = array_1.length; _i < _len; _i++) {
        i = array_1[_i];
        if (i === "5") {
          n += 1;
        } else {
          return n;
        }
      }
      return n;
    };
    head_5s_1 = count_5_head(array_1);
    head_5s_2 = count_5_head(array_2);
    range_0 = this.center + (head_5s_1 - this.center) - (head_5s_2 - this.center);
    if (!((0 < range_0 && range_0 <= this.len - 1))) {
      o("too far away!");
      return "error to divide";
    }
    range_0 -= 1;
    for (i = range_0, _ref = this.len - 1; range_0 <= _ref ? i <= _ref : i >= _ref; range_0 <= _ref ? i++ : i--) {
      if (this.equal(array_1, this.zero)) return array_4;
      for (j = 0, _ref2 = this.len - 1; 0 <= _ref2 ? j <= _ref2 : j >= _ref2; 0 <= _ref2 ? j++ : j--) {
        point = j - (this.center - i);
        if ((0 <= point && point <= this.len - 1)) array_3[point] = array_2[j];
      }
      n = "5";
      chosen = array_1;
      choice = this.minus(array_1, array_3);
      if (this.smaller(choice, chosen)) {
        n = "1";
        chosen = choice.concat();
      }
      choice = this.plus(array_1, array_3);
      if (this.smaller(choice, chosen)) {
        n = "9";
        chosen = choice.concat();
      }
      array_1 = chosen.concat();
      array_3 = this.zero.concat();
      array_4[i] = n;
    }
    return array_4;
  };

  Trinary.prototype.to_string = function(array_1) {
    var i, string, _ref;
    string = "";
    for (i = 0, _ref = this.len - 1; 0 <= _ref ? i <= _ref : i >= _ref; 0 <= _ref ? i++ : i--) {
      string += array_1[i];
      if (i === this.center) string += "&";
    }
    while (string[0] === "5") {
      string = string.slice(1);
    }
    while (string[string.length - 1] === "5") {
      string = string.slice(0, (-2) + 1 || 9e9);
    }
    return string;
  };

  Trinary.prototype.from_string = function(string) {
    var after, array_1, before, i, point, regex, _ref, _ref2;
    array_1 = this.zero.concat();
    regex = string.match(/^([1-9]*)&([1-9]*)$/);
    if (!regex) {
      o("--" + string + '--', regex);
      o("wrong string");
      return "error";
    } else {
      before = regex[1];
      after = regex[2];
      if (before.length > this.center + 1) {
        o('before: ', before, before.length, this.center);
        o("too long");
        return "error";
      }
      if (after.length > this.center) {
        o("too long");
        return "error";
      }
      if (before.length > 0) {
        for (i = 0, _ref = before.length - 1; 0 <= _ref ? i <= _ref : i >= _ref; 0 <= _ref ? i++ : i--) {
          point = this.center - (before.length - i) + 1;
          array_1[point] = before[i];
        }
      }
      if (after.length > 0) {
        for (i = 0, _ref2 = after.length - 1; 0 <= _ref2 ? i <= _ref2 : i >= _ref2; 0 <= _ref2 ? i++ : i--) {
          point = this.center + (i + 1);
          array_1[point] = after[i];
        }
      }
      return array_1;
    }
  };

  Trinary.prototype.trinary_plus = function(string_1, string_2) {
    var array_1, array_2, array_3, string_3;
    array_1 = this.from_string(string_1);
    array_2 = this.from_string(string_2);
    array_3 = this.plus(array_1, array_2);
    string_3 = this.to_string(array_3);
    return string_3;
  };

  Trinary.prototype.trinary_multiply = function(string_1, string_2) {
    var array_1, array_2, array_3, string_3;
    array_1 = this.from_string(string_1);
    array_2 = this.from_string(string_2);
    array_3 = this.multiply(array_1, array_2);
    return string_3 = this.to_string(array_3);
  };

  Trinary.prototype.trinary_divide = function(string_1, string_2) {
    var array_1, array_2, array_3, string_3;
    array_1 = this.from_string(string_1);
    array_2 = this.from_string(string_2);
    array_3 = this.divide(array_1, array_2);
    return string_3 = this.to_string(array_3);
  };

  Trinary.prototype.trinary_minus = function(string_1, string_2) {
    var array_1, array_2, array_3, string_3;
    array_1 = this.from_string(string_1);
    array_2 = this.from_string(string_2);
    array_3 = this.minus(array_1, array_2);
    return string_3 = this.to_string(array_3);
  };

  Trinary.prototype.map_luo = {
    "1": ["1", "5"],
    "2": ["9", "9"],
    "3": ["5", "1"],
    "4": ["9", "1"],
    "5": ["5", "5"],
    "6": ["1", "9"],
    "7": ["5", "9"],
    "8": ["1", "1"],
    "9": ["9", "5"],
    "15": "1",
    "99": "2",
    "51": "3",
    "91": "4",
    "55": "5",
    "19": "6",
    "59": "7",
    "11": "8",
    "95": "9"
  };

  Trinary.prototype.luo_array_complex = function(array_1) {
    var array_2, array_3, cplx, i, pair, _ref;
    array_2 = this.zero.concat();
    array_3 = this.zero.concat();
    for (i = 0, _ref = this.len - 1; 0 <= _ref ? i <= _ref : i >= _ref; 0 <= _ref ? i++ : i--) {
      cplx = this.map_luo[array_1[i]];
      array_2[i] = cplx[0];
      array_3[i] = cplx[1];
    }
    pair = [array_2, array_3];
    return pair;
  };

  Trinary.prototype.complex_array_luo = function(pair) {
    var array_1, array_2, array_3, i, _ref;
    array_1 = pair[0];
    array_2 = pair[1];
    array_3 = this.zero.concat();
    for (i = 0, _ref = this.len - 1; 0 <= _ref ? i <= _ref : i >= _ref; 0 <= _ref ? i++ : i--) {
      array_3[i] = this.map_luo[array_1[i] + '' + array_2[i]];
    }
    return array_3;
  };

  Trinary.prototype.complex_array_plus = function(pair_1, pair_2) {
    var pair_3;
    pair_3 = [];
    pair_3.push(this.plus(pair_1[0], pair_2[0]));
    pair_3.push(this.plus(pair_1[1], pair_2[1]));
    return pair_3;
  };

  Trinary.prototype.complex_array_minus = function(pair_1, pair_2) {
    var pair_3;
    pair_3 = [];
    pair_3.push(this.minus(pair_1[0], pair_2[0]));
    pair_3.push(this.minus(pair_1[1], pair_2[1]));
    return pair_3;
  };

  Trinary.prototype.complex_array_multiply = function(pair_1, pair_2) {
    var pair_3, part_1, part_2, part_3, part_4;
    pair_3 = [];
    part_1 = this.multiply(pair_1[0], pair_2[0]);
    part_2 = this.multiply(pair_1[1], pair_2[1]);
    pair_3.push(this.minus(part_1, part_2));
    part_3 = this.multiply(pair_1[0], pair_2[1]);
    part_4 = this.multiply(pair_1[1], pair_2[0]);
    pair_3.push(this.plus(part_3, part_4));
    return pair_3;
  };

  Trinary.prototype.complex_array_divide = function(pair_1, pair_2) {
    var pair_3, pair_4, pair_5, part_1;
    pair_3 = pair_2.concat();
    pair_3[1] = pair_3[1].map(this.reverse);
    pair_4 = this.complex_array_multiply(pair_2, pair_3);
    part_1 = pair_4[0];
    pair_5 = this.complex_array_multiply(pair_1, pair_3);
    pair_5[0] = this.divide(pair_5[0], part_1);
    pair_5[1] = this.divide(pair_5[1], part_1);
    return pair_5;
  };

  Trinary.prototype.luo_method = function(string_1, string_2, string_3) {
    var array_1, array_2, array_3, pair_1, pair_2, pair_3;
    array_1 = this.from_string(string_1);
    pair_1 = this.luo_array_complex(array_1);
    array_2 = this.from_string(string_2);
    pair_2 = this.luo_array_complex(array_2);
    if (string_3 === "plus") {
      pair_3 = this.complex_array_plus(pair_1, pair_2);
    } else if (string_3 === "minus") {
      pair_3 = this.complex_array_minus(pair_1, pair_2);
    } else if (string_3 === "multiply") {
      pair_3 = this.complex_array_multiply(pair_1, pair_2);
    } else {
      pair_3 = this.complex_array_divide(pair_1, pair_2);
    }
    array_3 = this.complex_array_luo(pair_3);
    string_3 = this.to_string(array_3);
    return string_3;
  };

  Trinary.prototype.luo_plus = function(string_1, string_2) {
    return this.luo_method(string_1, string_2, "plus");
  };

  Trinary.prototype.luo_minus = function(string_1, string_2) {
    return this.luo_method(string_1, string_2, "minus");
  };

  Trinary.prototype.luo_multiply = function(string_1, string_2) {
    return this.luo_method(string_1, string_2, "multiply");
  };

  Trinary.prototype.luo_divide = function(string_1, string_2) {
    return this.luo_method(string_1, string_2, "divide");
  };

  Trinary.prototype.luo_pow = function(string, num) {
    var array_1, array_2, i;
    array_1 = this.from_string(string);
    array_2 = this.from_string("1&");
    if (!((Math.floor(num)) === num && num > 1)) {
      o("Dont use luo_pow like this...");
    } else {
      for (i = 1; 1 <= num ? i <= num : i >= num; 1 <= num ? i++ : i--) {
        array_2 = this.multiply(array_2, array_1);
      }
    }
    return this.to_string(array_2);
  };

  Trinary.prototype.to_decimal = function(array_1) {
    var base, i, sum, _i, _len;
    sum = 0;
    base = Math.pow(3, this.center);
    for (_i = 0, _len = array_1.length; _i < _len; _i++) {
      i = array_1[_i];
      if (i === "1") {
        sum += base;
      } else if (i === "9") {
        sum -= base;
      }
      base /= 3;
    }
    return sum;
  };

  Trinary.prototype.number = {
    "0": "&",
    "1": "1&",
    "2": "19&",
    "3": "15&",
    "4": "11&",
    "5": "199&",
    "6": "195&",
    "7": "191&",
    "8": "159&",
    "9": "155&",
    "10": "151&"
  };

  Trinary.prototype.from_decimal = function(num) {
    var base, char, d, deci, decimal, i, integer, length, negative, regex, space, sum, ten, _ref;
    if (typeof num !== "number") return "type error!";
    deci = this.divide(this.from_string("1&"), this.from_string("151&"));
    integer = Math.floor(num);
    ten = this.from_string("151&");
    decimal = num - integer;
    negative = false;
    if (integer < 0) {
      integer = -integer;
      negative = true;
    }
    sum = this.from_string("&");
    if (integer !== 0) {
      length = ('' + num).length;
      base = this.from_string("1&");
      while (integer >= 1) {
        d = integer % 10;
        char = this.from_string(this.number['' + d]);
        space = this.multiply(char, base);
        sum = this.plus(sum, space);
        base = this.multiply(base, ten);
        integer = (integer - d) / 10;
      }
    }
    if (negative) sum = sum.map(this.reverse);
    base = this.from_string("1&");
    regex = ('' + num).match(/\.([1-9]+)$/);
    if (regex) {
      decimal = regex[1];
      for (i = 0, _ref = decimal.length - 1; 0 <= _ref ? i <= _ref : i >= _ref; 0 <= _ref ? i++ : i--) {
        base = this.multiply(base, deci);
        d = decimal[i];
        if (d !== "0") {
          char = this.from_string(this.number[d]);
          space = this.multiply(char, base);
          sum = this.plus(space, sum);
        }
      }
    }
    return sum;
  };

  Trinary.prototype.luo2xoy = function(string) {
    var array, point;
    point = {
      x: 0,
      y: 0
    };
    array = this.luo_array_complex(this.from_string(string));
    point.x = this.to_decimal(array[0]);
    point.y = this.to_decimal(array[1]);
    return point;
  };

  Trinary.prototype.xoy2luo = function(x, y) {
    var array_1, array_2, pair, point;
    array_1 = this.from_decimal(x);
    array_2 = this.from_decimal(y);
    pair = [array_1, array_2];
    point = this.complex_array_luo(pair);
    point = this.to_string(point);
    return point;
  };

  return Trinary;

})();
