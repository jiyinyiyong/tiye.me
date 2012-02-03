var demo, o, tool;

o = console.log;

demo = "ds`gfg`fsd\nfsdfsdfsdfs\nhttp://baidu.com\n\nfsdfsdfs\ndfdsfsdfsd\nfsdf\n	sdfsdf\n	sdfsdf";

tool = function(demo) {
  var html, i, line, lines, _i, _len, _ref;
  lines = demo.split('\n');
  lines.push('');
  lines.unshift('');
  for (i = 1, _ref = lines.length - 2; 1 <= _ref ? i <= _ref : i >= _ref; 1 <= _ref ? i++ : i--) {
    lines[i] = lines[i].replace(/</g, "&lt;");
    lines[i] = lines[i].replace(/>/g, "&gt;");
    if (lines[i].slice(0, 1) === '@') {
      lines[i] = '<p><b>' + lines[i].slice(1) + '</b></p>';
    } else if (lines[i].slice(0, 1) === '\t') {
      lines[i] = lines[i].replace(/</g, '&lt;');
      lines[i] = lines[i].replace(/>/g, '&gt;');
      lines[i] = lines[i].replace(/\n/g, '<br/>');
    } else {
      lines[i] = lines[i] + '<br/>';
    }
    if (lines[i].slice(0, 1) === '') {
      lines[i] = '<br/>';
    } else {
      lines[i] = lines[i].replace(/(`)([^`\n]+)(`)/g, "<code>$2</code>");
      lines[i] = lines[i].replace(/([a-zA-z]+:\/\/)([^\s<]*)/g, "<a href='$1$2'>$2</a>");
    }
    if (lines[i].slice(0, 1) !== '\t') {
      if (lines[i + 1].slice(0, 1) === '\t') lines[i] = lines[i] + '<pre><code>';
    } else {
      if (lines[i + 1].slice(0, 1) !== '\t') {
        lines[i] = lines[i] + '</code></pre>';
      } else {
        lines[i] = lines[i] + '<br/>';
      }
    }
    if (lines[i].slice(0, 1) === '\t') lines[i] = lines[i].slice(1);
  }
  html = '';
  for (_i = 0, _len = lines.length; _i < _len; _i++) {
    line = lines[_i];
    html += line;
  }
  return html;
};

exports.tool = tool;
