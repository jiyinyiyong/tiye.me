var editor;

editor = function(box) {
  return box.onkeydown = function(event) {
    var addtion, before, behind, between, c, end_p, front, indent, indents, last_line, last_n, line, new_p, p, start_p, tab_length, tab_only;
    start_p = box.selectionStart;
    end_p = box.selectionEnd;
    c = box.value;
    if (event.keyCode === 9) {
      if (!event.ctrlKey) {
        if (start_p === end_p) {
          p = start_p;
          if (event.shiftKey) {
            if (c[p - 1] === '\t') {
              box.value = c.slice(0, (p - 2) + 1 || 9e9) + c.slice(p);
              box.setSelectionRange(p - 1, p - 1);
            }
          } else {
            if (p === 0) {
              box.value = '\t' + box.value;
              box.setSelectionRange(1, 1);
              return false;
            } else if (c[p - 1] === '\n') {
              last_line = c.slice(0, (p - 2) + 1 || 9e9).lastIndexOf('\n');
              indent = c.slice(last_line, (p - 2) + 1 || 9e9).match(/^\n\t+/);
              if (indent) {
                indents = indent[0].slice(1);
                if (indents.length >= 1) {
                  box.value = c.slice(0, (p - 1) + 1 || 9e9) + indents + c.slice(p);
                  new_p = p + indents.length;
                  box.setSelectionRange(new_p, new_p);
                  return false;
                }
              }
            }
            box.value = c.slice(0, (p - 1) + 1 || 9e9) + '\t' + c.slice(p);
            box.setSelectionRange(p + 1, p + 1);
          }
          return false;
        } else {
          last_line = c.slice(0, (start_p - 1) + 1 || 9e9).lastIndexOf('\n');
          if (last_line >= 0) start_p = last_line;
          if (event.shiftKey) {
            front = start_p > 0 ? c.slice(0, (start_p - 1) + 1 || 9e9) : '';
            between = c.slice(start_p, (end_p - 1) + 1 || 9e9).replace(/\n\t/g, '\n');
            behind = c.slice(end_p);
            if (start_p === 0) if (between[0] === '\t') between = between.slice(1);
            box.value = front + between + behind;
          } else {
            front = start_p > 0 ? c.slice(0, (start_p - 1) + 1 || 9e9) : '';
            between = c.slice(start_p, (end_p - 1) + 1 || 9e9).replace(/\n/g, '\n\t');
            behind = c.slice(end_p);
            addtion = start_p === 0 ? '\t' : '';
            box.value = addtion + front + between + behind;
          }
        }
        return false;
      }
    } else if (event.keyCode === 13) {
      if (!(event.ctrlKey || start_p === 0)) {
        if (start_p === end_p) {
          p = start_p;
          if (!event.shiftKey) {
            last_n = c.slice(0, (p - 1) + 1 || 9e9).lastIndexOf('\n');
            if (last_n === -1) {
              line = '\n' + c.slice(0, (p - 1) + 1 || 9e9);
            } else {
              line = c.slice(last_n, (p - 1) + 1 || 9e9);
            }
            indent = line.match(/^\n\t+/);
            console.log(indent);
            if (indent) {
              indents = indent[0].slice(1);
              behind = c.length === p ? '' : c.slice(p);
              box.value = c.slice(0, (p - 1) + 1 || 9e9) + '\n' + indents + behind;
              new_p = p + indents.length + 1;
              box.setSelectionRange(new_p, new_p);
              return false;
            }
          } else {
            indent = c.slice(0, (p - 1) + 1 || 9e9).match(/\n\t+$/);
            if (indent) {
              tab_length = indent[0].length;
              front = c.slice(0, (p - 1 - tab_length) + 1 || 9e9);
              behind = c.slice(p);
              box.value = front + behind;
              new_p = p - tab_length;
              box.setSelectionRange(new_p, new_p);
              return false;
            }
          }
        }
      }
    } else if (event.keyCode === 8) {
      if (start_p === end_p) {
        p = start_p;
        if (c[p - 1] === '\n') {
          before = c.slice(0, (p - 2) + 1 || 9e9);
          tab_only = before.match(/\n\t+$/);
          front = c.slice(0, (p - 1) + 1 || 9e9);
          behind = c.slice(p);
          if (tab_only) {
            tab_length = tab_only[0].length - 1;
            front = front.slice(0, (-2 - tab_length) + 1 || 9e9);
            box.value = front + behind;
            new_p = p - tab_length - 1;
            box.setSelectionRange(new_p, new_p);
            return false;
          }
        }
      }
    }
  };
};

window.onload = function() {
  var box;
  box = (document.getElementsByTagName('textarea'))[0];
  editor(box);
  return this;
};
