package com.alibaba.fastjson.serializer;

import java.io.IOException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public interface ContextObjectSerializer extends ObjectSerializer {
    void write(JSONSerializer jSONSerializer, Object obj, BeanContext beanContext) throws IOException;
}
