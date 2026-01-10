package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.parser.deserializer.d;
import java.io.IOException;
import java.lang.reflect.Type;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class AdderSerializer implements ObjectSerializer {
    public static final AdderSerializer instance = new AdderSerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i6) throws IOException {
        SerializeWriter serializeWriter = jSONSerializer.out;
        if (d.y(obj)) {
            serializeWriter.writeFieldValue('{', "value", d.u(obj).longValue());
            serializeWriter.write(125);
        } else if (d.B(obj)) {
            serializeWriter.writeFieldValue('{', "value", d.t(obj).doubleValue());
            serializeWriter.write(125);
        }
    }
}
