<type> []
<inheritsFrom> []
<addOn> []
<$args> [[object Object]]
<version> []
<isConstant> [false]
<isInner> [false]
<isNamespace> [false]
<augments> []
<fires> []
<desc> []
<alias> [_renderBuffer-slice.y]
<id> [5660]
<isStatic> [false]
<see> []
<methods> []
<comment> [
 @desc ]
<memberOf> []
<since> []
<returns> []
<classDesc> []
<isEvent> [false]
<isIgnored> [false]
<isPrivate> [false]
<defaultValue> [undefined]
<srcFile> [../../timestep/timestep/tiled/TiledMapView2.js]
<exceptions> []
<isa> [OBJECT]
<_name> [_renderBuffer-slice.y]
<_params> []
<deprecated> []
<requires> []
<author> []
<inherits> []
<example> []
<properties> []
<name> [_renderBuffer-slice.y]
<getEvents> [
function () {
    var events = [];
    for (var i = 0, l = this.methods.length; i < l; i++) {
        if (this.methods[i].isEvent) {
            this.methods[i].name = this.methods[i].name.replace("event:", "");
            events.push(this.methods[i]);
        }
    }
    return events;
}
]
<params> []
<clone> [
function () {
    var clone = new JSDOC.Symbol();
    clone.populate.apply(clone, this.$args);
    clone.srcFile = this.srcFile;
    return clone;
}
]
<setTags> [
function () {
    var authors = this.comment.getTag("author");
    if (authors.length) {
        this.author = authors.map(function ($) {
            return $.desc;
        }).join(", ");
    }
    var descs = this.comment.getTag("desc");
    if (descs.length) {
        this.desc = descs.map(function ($) {
            return $.desc;
        }).join("\n");
    }
    if (this.is("FILE")) {
        if (!this.alias) {
            this.alias = this.srcFile;
        }
        var overviews = this.comment.getTag("overview");
        if (overviews.length) {
            this.desc = [this.desc].concat(overviews.map(function ($) {
                return $.desc;
            })).join("\n");
        }
    }
    var sinces = this.comment.getTag("since");
    if (sinces.length) {
        this.since = sinces.map(function ($) {
            return $.desc;
        }).join(", ");
    }
    if (this.comment.getTag("constant").length) {
        this.isConstant = true;
    }
    var versions = this.comment.getTag("version");
    if (versions.length) {
        this.version = versions.map(function ($) {
            return $.desc;
        }).join(", ");
    }
    var deprecateds = this.comment.getTag("deprecated");
    if (deprecateds.length) {
        this.deprecated = deprecateds.map(function ($) {
            return $.desc;
        }).join("\n");
    }
    var examples = this.comment.getTag("example");
    if (examples.length) {
        this.example = examples.map(function ($) {
            $.desc = $.desc.replace(/\s+$/, "");
            return $;
        });
    }
    var sees = this.comment.getTag("see");
    if (sees.length) {
        var thisSee = this.see;
        sees.map(function ($) {
            thisSee.push($.desc);
        });
    }
    var classes = this.comment.getTag("class");
    if (classes.length) {
        this.isa = "CONSTRUCTOR";
        this.classDesc = classes[0].desc;
    }
    var namespaces = this.comment.getTag("namespace");
    if (namespaces.length) {
        this.classDesc = namespaces[0].desc;
        this.isNamespace = true;
    }
    var params = this.comment.getTag("param");
    if (params.length) {
        var thisParams = this.params;
        if (thisParams.length == 0) {
            this.params = params;
        } else {
            for (var i = 0, l = params.length; i < l; i++) {
                if (thisParams[i]) {
                    if (params[i].type) {
                        thisParams[i].type = params[i].type;
                    }
                    thisParams[i].name = params[i].name;
                    thisParams[i].desc = params[i].desc;
                    thisParams[i].isOptional = params[i].isOptional;
                    thisParams[i].defaultValue = params[i].defaultValue;
                } else {
                    thisParams[i] = params[i];
                }
            }
        }
    }
    if (this.comment.getTag("constructor").length) {
        this.isa = "CONSTRUCTOR";
    }
    if (this.comment.getTag("static").length) {
        this.isStatic = true;
        if (this.isa == "CONSTRUCTOR") {
            this.isNamespace = true;
        }
    }
    if (this.comment.getTag("inner").length) {
        this.isInner = true;
        this.isStatic = false;
    }
    var names = this.comment.getTag("name");
    if (names.length) {
        this.name = names[0].desc;
    }
    if (this.comment.getTag("field").length) {
        this.isa = "OBJECT";
    }
    if (this.comment.getTag("function").length) {
        this.isa = "FUNCTION";
        if (/event:/.test(this.alias)) {
            this.isEvent = true;
        }
    }
    var events = this.comment.getTag("event");
    if (events.length) {
        this.isa = "FUNCTION";
        this.isEvent = true;
        if (!/event:/.test(this.alias)) {
            this.alias = this.alias.replace(/^(.*[.#-])([^.#-]+)$/, "$1event:$2");
        }
    }
    var fires = this.comment.getTag("fires");
    if (fires.length) {
        for (var i = 0; i < fires.length; i++) {
            this.fires.push(fires[i].desc);
        }
    }
    var properties = this.comment.getTag("property");
    if (properties.length) {
        thisProperties = this.properties;
        for (var i = 0; i < properties.length; i++) {
            var property = new JSDOC.Symbol(this.alias + "#" + properties[i].name, [], "OBJECT", new JSDOC.DocComment("/**" + properties[i].desc + "*/"));
            if (properties[i].type) {
                property.type = properties[i].type;
            }
            if (properties[i].defaultValue) {
                property.defaultValue = properties[i].defaultValue;
            }
            this.addProperty(property);
            if (!JSDOC.Parser.symbols.getSymbolByName(property.name)) {
                JSDOC.Parser.addSymbol(property);
            }
        }
    }
    var returns = this.comment.getTag("return");
    if (returns.length) {
        this.returns = returns;
        this.type = returns.map(function ($) {
            return $.type;
        }).join(", ");
    }
    this.exceptions = this.comment.getTag("throws");
    var requires = this.comment.getTag("requires");
    if (requires.length) {
        this.requires = requires.map(function ($) {
            return $.desc;
        });
    }
    var types = this.comment.getTag("type");
    if (types.length) {
        this.type = types[0].desc;
    }
    if (this.comment.getTag("private").length || this.isInner) {
        this.isPrivate = true;
    }
    if (this.comment.getTag("ignore").length) {
        this.isIgnored = true;
    }
    var inherits = this.comment.getTag("inherits");
    if (inherits.length) {
        for (var i = 0; i < inherits.length; i++) {
            if (/^\s*([a-z$0-9_.#:-]+)(?:\s+as\s+([a-z$0-9_.#:-]+))?/i.test(inherits[i].desc)) {
                var inAlias = RegExp.$1;
                var inAs = RegExp.$2 || inAlias;
                if (inAlias) {
                    inAlias = inAlias.replace(/\.prototype\.?/g, "#");
                }
                if (inAs) {
                    inAs = inAs.replace(/\.prototype\.?/g, "#");
                    inAs = inAs.replace(/^this\.?/, "#");
                }
                if (inAs.indexOf(inAlias) != 0) {
                    var joiner = ".";
                    if (this.alias.charAt(this.alias.length - 1) == "#" || inAs.charAt(0) == "#") {
                        joiner = "";
                    }
                    inAs = this.alias + joiner + inAs;
                }
            }
            this.inherits.push({alias:inAlias, as:inAs});
        }
    }
    this.augments = this.comment.getTag("augments");
    var defaults = this.comment.getTag("default");
    if (defaults.length) {
        if (this.is("OBJECT")) {
            this.defaultValue = defaults[0].desc;
        }
    }
    var memberOfs = this.comment.getTag("memberOf");
    if (memberOfs.length) {
        this.memberOf = memberOfs[0].desc;
        this.memberOf = this.memberOf.replace(/\.prototype\.?/g, "#");
    }
    if (this.comment.getTag("public").length) {
        this.isPrivate = false;
    }
    if (JSDOC.PluginManager) {
        JSDOC.PluginManager.run("onSetTags", this);
    }
}
]
<inherit> [
function (symbol) {
    if (!this.hasMember(symbol.name) && !symbol.isInner) {
        if (symbol.is("FUNCTION")) {
            this.methods.push(symbol);
        } else {
            if (symbol.is("OBJECT")) {
                this.properties.push(symbol);
            }
        }
    }
}
]
<init> [
function () {
    this._name = "";
    this._params = [];
    this.$args = [];
    this.addOn = "";
    this.alias = "";
    this.augments = [];
    this.author = "";
    this.classDesc = "";
    this.comment = {};
    this.defaultValue = undefined;
    this.deprecated = "";
    this.desc = "";
    this.example = [];
    this.exceptions = [];
    this.fires = [];
    this.id = JSDOC.Symbol.count++;
    this.inherits = [];
    this.inheritsFrom = [];
    this.isa = "OBJECT";
    this.isConstant = false;
    this.isEvent = false;
    this.isIgnored = false;
    this.isInner = false;
    this.isNamespace = false;
    this.isPrivate = false;
    this.isStatic = false;
    this.memberOf = "";
    this.methods = [];
    this.properties = [];
    this.requires = [];
    this.returns = [];
    this.see = [];
    this.since = "";
    this.srcFile = {};
    this.type = "";
    this.version = "";
}
]
<addMethod> [
function (symbol) {
    var methodAlias = symbol.alias;
    var thisMethods = this.methods;
    for (var i = 0, l = thisMethods.length; i < l; i++) {
        if (thisMethods[i].alias == methodAlias) {
            thisMethods[i] = symbol;
            return;
        }
    }
    thisMethods.push(symbol);
}
]
<addMember> [
function (symbol) {
    if (symbol.is("FUNCTION")) {
        this.addMethod(symbol);
    } else {
        if (symbol.is("OBJECT")) {
            this.addProperty(symbol);
        }
    }
}
]
<serialize> [
function () {
    var keys = [];
    for (var p in this) {
        keys.push(p);
    }
    keys = keys.sort();
    var out = "";
    for (var i in keys) {
        if (typeof this[keys[i]] == "function") {
            continue;
        }
        out += keys[i] + " => " + Dumper.dump(this[keys[i]]) + ",\n";
    }
    return "\n{\n" + out + "}\n";
}
]
<hasMethod> [
function (name) {
    var thisMethods = this.methods;
    for (var i = 0, l = thisMethods.length; i < l; i++) {
        if (thisMethods[i].name == name) {
            return true;
        }
        if (thisMethods[i].alias == name) {
            return true;
        }
    }
    return false;
}
]
<hasMember> [
function (name) {
    return (this.hasMethod(name) || this.hasProperty(name));
}
]
<addProperty> [
function (symbol) {
    var propertyAlias = symbol.alias;
    var thisProperties = this.properties;
    for (var i = 0, l = thisProperties.length; i < l; i++) {
        if (thisProperties[i].alias == propertyAlias) {
            thisProperties[i] = symbol;
            return;
        }
    }
    thisProperties.push(symbol);
}
]
<isBuiltin> [
function () {
    return JSDOC.Lang.isBuiltin(this.alias);
}
]
<setType> [
function (comment, overwrite) {
    if (!overwrite && this.type) {
        return;
    }
    var typeComment = JSDOC.DocComment.unwrapComment(comment);
    this.type = typeComment;
}
]
<hasProperty> [
function (name) {
    var thisProperties = this.properties;
    for (var i = 0, l = thisProperties.length; i < l; i++) {
        if (thisProperties[i].name == name) {
            return true;
        }
        if (thisProperties[i].alias == name) {
            return true;
        }
    }
    return false;
}
]
<is> [
function (what) {
    return this.isa === what;
}
]
<populate> [
function (name, params, isa, comment) {
    this.$args = arguments;
    this.name = name;
    this.alias = this.name;
    this.params = params;
    this.isa = (isa == "VIRTUAL") ? "OBJECT" : isa;
    this.comment = comment || new JSDOC.DocComment("");
    this.srcFile = JSDOC.Symbol.srcFile;
    if (this.is("FILE") && !this.alias) {
        this.alias = this.srcFile;
    }
    this.setTags();
    if (typeof JSDOC.PluginManager != "undefined") {
        JSDOC.PluginManager.run("onSymbol", this);
    }
}
]
<getMethods> [
function () {
    var nonEvents = [];
    for (var i = 0, l = this.methods.length; i < l; i++) {
        if (!this.methods[i].isEvent) {
            nonEvents.push(this.methods[i]);
        }
    }
    return nonEvents;
}
]