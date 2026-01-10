package com.alibaba.fastjson.parser.deserializer;

import java.lang.reflect.Type;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public interface PropertyProcessable extends ParseProcess {
    void apply(String str, Object obj);

    Type getType(String str);
}
