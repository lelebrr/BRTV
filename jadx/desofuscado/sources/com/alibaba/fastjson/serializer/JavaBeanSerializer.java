package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import ea.q;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class JavaBeanSerializer extends SerializeFilterable implements ObjectSerializer {
    protected final SerializeBeanInfo beanInfo;
    protected final FieldSerializer[] getters;
    private volatile transient long[] hashArray;
    private volatile transient short[] hashArrayMapping;
    protected final FieldSerializer[] sortedGetters;

    public JavaBeanSerializer(Class<?> cls) {
        this(cls, (Map<String, String>) null);
    }

    public static Map<String, String> createAliasMap(String... strArr) {
        HashMap map = new HashMap();
        for (String str : strArr) {
            map.put(str, str);
        }
        return map;
    }

    public boolean applyLabel(JSONSerializer jSONSerializer, String str) {
        List<LabelFilter> list = jSONSerializer.labelFilters;
        if (list != null) {
            Iterator<LabelFilter> it = list.iterator();
            while (it.hasNext()) {
                if (!it.next().apply(str)) {
                    return false;
                }
            }
        }
        List<LabelFilter> list2 = this.labelFilters;
        if (list2 == null) {
            return true;
        }
        Iterator<LabelFilter> it2 = list2.iterator();
        while (it2.hasNext()) {
            if (!it2.next().apply(str)) {
                return false;
            }
        }
        return true;
    }

    public BeanContext getBeanContext(int i6) {
        return this.sortedGetters[i6].fieldContext;
    }

    public Set<String> getFieldNames(Object obj) throws Exception {
        HashSet hashSet = new HashSet();
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            if (fieldSerializer.getPropertyValueDirect(obj) != null) {
                hashSet.add(fieldSerializer.fieldInfo.name);
            }
        }
        return hashSet;
    }

    public FieldSerializer getFieldSerializer(String str) {
        if (str == null) {
            return null;
        }
        int length = this.sortedGetters.length - 1;
        int i6 = 0;
        while (i6 <= length) {
            int i10 = (i6 + length) >>> 1;
            int iCompareTo = this.sortedGetters[i10].fieldInfo.name.compareTo(str);
            if (iCompareTo < 0) {
                i6 = i10 + 1;
            } else {
                if (iCompareTo <= 0) {
                    return this.sortedGetters[i10];
                }
                length = i10 - 1;
            }
        }
        return null;
    }

    public Type getFieldType(int i6) {
        return this.sortedGetters[i6].fieldInfo.fieldType;
    }

    public Object getFieldValue(Object obj, String str) {
        FieldSerializer fieldSerializer = getFieldSerializer(str);
        if (fieldSerializer == null) {
            throw new JSONException(q.p("field not found. ", str));
        }
        try {
            return fieldSerializer.getPropertyValue(obj);
        } catch (IllegalAccessException e5) {
            throw new JSONException(q.p("getFieldValue error.", str), e5);
        } catch (InvocationTargetException e10) {
            throw new JSONException(q.p("getFieldValue error.", str), e10);
        }
    }

    public List<Object> getFieldValues(Object obj) throws Exception {
        ArrayList arrayList = new ArrayList(this.sortedGetters.length);
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            arrayList.add(fieldSerializer.getPropertyValue(obj));
        }
        return arrayList;
    }

    public Map<String, Object> getFieldValuesMap(Object obj) throws Exception {
        LinkedHashMap linkedHashMap = new LinkedHashMap(this.sortedGetters.length);
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            boolean zIsEnabled = SerializerFeature.isEnabled(fieldSerializer.features, SerializerFeature.SkipTransientField);
            FieldInfo fieldInfo = fieldSerializer.fieldInfo;
            if (!zIsEnabled || fieldInfo == null || !fieldInfo.fieldTransient) {
                if (fieldInfo.unwrapped) {
                    Object json = JSON.toJSON(fieldSerializer.getPropertyValue(obj));
                    if (json instanceof Map) {
                        linkedHashMap.putAll((Map) json);
                    } else {
                        linkedHashMap.put(fieldSerializer.fieldInfo.name, fieldSerializer.getPropertyValue(obj));
                    }
                } else {
                    linkedHashMap.put(fieldInfo.name, fieldSerializer.getPropertyValue(obj));
                }
            }
        }
        return linkedHashMap;
    }

    public JSONType getJSONType() {
        return this.beanInfo.jsonType;
    }

    public List<Object> getObjectFieldValues(Object obj) throws Exception {
        ArrayList arrayList = new ArrayList(this.sortedGetters.length);
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            Class<?> cls = fieldSerializer.fieldInfo.fieldClass;
            if (!cls.isPrimitive() && !cls.getName().startsWith("java.lang.")) {
                arrayList.add(fieldSerializer.getPropertyValue(obj));
            }
        }
        return arrayList;
    }

    public int getSize(Object obj) throws Exception {
        int i6 = 0;
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            if (fieldSerializer.getPropertyValueDirect(obj) != null) {
                i6++;
            }
        }
        return i6;
    }

    public Class<?> getType() {
        return this.beanInfo.beanType;
    }

    public boolean isWriteAsArray(JSONSerializer jSONSerializer) {
        return isWriteAsArray(jSONSerializer, 0);
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i6) throws Throwable {
        write(jSONSerializer, obj, obj2, type, i6, false);
    }

    public char writeAfter(JSONSerializer jSONSerializer, Object obj, char c5) {
        List<AfterFilter> list = jSONSerializer.afterFilters;
        if (list != null) {
            Iterator<AfterFilter> it = list.iterator();
            while (it.hasNext()) {
                c5 = it.next().writeAfter(jSONSerializer, obj, c5);
            }
        }
        List<AfterFilter> list2 = this.afterFilters;
        if (list2 != null) {
            Iterator<AfterFilter> it2 = list2.iterator();
            while (it2.hasNext()) {
                c5 = it2.next().writeAfter(jSONSerializer, obj, c5);
            }
        }
        return c5;
    }

    public void writeAsArray(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i6) throws Throwable {
        write(jSONSerializer, obj, obj2, type, i6);
    }

    public void writeAsArrayNonContext(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i6) throws Throwable {
        write(jSONSerializer, obj, obj2, type, i6);
    }

    public char writeBefore(JSONSerializer jSONSerializer, Object obj, char c5) {
        List<BeforeFilter> list = jSONSerializer.beforeFilters;
        if (list != null) {
            Iterator<BeforeFilter> it = list.iterator();
            while (it.hasNext()) {
                c5 = it.next().writeBefore(jSONSerializer, obj, c5);
            }
        }
        List<BeforeFilter> list2 = this.beforeFilters;
        if (list2 != null) {
            Iterator<BeforeFilter> it2 = list2.iterator();
            while (it2.hasNext()) {
                c5 = it2.next().writeBefore(jSONSerializer, obj, c5);
            }
        }
        return c5;
    }

    public void writeClassName(JSONSerializer jSONSerializer, String str, Object obj) {
        if (str == null) {
            str = jSONSerializer.config.typeKey;
        }
        jSONSerializer.out.writeFieldName(str, false);
        String name = this.beanInfo.typeName;
        if (name == null) {
            Class<?> superclass = obj.getClass();
            if (TypeUtils.isProxy(superclass)) {
                superclass = superclass.getSuperclass();
            }
            name = superclass.getName();
        }
        jSONSerializer.write(name);
    }

    public void writeDirectNonContext(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i6) throws Throwable {
        write(jSONSerializer, obj, obj2, type, i6);
    }

    public void writeNoneASM(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i6) throws Throwable {
        write(jSONSerializer, obj, obj2, type, i6, false);
    }

    public boolean writeReference(JSONSerializer jSONSerializer, Object obj, int i6) {
        IdentityHashMap<Object, SerialContext> identityHashMap;
        SerialContext serialContext = jSONSerializer.context;
        int i10 = SerializerFeature.DisableCircularReferenceDetect.mask;
        if (serialContext == null || (serialContext.features & i10) != 0 || (i6 & i10) != 0 || (identityHashMap = jSONSerializer.references) == null || !identityHashMap.containsKey(obj)) {
            return false;
        }
        jSONSerializer.writeReference(obj);
        return true;
    }

    public JavaBeanSerializer(Class<?> cls, String... strArr) {
        this(cls, createAliasMap(strArr));
    }

    public boolean isWriteAsArray(JSONSerializer jSONSerializer, int i6) {
        int i10 = SerializerFeature.BeanToArray.mask;
        return ((this.beanInfo.features & i10) == 0 && !jSONSerializer.out.beanToArray && (i6 & i10) == 0) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:213:0x02d9, code lost:
    
        if ((r31.beanInfo.features & r4) == 0) goto L263;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x03e9  */
    /* JADX WARN: Removed duplicated region for block: B:348:0x0478  */
    /* JADX WARN: Removed duplicated region for block: B:349:0x0479 A[Catch: all -> 0x03a8, Exception -> 0x03ab, TryCatch #4 {Exception -> 0x03ab, blocks: (B:280:0x03a2, B:342:0x0468, B:344:0x046c, B:346:0x0470, B:349:0x0479, B:351:0x0481, B:352:0x0489, B:354:0x048f, B:289:0x03b6, B:290:0x03b9, B:292:0x03bf, B:294:0x03cb, B:301:0x03e0, B:308:0x03ed, B:311:0x03fb, B:314:0x0403, B:317:0x040d, B:319:0x0415, B:320:0x041e, B:322:0x0427, B:324:0x042e, B:325:0x0432, B:327:0x0435, B:328:0x0439, B:329:0x043d, B:331:0x0442, B:332:0x0446, B:333:0x044a, B:335:0x044e, B:337:0x0452, B:340:0x0461, B:341:0x0465, B:309:0x03f5), top: B:425:0x03a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:396:0x053f A[Catch: all -> 0x0552, TRY_ENTER, TryCatch #10 {all -> 0x0552, blocks: (B:393:0x051b, B:396:0x053f, B:406:0x058f, B:408:0x0595, B:409:0x05ad, B:411:0x05b1, B:415:0x05ba, B:416:0x05bf, B:400:0x0556, B:402:0x055a, B:404:0x055e, B:405:0x0579), top: B:430:0x051b }] */
    /* JADX WARN: Removed duplicated region for block: B:399:0x0554  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x0595 A[Catch: all -> 0x0552, TryCatch #10 {all -> 0x0552, blocks: (B:393:0x051b, B:396:0x053f, B:406:0x058f, B:408:0x0595, B:409:0x05ad, B:411:0x05b1, B:415:0x05ba, B:416:0x05bf, B:400:0x0556, B:402:0x055a, B:404:0x055e, B:405:0x0579), top: B:430:0x051b }] */
    /* JADX WARN: Removed duplicated region for block: B:411:0x05b1 A[Catch: all -> 0x0552, TryCatch #10 {all -> 0x0552, blocks: (B:393:0x051b, B:396:0x053f, B:406:0x058f, B:408:0x0595, B:409:0x05ad, B:411:0x05b1, B:415:0x05ba, B:416:0x05bf, B:400:0x0556, B:402:0x055a, B:404:0x055e, B:405:0x0579), top: B:430:0x051b }] */
    /* JADX WARN: Removed duplicated region for block: B:413:0x05b7  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x05b8  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0116  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void write(com.alibaba.fastjson.serializer.JSONSerializer r32, java.lang.Object r33, java.lang.Object r34, java.lang.reflect.Type r35, int r36, boolean r37) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 1475
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.JavaBeanSerializer.write(com.alibaba.fastjson.serializer.JSONSerializer, java.lang.Object, java.lang.Object, java.lang.reflect.Type, int, boolean):void");
    }

    public JavaBeanSerializer(Class<?> cls, Map<String, String> map) {
        this(TypeUtils.buildBeanInfo(cls, map, null));
    }

    public JavaBeanSerializer(SerializeBeanInfo serializeBeanInfo) {
        FieldSerializer[] fieldSerializerArr;
        this.beanInfo = serializeBeanInfo;
        this.sortedGetters = new FieldSerializer[serializeBeanInfo.sortedFields.length];
        int i6 = 0;
        while (true) {
            fieldSerializerArr = this.sortedGetters;
            if (i6 >= fieldSerializerArr.length) {
                break;
            }
            fieldSerializerArr[i6] = new FieldSerializer(serializeBeanInfo.beanType, serializeBeanInfo.sortedFields[i6]);
            i6++;
        }
        FieldInfo[] fieldInfoArr = serializeBeanInfo.fields;
        if (fieldInfoArr == serializeBeanInfo.sortedFields) {
            this.getters = fieldSerializerArr;
        } else {
            this.getters = new FieldSerializer[fieldInfoArr.length];
            int i10 = 0;
            while (true) {
                if (i10 >= this.getters.length) {
                    break;
                }
                FieldSerializer fieldSerializer = getFieldSerializer(serializeBeanInfo.fields[i10].name);
                if (fieldSerializer == null) {
                    FieldSerializer[] fieldSerializerArr2 = this.sortedGetters;
                    System.arraycopy(fieldSerializerArr2, 0, this.getters, 0, fieldSerializerArr2.length);
                    break;
                } else {
                    this.getters[i10] = fieldSerializer;
                    i10++;
                }
            }
        }
        JSONType jSONType = serializeBeanInfo.jsonType;
        if (jSONType != null) {
            for (Class<? extends SerializeFilter> cls : jSONType.serialzeFilters()) {
                try {
                    addFilter(cls.getConstructor(null).newInstance(null));
                } catch (Exception unused) {
                }
            }
        }
    }

    public FieldSerializer getFieldSerializer(long j10) {
        PropertyNamingStrategy[] propertyNamingStrategyArrValues;
        int iBinarySearch;
        if (this.hashArray == null) {
            propertyNamingStrategyArrValues = PropertyNamingStrategy.values();
            long[] jArr = new long[this.sortedGetters.length * propertyNamingStrategyArrValues.length];
            int i6 = 0;
            int i10 = 0;
            while (true) {
                FieldSerializer[] fieldSerializerArr = this.sortedGetters;
                if (i6 >= fieldSerializerArr.length) {
                    break;
                }
                String str = fieldSerializerArr[i6].fieldInfo.name;
                jArr[i10] = TypeUtils.fnv1a_64(str);
                i10++;
                for (PropertyNamingStrategy propertyNamingStrategy : propertyNamingStrategyArrValues) {
                    String strTranslate = propertyNamingStrategy.translate(str);
                    if (!str.equals(strTranslate)) {
                        jArr[i10] = TypeUtils.fnv1a_64(strTranslate);
                        i10++;
                    }
                }
                i6++;
            }
            Arrays.sort(jArr, 0, i10);
            this.hashArray = new long[i10];
            System.arraycopy(jArr, 0, this.hashArray, 0, i10);
        } else {
            propertyNamingStrategyArrValues = null;
        }
        int iBinarySearch2 = Arrays.binarySearch(this.hashArray, j10);
        if (iBinarySearch2 < 0) {
            return null;
        }
        if (this.hashArrayMapping == null) {
            if (propertyNamingStrategyArrValues == null) {
                propertyNamingStrategyArrValues = PropertyNamingStrategy.values();
            }
            short[] sArr = new short[this.hashArray.length];
            Arrays.fill(sArr, (short) -1);
            int i11 = 0;
            while (true) {
                FieldSerializer[] fieldSerializerArr2 = this.sortedGetters;
                if (i11 >= fieldSerializerArr2.length) {
                    break;
                }
                String str2 = fieldSerializerArr2[i11].fieldInfo.name;
                int iBinarySearch3 = Arrays.binarySearch(this.hashArray, TypeUtils.fnv1a_64(str2));
                if (iBinarySearch3 >= 0) {
                    sArr[iBinarySearch3] = (short) i11;
                }
                for (PropertyNamingStrategy propertyNamingStrategy2 : propertyNamingStrategyArrValues) {
                    String strTranslate2 = propertyNamingStrategy2.translate(str2);
                    if (!str2.equals(strTranslate2) && (iBinarySearch = Arrays.binarySearch(this.hashArray, TypeUtils.fnv1a_64(strTranslate2))) >= 0) {
                        sArr[iBinarySearch] = (short) i11;
                    }
                }
                i11++;
            }
            this.hashArrayMapping = sArr;
        }
        short s10 = this.hashArrayMapping[iBinarySearch2];
        if (s10 != -1) {
            return this.sortedGetters[s10];
        }
        return null;
    }

    public Object getFieldValue(Object obj, String str, long j10, boolean z7) {
        FieldSerializer fieldSerializer = getFieldSerializer(j10);
        if (fieldSerializer == null) {
            if (z7) {
                throw new JSONException(q.p("field not found. ", str));
            }
            return null;
        }
        try {
            return fieldSerializer.getPropertyValue(obj);
        } catch (IllegalAccessException e5) {
            throw new JSONException(q.p("getFieldValue error.", str), e5);
        } catch (InvocationTargetException e10) {
            throw new JSONException(q.p("getFieldValue error.", str), e10);
        }
    }
}
