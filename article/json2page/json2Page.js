var json2Page;

json2Page = function(json) {
  var data, json2attr, json2css, json2page, json2style, o;
  o = console.log;
  data = {
    'html': {
      'head': {
        'title': 'json2page',
        'meta': {
          'attr': {
            'charset': 'utf-8'
          }
        },
        'css': {
          'body': {
            'color': 'red'
          }
        },
        'script': {
          'attr': {
            'type': 'application/javascript'
          },
          'text': 'console.log("a");'
        }
      },
      'body': {
        'div': {
          'attr': {
            'width': '200px',
            'height': '400px'
          },
          'style': {
            'background': 'hsl(0,0%,0%)',
            'color': 'white',
            'height': '300px'
          }
        }
      }
    }
  };
  json2style = function(json_data) {
    var key, style, value;
    style = ' style="';
    for (key in json_data) {
      value = json_data[key];
      style += "" + key + ": " + value + ";";
    }
    style += '"';
    return style;
  };
  json2attr = function(json_data) {
    var attrs, key, value;
    attrs = '';
    for (key in json_data) {
      value = json_data[key];
      if (key === 'style') {
        attrs += json2style(value);
      } else {
        attrs += "" + key + "=\"" + value + "\"";
      }
    }
    return attrs;
  };
  json2css = function(json_data) {
    var css, sub_key1, sub_key2, sub_value1, sub_value2;
    css = '<style>';
    for (sub_key1 in json_data) {
      sub_value1 = json_data[sub_key1];
      css += sub_key1 + '{';
      for (sub_key2 in sub_value1) {
        sub_value2 = sub_value1[sub_key2];
        css += "" + sub_key2 + ": " + sub_value2 + ";";
      }
      css += '}';
    }
    css += '</style>';
    return css;
  };
  json2page = function(json_data) {
    var elem, key, page, sub_json_data, sub_key, sub_value, value;
    page = '';
    for (key in json_data) {
      value = json_data[key];
      if (key === 'text') {
        page += value;
        page += '';
      } else if (typeof value === 'string') {
        elem = "<" + key + ">";
        elem += value + '';
        elem += "</" + key + ">";
        return elem;
      } else if (key === 'css') {
        page += json2css(value);
      } else {
        page += "<" + key;
        if (value['attr']) {
          page += ' ';
          page += json2attr(value['attr']);
        }
        if (value['style']) page += json2style(value['style']);
        page += '>';
        for (sub_key in value) {
          sub_value = value[sub_key];
          if (sub_key !== 'attr' && sub_key !== 'style') {
            sub_json_data = {};
            sub_json_data[sub_key] = sub_value;
            page += json2page(sub_json_data);
          }
        }
        page += "</" + key + ">";
      }
    }
    return page;
  };
  return json2page(json);
};

//exports.json2Page = json2Page;
