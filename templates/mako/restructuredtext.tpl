${data["title"]}
${"=" * len(data["title"])}

% for version in data["versions"]:
${version["label"]}
${"-" * len(version["label"])}

% for section in version["sections"]:
${section["label"]}
${"~" * len(section["label"])}

% for commit in section["commits"]:
<%
subject = "%s [%s]" % (commit["subject"], commit["author"])
entry = indent('\n'.join(textwrap.wrap(subject)),
                       first="- ").strip()
%>${entry}

% if commit["body"]:
${indent(commit["body"])}

% endif
% endfor
% endfor
% endfor
