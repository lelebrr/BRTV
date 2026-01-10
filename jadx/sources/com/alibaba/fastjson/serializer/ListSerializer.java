package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.List;
import okhttp3.HttpUrl;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class ListSerializer implements ObjectSerializer {
    public static final ListSerializer instance = new ListSerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public final void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i6) throws IOException {
        int i10;
        Object obj3;
        boolean z7;
        SerializeWriter serializeWriter = jSONSerializer.out;
        SerializerFeature serializerFeature = SerializerFeature.WriteClassName;
        boolean z10 = serializeWriter.isEnabled(serializerFeature) || SerializerFeature.isEnabled(i6, serializerFeature);
        SerializeWriter serializeWriter2 = jSONSerializer.out;
        Type collectionItemType = z10 ? TypeUtils.getCollectionItemType(type) : null;
        if (obj == null) {
            serializeWriter2.writeNull(SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        List list = (List) obj;
        if (list.size() == 0) {
            serializeWriter2.append((CharSequence) HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
            return;
        }
        SerialContext serialContext = jSONSerializer.context;
        jSONSerializer.setContext(serialContext, obj, obj2, 0);
        try {
            char c5 = ',';
            if (serializeWriter2.isEnabled(SerializerFeature.PrettyFormat)) {
                serializeWriter2.append('[');
                jSONSerializer.incrementIndent();
                int i11 = 0;
                for (Object obj4 : list) {
                    if (i11 != 0) {
                        serializeWriter2.append(c5);
                    }
                    jSONSerializer.println();
                    if (obj4 == null) {
                        jSONSerializer.out.writeNull();
                    } else if (jSONSerializer.containsReference(obj4)) {
                        jSONSerializer.writeReference(obj4);
                    } else {
                        ObjectSerializer objectWriter = jSONSerializer.getObjectWriter(obj4.getClass());
                        jSONSerializer.context = new SerialContext(serialContext, obj, obj2, 0, 0);
                        objectWriter.write(jSONSerializer, obj4, Integer.valueOf(i11), collectionItemType, i6);
                    }
                    i11++;
                    c5 = ',';
                }
                jSONSerializer.decrementIdent();
                jSONSerializer.println();
                serializeWriter2.append(']');
                jSONSerializer.context = serialContext;
                return;
            }
            char c8 = ',';
            serializeWriter2.append('[');
            int size = list.size();
            int i12 = 0;
            while (i12 < size) {
                Object obj5 = list.get(i12);
                if (i12 != 0) {
                    serializeWriter2.append(c8);
                }
                if (obj5 == null) {
                    serializeWriter2.append((CharSequence) "null");
                } else {
                    Class<?> cls = obj5.getClass();
                    if (cls == Integer.class) {
                        serializeWriter2.writeInt(((Integer) obj5).intValue());
                    } else if (cls == Long.class) {
                        long jLongValue = ((Long) obj5).longValue();
                        if (z10) {
                            serializeWriter2.writeLong(jLongValue);
                            serializeWriter2.write(76);
                        } else {
                            serializeWriter2.writeLong(jLongValue);
                        }
                    } else if ((SerializerFeature.DisableCircularReferenceDetect.mask & i6) != 0) {
                        i10 = i12;
                        jSONSerializer.getObjectWriter(obj5.getClass()).write(jSONSerializer, obj5, Integer.valueOf(i12), collectionItemType, i6);
                        z7 = z10;
                        i12 = i10 + 1;
                        z10 = z7;
                        c8 = ',';
                    } else {
                        i10 = i12;
                        if (serializeWriter2.disableCircularReferenceDetect) {
                            obj3 = obj5;
                            z7 = z10;
                        } else {
                            obj3 = obj5;
                            z7 = z10;
                            jSONSerializer.context = new SerialContext(serialContext, obj, obj2, 0, 0);
                        }
                        if (jSONSerializer.containsReference(obj3)) {
                            jSONSerializer.writeReference(obj3);
                        } else {
                            ObjectSerializer objectWriter2 = jSONSerializer.getObjectWriter(obj3.getClass());
                            if ((SerializerFeature.WriteClassName.mask & i6) == 0 || !(objectWriter2 instanceof JavaBeanSerializer)) {
                                objectWriter2.write(jSONSerializer, obj3, Integer.valueOf(i10), collectionItemType, i6);
                            } else {
                                ((JavaBeanSerializer) objectWriter2).writeNoneASM(jSONSerializer, obj3, Integer.valueOf(i10), collectionItemType, i6);
                            }
                        }
                        i12 = i10 + 1;
                        z10 = z7;
                        c8 = ',';
                    }
                }
                i10 = i12;
                z7 = z10;
                i12 = i10 + 1;
                z10 = z7;
                c8 = ',';
            }
            serializeWriter2.append(']');
            jSONSerializer.context = serialContext;
        } catch (Throwable th) {
            jSONSerializer.context = serialContext;
            throw th;
        }
    }
}
