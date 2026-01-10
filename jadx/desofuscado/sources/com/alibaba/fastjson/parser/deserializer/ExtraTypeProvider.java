package com.alibaba.fastjson.parser.deserializer;

import java.lang.reflect.Type;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public interface ExtraTypeProvider extends ParseProcess {
    Type getExtraType(Object obj, String str);
}
