package com.alibaba.fastjson.parser;

/* compiled from: MyApplication */
@Deprecated
/* loaded from: classes.dex */
public class DefaultExtJSONParser extends DefaultJSONParser {
    public DefaultExtJSONParser(String str) {
        this(str, ParserConfig.getGlobalInstance());
    }

    public DefaultExtJSONParser(String str, ParserConfig parserConfig) {
        super(str, parserConfig);
    }

    public DefaultExtJSONParser(String str, ParserConfig parserConfig, int i6) {
        super(str, parserConfig, i6);
    }

    public DefaultExtJSONParser(char[] cArr, int i6, ParserConfig parserConfig, int i10) {
        super(cArr, i6, parserConfig, i10);
    }
}
