package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONPath;
import com.alibaba.fastjson.JSONPathException;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessable;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessor;
import com.alibaba.fastjson.parser.deserializer.ExtraTypeProvider;
import com.alibaba.fastjson.parser.deserializer.FieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.FieldTypeResolver;
import com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.parser.deserializer.ResolveFieldDeserializer;
import com.alibaba.fastjson.serializer.BeanContext;
import com.alibaba.fastjson.serializer.IntegerCodec;
import com.alibaba.fastjson.serializer.LongCodec;
import com.alibaba.fastjson.serializer.SerializeConfig;
import com.alibaba.fastjson.serializer.StringCodec;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.Closeable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class DefaultJSONParser implements Closeable {
    public static final int NONE = 0;
    public static final int NeedToResolve = 1;
    public static final int TypeNameRedirect = 2;
    private static final Set<Class<?>> primitiveClasses;
    private String[] autoTypeAccept;
    private boolean autoTypeEnable;
    protected ParserConfig config;
    protected ParseContext context;
    private ParseContext[] contextArray;
    private int contextArrayIndex;
    private DateFormat dateFormat;
    private String dateFormatPattern;
    private List<ExtraProcessor> extraProcessors;
    private List<ExtraTypeProvider> extraTypeProviders;
    protected FieldTypeResolver fieldTypeResolver;
    public final Object input;
    protected transient BeanContext lastBeanContext;
    public final JSONLexer lexer;
    private int objectKeyLevel;
    public int resolveStatus;
    private List<ResolveTask> resolveTaskList;
    public final SymbolTable symbolTable;

    /* compiled from: MyApplication */
    public static class ResolveTask {
        public final ParseContext context;
        public FieldDeserializer fieldDeserializer;
        public ParseContext ownerContext;
        public final String referenceValue;

        public ResolveTask(ParseContext parseContext, String str) {
            this.context = parseContext;
            this.referenceValue = str;
        }
    }

    static {
        HashSet hashSet = new HashSet();
        primitiveClasses = hashSet;
        hashSet.addAll(Arrays.asList(Boolean.TYPE, Byte.TYPE, Short.TYPE, Integer.TYPE, Long.TYPE, Float.TYPE, Double.TYPE, Boolean.class, Byte.class, Short.class, Integer.class, Long.class, Float.class, Double.class, BigInteger.class, BigDecimal.class, String.class));
    }

    public DefaultJSONParser(String str) {
        this(str, ParserConfig.getGlobalInstance(), JSON.DEFAULT_PARSER_FEATURE);
    }

    private void addContext(ParseContext parseContext) {
        int i6 = this.contextArrayIndex;
        this.contextArrayIndex = i6 + 1;
        ParseContext[] parseContextArr = this.contextArray;
        if (parseContextArr == null) {
            this.contextArray = new ParseContext[8];
        } else if (i6 >= parseContextArr.length) {
            ParseContext[] parseContextArr2 = new ParseContext[(parseContextArr.length * 3) / 2];
            System.arraycopy(parseContextArr, 0, parseContextArr2, 0, parseContextArr.length);
            this.contextArray = parseContextArr2;
        }
        this.contextArray[i6] = parseContext;
    }

    public final void accept(int i6) {
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == i6) {
            jSONLexer.nextToken();
            return;
        }
        throw new JSONException("syntax error, expect " + JSONToken.name(i6) + ", actual " + JSONToken.name(jSONLexer.token()));
    }

    public void acceptType(String str) {
        JSONLexer jSONLexer = this.lexer;
        jSONLexer.nextTokenWithColon();
        if (jSONLexer.token() != 4) {
            throw new JSONException("type not match error");
        }
        if (!str.equals(jSONLexer.stringVal())) {
            throw new JSONException("type not match error");
        }
        jSONLexer.nextToken();
        if (jSONLexer.token() == 16) {
            jSONLexer.nextToken();
        }
    }

    public void addResolveTask(ResolveTask resolveTask) {
        if (this.resolveTaskList == null) {
            this.resolveTaskList = new ArrayList(2);
        }
        this.resolveTaskList.add(resolveTask);
    }

    public void checkListResolve(Collection collection) {
        if (this.resolveStatus == 1) {
            if (!(collection instanceof List)) {
                ResolveTask lastResolveTask = getLastResolveTask();
                lastResolveTask.fieldDeserializer = new ResolveFieldDeserializer(collection);
                lastResolveTask.ownerContext = this.context;
                setResolveStatus(0);
                return;
            }
            int size = collection.size() - 1;
            ResolveTask lastResolveTask2 = getLastResolveTask();
            lastResolveTask2.fieldDeserializer = new ResolveFieldDeserializer(this, (List) collection, size);
            lastResolveTask2.ownerContext = this.context;
            setResolveStatus(0);
        }
    }

    public void checkMapResolve(Map map, Object obj) {
        if (this.resolveStatus == 1) {
            ResolveFieldDeserializer resolveFieldDeserializer = new ResolveFieldDeserializer(map, obj);
            ResolveTask lastResolveTask = getLastResolveTask();
            lastResolveTask.fieldDeserializer = resolveFieldDeserializer;
            lastResolveTask.ownerContext = this.context;
            setResolveStatus(0);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        JSONLexer jSONLexer = this.lexer;
        try {
            if (jSONLexer.isEnabled(Feature.AutoCloseSource) && jSONLexer.token() != 20) {
                throw new JSONException("not close json text, token : " + JSONToken.name(jSONLexer.token()));
            }
        } finally {
            jSONLexer.close();
        }
    }

    public void config(Feature feature, boolean z7) {
        this.lexer.config(feature, z7);
    }

    public ParserConfig getConfig() {
        return this.config;
    }

    public ParseContext getContext() {
        return this.context;
    }

    public String getDateFomartPattern() {
        return this.dateFormatPattern;
    }

    public DateFormat getDateFormat() {
        if (this.dateFormat == null) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(this.dateFormatPattern, this.lexer.getLocale());
            this.dateFormat = simpleDateFormat;
            simpleDateFormat.setTimeZone(this.lexer.getTimeZone());
        }
        return this.dateFormat;
    }

    public List<ExtraProcessor> getExtraProcessors() {
        if (this.extraProcessors == null) {
            this.extraProcessors = new ArrayList(2);
        }
        return this.extraProcessors;
    }

    public List<ExtraTypeProvider> getExtraTypeProviders() {
        if (this.extraTypeProviders == null) {
            this.extraTypeProviders = new ArrayList(2);
        }
        return this.extraTypeProviders;
    }

    public FieldTypeResolver getFieldTypeResolver() {
        return this.fieldTypeResolver;
    }

    public String getInput() {
        Object obj = this.input;
        return obj instanceof char[] ? new String((char[]) obj) : obj.toString();
    }

    public ResolveTask getLastResolveTask() {
        return this.resolveTaskList.get(r0.size() - 1);
    }

    public JSONLexer getLexer() {
        return this.lexer;
    }

    public Object getObject(String str) {
        for (int i6 = 0; i6 < this.contextArrayIndex; i6++) {
            if (str.equals(this.contextArray[i6].toString())) {
                return this.contextArray[i6].object;
            }
        }
        return null;
    }

    public ParseContext getOwnerContext() {
        return this.context.parent;
    }

    public int getResolveStatus() {
        return this.resolveStatus;
    }

    public List<ResolveTask> getResolveTaskList() {
        if (this.resolveTaskList == null) {
            this.resolveTaskList = new ArrayList(2);
        }
        return this.resolveTaskList;
    }

    public SymbolTable getSymbolTable() {
        return this.symbolTable;
    }

    public void handleResovleTask(Object obj) {
        Object objEval;
        ParseContext parseContext;
        FieldInfo fieldInfo;
        List<ResolveTask> list = this.resolveTaskList;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i6 = 0; i6 < size; i6++) {
            ResolveTask resolveTask = this.resolveTaskList.get(i6);
            String str = resolveTask.referenceValue;
            ParseContext parseContext2 = resolveTask.ownerContext;
            Object obj2 = parseContext2 != null ? parseContext2.object : null;
            if (str.startsWith("$")) {
                objEval = getObject(str);
                if (objEval == null) {
                    try {
                        JSONPath jSONPath = new JSONPath(str, SerializeConfig.getGlobalInstance(), this.config, true);
                        if (jSONPath.isRef()) {
                            objEval = jSONPath.eval(obj);
                        }
                    } catch (JSONPathException unused) {
                    }
                }
            } else {
                objEval = resolveTask.context.object;
            }
            FieldDeserializer fieldDeserializer = resolveTask.fieldDeserializer;
            if (fieldDeserializer != null) {
                if (objEval != null && objEval.getClass() == JSONObject.class && (fieldInfo = fieldDeserializer.fieldInfo) != null && !Map.class.isAssignableFrom(fieldInfo.fieldClass)) {
                    Object obj3 = this.contextArray[0].object;
                    JSONPath jSONPathCompile = JSONPath.compile(str);
                    if (jSONPathCompile.isRef()) {
                        objEval = jSONPathCompile.eval(obj3);
                    }
                }
                if (fieldDeserializer.getOwnerClass() != null && !fieldDeserializer.getOwnerClass().isInstance(obj2) && (parseContext = resolveTask.ownerContext.parent) != null) {
                    while (true) {
                        if (parseContext == null) {
                            break;
                        }
                        if (fieldDeserializer.getOwnerClass().isInstance(parseContext.object)) {
                            obj2 = parseContext.object;
                            break;
                        }
                        parseContext = parseContext.parent;
                    }
                }
                fieldDeserializer.setValue(obj2, objEval);
            }
        }
    }

    public boolean isEnabled(Feature feature) {
        return this.lexer.isEnabled(feature);
    }

    public Object parse() {
        return parse(null);
    }

    public <T> List<T> parseArray(Class<T> cls) {
        ArrayList arrayList = new ArrayList();
        parseArray((Class<?>) cls, (Collection) arrayList);
        return arrayList;
    }

    public Object parseArrayWithType(Type type) {
        if (this.lexer.token() == 8) {
            this.lexer.nextToken();
            return null;
        }
        Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
        if (actualTypeArguments.length != 1) {
            throw new JSONException("not support type " + type);
        }
        Type type2 = actualTypeArguments[0];
        if (type2 instanceof Class) {
            ArrayList arrayList = new ArrayList();
            parseArray((Class<?>) type2, (Collection) arrayList);
            return arrayList;
        }
        if (type2 instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) type2;
            Type type3 = wildcardType.getUpperBounds()[0];
            if (!Object.class.equals(type3)) {
                ArrayList arrayList2 = new ArrayList();
                parseArray((Class<?>) type3, (Collection) arrayList2);
                return arrayList2;
            }
            if (wildcardType.getLowerBounds().length == 0) {
                return parse();
            }
            throw new JSONException("not support type : " + type);
        }
        if (type2 instanceof TypeVariable) {
            TypeVariable typeVariable = (TypeVariable) type2;
            Type[] bounds = typeVariable.getBounds();
            if (bounds.length != 1) {
                throw new JSONException("not support : " + typeVariable);
            }
            Type type4 = bounds[0];
            if (type4 instanceof Class) {
                ArrayList arrayList3 = new ArrayList();
                parseArray((Class<?>) type4, (Collection) arrayList3);
                return arrayList3;
            }
        }
        if (type2 instanceof ParameterizedType) {
            ArrayList arrayList4 = new ArrayList();
            parseArray((ParameterizedType) type2, arrayList4);
            return arrayList4;
        }
        throw new JSONException("TODO : " + type);
    }

    public void parseExtra(Object obj, String str) {
        this.lexer.nextTokenWithColon();
        List<ExtraTypeProvider> list = this.extraTypeProviders;
        Type extraType = null;
        if (list != null) {
            Iterator<ExtraTypeProvider> it = list.iterator();
            while (it.hasNext()) {
                extraType = it.next().getExtraType(obj, str);
            }
        }
        Object object = extraType == null ? parse() : parseObject(extraType);
        if (obj instanceof ExtraProcessable) {
            ((ExtraProcessable) obj).processExtra(str, object);
            return;
        }
        List<ExtraProcessor> list2 = this.extraProcessors;
        if (list2 != null) {
            Iterator<ExtraProcessor> it2 = list2.iterator();
            while (it2.hasNext()) {
                it2.next().processExtra(obj, str, object);
            }
        }
        if (this.resolveStatus == 1) {
            this.resolveStatus = 0;
        }
    }

    public Object parseKey() {
        if (this.lexer.token() != 18) {
            return parse(null);
        }
        String strStringVal = this.lexer.stringVal();
        this.lexer.nextToken(16);
        return strStringVal;
    }

    /* JADX WARN: Code restructure failed: missing block: B:149:0x02a3, code lost:
    
        r5.nextToken(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x02ae, code lost:
    
        if (r5.token() != 13) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x02b0, code lost:
    
        r5.nextToken(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x02bb, code lost:
    
        if ((r17.config.getDeserializer(r8) instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) == false) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x02bd, code lost:
    
        r13 = com.alibaba.fastjson.util.TypeUtils.cast((java.lang.Object) r18, (java.lang.Class<java.lang.Object>) r8, r17.config);
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x02c5, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x02c7, code lost:
    
        if (r13 != null) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x02cb, code lost:
    
        if (r8 != java.lang.Cloneable.class) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x02cd, code lost:
    
        r13 = new java.util.HashMap();
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x02d9, code lost:
    
        if ("java.util.Collections$EmptyMap".equals(r7) == false) goto L164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x02db, code lost:
    
        r13 = java.util.Collections.emptyMap();
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x02e6, code lost:
    
        if ("java.util.Collections$UnmodifiableMap".equals(r7) == false) goto L167;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x02e8, code lost:
    
        r13 = java.util.Collections.unmodifiableMap(new java.util.HashMap());
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x02f2, code lost:
    
        r13 = r8.newInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x02f6, code lost:
    
        setContext(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x02f9, code lost:
    
        return r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0301, code lost:
    
        throw new com.alibaba.fastjson.JSONException("create instance error", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0302, code lost:
    
        setResolveStatus(2);
        r3 = r17.context;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x0308, code lost:
    
        if (r3 == null) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x030a, code lost:
    
        if (r19 == null) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x030e, code lost:
    
        if ((r19 instanceof java.lang.Integer) != false) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x0314, code lost:
    
        if ((r3.fieldName instanceof java.lang.Integer) != false) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0316, code lost:
    
        popContext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x031d, code lost:
    
        if (r18.size() <= 0) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x031f, code lost:
    
        r0 = com.alibaba.fastjson.util.TypeUtils.cast((java.lang.Object) r18, (java.lang.Class<java.lang.Object>) r8, r17.config);
        setResolveStatus(0);
        parseObject(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x032c, code lost:
    
        setContext(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x032f, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x0330, code lost:
    
        r0 = r17.config.getDeserializer(r8);
        r3 = r0.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x0340, code lost:
    
        if (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class.isAssignableFrom(r3) == false) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x0344, code lost:
    
        if (r3 == com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x0348, code lost:
    
        if (r3 == com.alibaba.fastjson.parser.deserializer.ThrowableDeserializer.class) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x034a, code lost:
    
        setResolveStatus(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x0351, code lost:
    
        if ((r0 instanceof com.alibaba.fastjson.parser.deserializer.MapDeserializer) == false) goto L195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x0353, code lost:
    
        setResolveStatus(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x0357, code lost:
    
        r0 = r0.deserialze(r17, r8, r19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x035b, code lost:
    
        setContext(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x035e, code lost:
    
        return r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:117:0x021b A[Catch: all -> 0x007d, TryCatch #2 {all -> 0x007d, blocks: (B:24:0x0071, B:26:0x0075, B:31:0x0082, B:34:0x0095, B:38:0x00aa, B:117:0x021b, B:118:0x0221, B:120:0x022c, B:122:0x0234, B:126:0x024a, B:128:0x0258, B:148:0x029b, B:149:0x02a3, B:151:0x02b0, B:152:0x02b3, B:154:0x02bd, B:160:0x02cd, B:161:0x02d3, B:163:0x02db, B:164:0x02e0, B:166:0x02e8, B:167:0x02f2, B:170:0x02fa, B:171:0x0301, B:172:0x0302, B:175:0x030c, B:177:0x0310, B:179:0x0316, B:180:0x0319, B:182:0x031f, B:185:0x0330, B:191:0x034a, B:195:0x0357, B:192:0x034f, B:194:0x0353, B:130:0x025e, B:133:0x0269, B:137:0x0275, B:139:0x027b, B:144:0x0288, B:145:0x028b, B:203:0x0368, B:207:0x0374, B:209:0x037c, B:211:0x0386, B:213:0x0397, B:216:0x03a1, B:218:0x03a9, B:220:0x03ad, B:222:0x03b3, B:225:0x03b8, B:227:0x03bc, B:250:0x0421, B:252:0x0429, B:255:0x0432, B:256:0x044c, B:229:0x03c2, B:231:0x03ca, B:234:0x03d0, B:235:0x03dd, B:238:0x03e6, B:241:0x03ec, B:244:0x03f1, B:245:0x03fe, B:247:0x0408, B:249:0x0416, B:257:0x044d, B:258:0x046b, B:260:0x046e, B:262:0x0472, B:264:0x0476, B:267:0x047c, B:271:0x0484, B:277:0x0494, B:279:0x04a3, B:281:0x04ae, B:282:0x04b6, B:283:0x04b9, B:295:0x04e5, B:297:0x04f0, B:301:0x04fd, B:304:0x050d, B:305:0x052d, B:290:0x04c9, B:292:0x04d3, B:294:0x04e2, B:293:0x04d8, B:308:0x0532, B:310:0x053c, B:312:0x0544, B:313:0x0547, B:315:0x0552, B:316:0x0556, B:318:0x0561, B:321:0x0568, B:324:0x0574, B:325:0x0579, B:328:0x057e, B:330:0x0583, B:334:0x058e, B:336:0x0596, B:338:0x05a9, B:342:0x05c4, B:344:0x05cc, B:347:0x05d2, B:349:0x05d8, B:351:0x05e0, B:354:0x05f0, B:357:0x05f8, B:359:0x05fc, B:360:0x0603, B:362:0x0608, B:363:0x060b, B:365:0x0613, B:368:0x061d, B:371:0x0627, B:372:0x062c, B:373:0x0631, B:374:0x064b, B:339:0x05b2, B:340:0x05b7, B:375:0x064c, B:377:0x065e, B:380:0x0665, B:383:0x0673, B:384:0x0693, B:41:0x00be, B:42:0x00dc, B:45:0x00e1, B:47:0x00ec, B:49:0x00f0, B:51:0x00f4, B:54:0x00fa, B:61:0x0109, B:63:0x0111, B:66:0x0123, B:67:0x013b, B:68:0x013c, B:69:0x0141, B:80:0x0156, B:81:0x015c, B:83:0x0163, B:85:0x016e, B:92:0x0180, B:95:0x018a, B:96:0x01a2, B:90:0x017b, B:84:0x0168, B:97:0x01a3, B:98:0x01bb, B:104:0x01c5, B:106:0x01cd, B:109:0x01e0, B:110:0x0200, B:111:0x0201, B:112:0x0206, B:113:0x0207, B:115:0x0211, B:385:0x0694, B:386:0x069b, B:387:0x069c, B:388:0x06a1, B:389:0x06a2, B:390:0x06a7), top: B:396:0x0071, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x029b A[Catch: all -> 0x007d, TryCatch #2 {all -> 0x007d, blocks: (B:24:0x0071, B:26:0x0075, B:31:0x0082, B:34:0x0095, B:38:0x00aa, B:117:0x021b, B:118:0x0221, B:120:0x022c, B:122:0x0234, B:126:0x024a, B:128:0x0258, B:148:0x029b, B:149:0x02a3, B:151:0x02b0, B:152:0x02b3, B:154:0x02bd, B:160:0x02cd, B:161:0x02d3, B:163:0x02db, B:164:0x02e0, B:166:0x02e8, B:167:0x02f2, B:170:0x02fa, B:171:0x0301, B:172:0x0302, B:175:0x030c, B:177:0x0310, B:179:0x0316, B:180:0x0319, B:182:0x031f, B:185:0x0330, B:191:0x034a, B:195:0x0357, B:192:0x034f, B:194:0x0353, B:130:0x025e, B:133:0x0269, B:137:0x0275, B:139:0x027b, B:144:0x0288, B:145:0x028b, B:203:0x0368, B:207:0x0374, B:209:0x037c, B:211:0x0386, B:213:0x0397, B:216:0x03a1, B:218:0x03a9, B:220:0x03ad, B:222:0x03b3, B:225:0x03b8, B:227:0x03bc, B:250:0x0421, B:252:0x0429, B:255:0x0432, B:256:0x044c, B:229:0x03c2, B:231:0x03ca, B:234:0x03d0, B:235:0x03dd, B:238:0x03e6, B:241:0x03ec, B:244:0x03f1, B:245:0x03fe, B:247:0x0408, B:249:0x0416, B:257:0x044d, B:258:0x046b, B:260:0x046e, B:262:0x0472, B:264:0x0476, B:267:0x047c, B:271:0x0484, B:277:0x0494, B:279:0x04a3, B:281:0x04ae, B:282:0x04b6, B:283:0x04b9, B:295:0x04e5, B:297:0x04f0, B:301:0x04fd, B:304:0x050d, B:305:0x052d, B:290:0x04c9, B:292:0x04d3, B:294:0x04e2, B:293:0x04d8, B:308:0x0532, B:310:0x053c, B:312:0x0544, B:313:0x0547, B:315:0x0552, B:316:0x0556, B:318:0x0561, B:321:0x0568, B:324:0x0574, B:325:0x0579, B:328:0x057e, B:330:0x0583, B:334:0x058e, B:336:0x0596, B:338:0x05a9, B:342:0x05c4, B:344:0x05cc, B:347:0x05d2, B:349:0x05d8, B:351:0x05e0, B:354:0x05f0, B:357:0x05f8, B:359:0x05fc, B:360:0x0603, B:362:0x0608, B:363:0x060b, B:365:0x0613, B:368:0x061d, B:371:0x0627, B:372:0x062c, B:373:0x0631, B:374:0x064b, B:339:0x05b2, B:340:0x05b7, B:375:0x064c, B:377:0x065e, B:380:0x0665, B:383:0x0673, B:384:0x0693, B:41:0x00be, B:42:0x00dc, B:45:0x00e1, B:47:0x00ec, B:49:0x00f0, B:51:0x00f4, B:54:0x00fa, B:61:0x0109, B:63:0x0111, B:66:0x0123, B:67:0x013b, B:68:0x013c, B:69:0x0141, B:80:0x0156, B:81:0x015c, B:83:0x0163, B:85:0x016e, B:92:0x0180, B:95:0x018a, B:96:0x01a2, B:90:0x017b, B:84:0x0168, B:97:0x01a3, B:98:0x01bb, B:104:0x01c5, B:106:0x01cd, B:109:0x01e0, B:110:0x0200, B:111:0x0201, B:112:0x0206, B:113:0x0207, B:115:0x0211, B:385:0x0694, B:386:0x069b, B:387:0x069c, B:388:0x06a1, B:389:0x06a2, B:390:0x06a7), top: B:396:0x0071, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:198:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x037c A[Catch: all -> 0x007d, TryCatch #2 {all -> 0x007d, blocks: (B:24:0x0071, B:26:0x0075, B:31:0x0082, B:34:0x0095, B:38:0x00aa, B:117:0x021b, B:118:0x0221, B:120:0x022c, B:122:0x0234, B:126:0x024a, B:128:0x0258, B:148:0x029b, B:149:0x02a3, B:151:0x02b0, B:152:0x02b3, B:154:0x02bd, B:160:0x02cd, B:161:0x02d3, B:163:0x02db, B:164:0x02e0, B:166:0x02e8, B:167:0x02f2, B:170:0x02fa, B:171:0x0301, B:172:0x0302, B:175:0x030c, B:177:0x0310, B:179:0x0316, B:180:0x0319, B:182:0x031f, B:185:0x0330, B:191:0x034a, B:195:0x0357, B:192:0x034f, B:194:0x0353, B:130:0x025e, B:133:0x0269, B:137:0x0275, B:139:0x027b, B:144:0x0288, B:145:0x028b, B:203:0x0368, B:207:0x0374, B:209:0x037c, B:211:0x0386, B:213:0x0397, B:216:0x03a1, B:218:0x03a9, B:220:0x03ad, B:222:0x03b3, B:225:0x03b8, B:227:0x03bc, B:250:0x0421, B:252:0x0429, B:255:0x0432, B:256:0x044c, B:229:0x03c2, B:231:0x03ca, B:234:0x03d0, B:235:0x03dd, B:238:0x03e6, B:241:0x03ec, B:244:0x03f1, B:245:0x03fe, B:247:0x0408, B:249:0x0416, B:257:0x044d, B:258:0x046b, B:260:0x046e, B:262:0x0472, B:264:0x0476, B:267:0x047c, B:271:0x0484, B:277:0x0494, B:279:0x04a3, B:281:0x04ae, B:282:0x04b6, B:283:0x04b9, B:295:0x04e5, B:297:0x04f0, B:301:0x04fd, B:304:0x050d, B:305:0x052d, B:290:0x04c9, B:292:0x04d3, B:294:0x04e2, B:293:0x04d8, B:308:0x0532, B:310:0x053c, B:312:0x0544, B:313:0x0547, B:315:0x0552, B:316:0x0556, B:318:0x0561, B:321:0x0568, B:324:0x0574, B:325:0x0579, B:328:0x057e, B:330:0x0583, B:334:0x058e, B:336:0x0596, B:338:0x05a9, B:342:0x05c4, B:344:0x05cc, B:347:0x05d2, B:349:0x05d8, B:351:0x05e0, B:354:0x05f0, B:357:0x05f8, B:359:0x05fc, B:360:0x0603, B:362:0x0608, B:363:0x060b, B:365:0x0613, B:368:0x061d, B:371:0x0627, B:372:0x062c, B:373:0x0631, B:374:0x064b, B:339:0x05b2, B:340:0x05b7, B:375:0x064c, B:377:0x065e, B:380:0x0665, B:383:0x0673, B:384:0x0693, B:41:0x00be, B:42:0x00dc, B:45:0x00e1, B:47:0x00ec, B:49:0x00f0, B:51:0x00f4, B:54:0x00fa, B:61:0x0109, B:63:0x0111, B:66:0x0123, B:67:0x013b, B:68:0x013c, B:69:0x0141, B:80:0x0156, B:81:0x015c, B:83:0x0163, B:85:0x016e, B:92:0x0180, B:95:0x018a, B:96:0x01a2, B:90:0x017b, B:84:0x0168, B:97:0x01a3, B:98:0x01bb, B:104:0x01c5, B:106:0x01cd, B:109:0x01e0, B:110:0x0200, B:111:0x0201, B:112:0x0206, B:113:0x0207, B:115:0x0211, B:385:0x0694, B:386:0x069b, B:387:0x069c, B:388:0x06a1, B:389:0x06a2, B:390:0x06a7), top: B:396:0x0071, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:248:0x0414  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x046e A[Catch: all -> 0x007d, TryCatch #2 {all -> 0x007d, blocks: (B:24:0x0071, B:26:0x0075, B:31:0x0082, B:34:0x0095, B:38:0x00aa, B:117:0x021b, B:118:0x0221, B:120:0x022c, B:122:0x0234, B:126:0x024a, B:128:0x0258, B:148:0x029b, B:149:0x02a3, B:151:0x02b0, B:152:0x02b3, B:154:0x02bd, B:160:0x02cd, B:161:0x02d3, B:163:0x02db, B:164:0x02e0, B:166:0x02e8, B:167:0x02f2, B:170:0x02fa, B:171:0x0301, B:172:0x0302, B:175:0x030c, B:177:0x0310, B:179:0x0316, B:180:0x0319, B:182:0x031f, B:185:0x0330, B:191:0x034a, B:195:0x0357, B:192:0x034f, B:194:0x0353, B:130:0x025e, B:133:0x0269, B:137:0x0275, B:139:0x027b, B:144:0x0288, B:145:0x028b, B:203:0x0368, B:207:0x0374, B:209:0x037c, B:211:0x0386, B:213:0x0397, B:216:0x03a1, B:218:0x03a9, B:220:0x03ad, B:222:0x03b3, B:225:0x03b8, B:227:0x03bc, B:250:0x0421, B:252:0x0429, B:255:0x0432, B:256:0x044c, B:229:0x03c2, B:231:0x03ca, B:234:0x03d0, B:235:0x03dd, B:238:0x03e6, B:241:0x03ec, B:244:0x03f1, B:245:0x03fe, B:247:0x0408, B:249:0x0416, B:257:0x044d, B:258:0x046b, B:260:0x046e, B:262:0x0472, B:264:0x0476, B:267:0x047c, B:271:0x0484, B:277:0x0494, B:279:0x04a3, B:281:0x04ae, B:282:0x04b6, B:283:0x04b9, B:295:0x04e5, B:297:0x04f0, B:301:0x04fd, B:304:0x050d, B:305:0x052d, B:290:0x04c9, B:292:0x04d3, B:294:0x04e2, B:293:0x04d8, B:308:0x0532, B:310:0x053c, B:312:0x0544, B:313:0x0547, B:315:0x0552, B:316:0x0556, B:318:0x0561, B:321:0x0568, B:324:0x0574, B:325:0x0579, B:328:0x057e, B:330:0x0583, B:334:0x058e, B:336:0x0596, B:338:0x05a9, B:342:0x05c4, B:344:0x05cc, B:347:0x05d2, B:349:0x05d8, B:351:0x05e0, B:354:0x05f0, B:357:0x05f8, B:359:0x05fc, B:360:0x0603, B:362:0x0608, B:363:0x060b, B:365:0x0613, B:368:0x061d, B:371:0x0627, B:372:0x062c, B:373:0x0631, B:374:0x064b, B:339:0x05b2, B:340:0x05b7, B:375:0x064c, B:377:0x065e, B:380:0x0665, B:383:0x0673, B:384:0x0693, B:41:0x00be, B:42:0x00dc, B:45:0x00e1, B:47:0x00ec, B:49:0x00f0, B:51:0x00f4, B:54:0x00fa, B:61:0x0109, B:63:0x0111, B:66:0x0123, B:67:0x013b, B:68:0x013c, B:69:0x0141, B:80:0x0156, B:81:0x015c, B:83:0x0163, B:85:0x016e, B:92:0x0180, B:95:0x018a, B:96:0x01a2, B:90:0x017b, B:84:0x0168, B:97:0x01a3, B:98:0x01bb, B:104:0x01c5, B:106:0x01cd, B:109:0x01e0, B:110:0x0200, B:111:0x0201, B:112:0x0206, B:113:0x0207, B:115:0x0211, B:385:0x0694, B:386:0x069b, B:387:0x069c, B:388:0x06a1, B:389:0x06a2, B:390:0x06a7), top: B:396:0x0071, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0494 A[Catch: all -> 0x007d, TryCatch #2 {all -> 0x007d, blocks: (B:24:0x0071, B:26:0x0075, B:31:0x0082, B:34:0x0095, B:38:0x00aa, B:117:0x021b, B:118:0x0221, B:120:0x022c, B:122:0x0234, B:126:0x024a, B:128:0x0258, B:148:0x029b, B:149:0x02a3, B:151:0x02b0, B:152:0x02b3, B:154:0x02bd, B:160:0x02cd, B:161:0x02d3, B:163:0x02db, B:164:0x02e0, B:166:0x02e8, B:167:0x02f2, B:170:0x02fa, B:171:0x0301, B:172:0x0302, B:175:0x030c, B:177:0x0310, B:179:0x0316, B:180:0x0319, B:182:0x031f, B:185:0x0330, B:191:0x034a, B:195:0x0357, B:192:0x034f, B:194:0x0353, B:130:0x025e, B:133:0x0269, B:137:0x0275, B:139:0x027b, B:144:0x0288, B:145:0x028b, B:203:0x0368, B:207:0x0374, B:209:0x037c, B:211:0x0386, B:213:0x0397, B:216:0x03a1, B:218:0x03a9, B:220:0x03ad, B:222:0x03b3, B:225:0x03b8, B:227:0x03bc, B:250:0x0421, B:252:0x0429, B:255:0x0432, B:256:0x044c, B:229:0x03c2, B:231:0x03ca, B:234:0x03d0, B:235:0x03dd, B:238:0x03e6, B:241:0x03ec, B:244:0x03f1, B:245:0x03fe, B:247:0x0408, B:249:0x0416, B:257:0x044d, B:258:0x046b, B:260:0x046e, B:262:0x0472, B:264:0x0476, B:267:0x047c, B:271:0x0484, B:277:0x0494, B:279:0x04a3, B:281:0x04ae, B:282:0x04b6, B:283:0x04b9, B:295:0x04e5, B:297:0x04f0, B:301:0x04fd, B:304:0x050d, B:305:0x052d, B:290:0x04c9, B:292:0x04d3, B:294:0x04e2, B:293:0x04d8, B:308:0x0532, B:310:0x053c, B:312:0x0544, B:313:0x0547, B:315:0x0552, B:316:0x0556, B:318:0x0561, B:321:0x0568, B:324:0x0574, B:325:0x0579, B:328:0x057e, B:330:0x0583, B:334:0x058e, B:336:0x0596, B:338:0x05a9, B:342:0x05c4, B:344:0x05cc, B:347:0x05d2, B:349:0x05d8, B:351:0x05e0, B:354:0x05f0, B:357:0x05f8, B:359:0x05fc, B:360:0x0603, B:362:0x0608, B:363:0x060b, B:365:0x0613, B:368:0x061d, B:371:0x0627, B:372:0x062c, B:373:0x0631, B:374:0x064b, B:339:0x05b2, B:340:0x05b7, B:375:0x064c, B:377:0x065e, B:380:0x0665, B:383:0x0673, B:384:0x0693, B:41:0x00be, B:42:0x00dc, B:45:0x00e1, B:47:0x00ec, B:49:0x00f0, B:51:0x00f4, B:54:0x00fa, B:61:0x0109, B:63:0x0111, B:66:0x0123, B:67:0x013b, B:68:0x013c, B:69:0x0141, B:80:0x0156, B:81:0x015c, B:83:0x0163, B:85:0x016e, B:92:0x0180, B:95:0x018a, B:96:0x01a2, B:90:0x017b, B:84:0x0168, B:97:0x01a3, B:98:0x01bb, B:104:0x01c5, B:106:0x01cd, B:109:0x01e0, B:110:0x0200, B:111:0x0201, B:112:0x0206, B:113:0x0207, B:115:0x0211, B:385:0x0694, B:386:0x069b, B:387:0x069c, B:388:0x06a1, B:389:0x06a2, B:390:0x06a7), top: B:396:0x0071, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:284:0x04bd  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x04f0 A[Catch: all -> 0x007d, TryCatch #2 {all -> 0x007d, blocks: (B:24:0x0071, B:26:0x0075, B:31:0x0082, B:34:0x0095, B:38:0x00aa, B:117:0x021b, B:118:0x0221, B:120:0x022c, B:122:0x0234, B:126:0x024a, B:128:0x0258, B:148:0x029b, B:149:0x02a3, B:151:0x02b0, B:152:0x02b3, B:154:0x02bd, B:160:0x02cd, B:161:0x02d3, B:163:0x02db, B:164:0x02e0, B:166:0x02e8, B:167:0x02f2, B:170:0x02fa, B:171:0x0301, B:172:0x0302, B:175:0x030c, B:177:0x0310, B:179:0x0316, B:180:0x0319, B:182:0x031f, B:185:0x0330, B:191:0x034a, B:195:0x0357, B:192:0x034f, B:194:0x0353, B:130:0x025e, B:133:0x0269, B:137:0x0275, B:139:0x027b, B:144:0x0288, B:145:0x028b, B:203:0x0368, B:207:0x0374, B:209:0x037c, B:211:0x0386, B:213:0x0397, B:216:0x03a1, B:218:0x03a9, B:220:0x03ad, B:222:0x03b3, B:225:0x03b8, B:227:0x03bc, B:250:0x0421, B:252:0x0429, B:255:0x0432, B:256:0x044c, B:229:0x03c2, B:231:0x03ca, B:234:0x03d0, B:235:0x03dd, B:238:0x03e6, B:241:0x03ec, B:244:0x03f1, B:245:0x03fe, B:247:0x0408, B:249:0x0416, B:257:0x044d, B:258:0x046b, B:260:0x046e, B:262:0x0472, B:264:0x0476, B:267:0x047c, B:271:0x0484, B:277:0x0494, B:279:0x04a3, B:281:0x04ae, B:282:0x04b6, B:283:0x04b9, B:295:0x04e5, B:297:0x04f0, B:301:0x04fd, B:304:0x050d, B:305:0x052d, B:290:0x04c9, B:292:0x04d3, B:294:0x04e2, B:293:0x04d8, B:308:0x0532, B:310:0x053c, B:312:0x0544, B:313:0x0547, B:315:0x0552, B:316:0x0556, B:318:0x0561, B:321:0x0568, B:324:0x0574, B:325:0x0579, B:328:0x057e, B:330:0x0583, B:334:0x058e, B:336:0x0596, B:338:0x05a9, B:342:0x05c4, B:344:0x05cc, B:347:0x05d2, B:349:0x05d8, B:351:0x05e0, B:354:0x05f0, B:357:0x05f8, B:359:0x05fc, B:360:0x0603, B:362:0x0608, B:363:0x060b, B:365:0x0613, B:368:0x061d, B:371:0x0627, B:372:0x062c, B:373:0x0631, B:374:0x064b, B:339:0x05b2, B:340:0x05b7, B:375:0x064c, B:377:0x065e, B:380:0x0665, B:383:0x0673, B:384:0x0693, B:41:0x00be, B:42:0x00dc, B:45:0x00e1, B:47:0x00ec, B:49:0x00f0, B:51:0x00f4, B:54:0x00fa, B:61:0x0109, B:63:0x0111, B:66:0x0123, B:67:0x013b, B:68:0x013c, B:69:0x0141, B:80:0x0156, B:81:0x015c, B:83:0x0163, B:85:0x016e, B:92:0x0180, B:95:0x018a, B:96:0x01a2, B:90:0x017b, B:84:0x0168, B:97:0x01a3, B:98:0x01bb, B:104:0x01c5, B:106:0x01cd, B:109:0x01e0, B:110:0x0200, B:111:0x0201, B:112:0x0206, B:113:0x0207, B:115:0x0211, B:385:0x0694, B:386:0x069b, B:387:0x069c, B:388:0x06a1, B:389:0x06a2, B:390:0x06a7), top: B:396:0x0071, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:352:0x05eb  */
    /* JADX WARN: Removed duplicated region for block: B:354:0x05f0 A[Catch: all -> 0x007d, TryCatch #2 {all -> 0x007d, blocks: (B:24:0x0071, B:26:0x0075, B:31:0x0082, B:34:0x0095, B:38:0x00aa, B:117:0x021b, B:118:0x0221, B:120:0x022c, B:122:0x0234, B:126:0x024a, B:128:0x0258, B:148:0x029b, B:149:0x02a3, B:151:0x02b0, B:152:0x02b3, B:154:0x02bd, B:160:0x02cd, B:161:0x02d3, B:163:0x02db, B:164:0x02e0, B:166:0x02e8, B:167:0x02f2, B:170:0x02fa, B:171:0x0301, B:172:0x0302, B:175:0x030c, B:177:0x0310, B:179:0x0316, B:180:0x0319, B:182:0x031f, B:185:0x0330, B:191:0x034a, B:195:0x0357, B:192:0x034f, B:194:0x0353, B:130:0x025e, B:133:0x0269, B:137:0x0275, B:139:0x027b, B:144:0x0288, B:145:0x028b, B:203:0x0368, B:207:0x0374, B:209:0x037c, B:211:0x0386, B:213:0x0397, B:216:0x03a1, B:218:0x03a9, B:220:0x03ad, B:222:0x03b3, B:225:0x03b8, B:227:0x03bc, B:250:0x0421, B:252:0x0429, B:255:0x0432, B:256:0x044c, B:229:0x03c2, B:231:0x03ca, B:234:0x03d0, B:235:0x03dd, B:238:0x03e6, B:241:0x03ec, B:244:0x03f1, B:245:0x03fe, B:247:0x0408, B:249:0x0416, B:257:0x044d, B:258:0x046b, B:260:0x046e, B:262:0x0472, B:264:0x0476, B:267:0x047c, B:271:0x0484, B:277:0x0494, B:279:0x04a3, B:281:0x04ae, B:282:0x04b6, B:283:0x04b9, B:295:0x04e5, B:297:0x04f0, B:301:0x04fd, B:304:0x050d, B:305:0x052d, B:290:0x04c9, B:292:0x04d3, B:294:0x04e2, B:293:0x04d8, B:308:0x0532, B:310:0x053c, B:312:0x0544, B:313:0x0547, B:315:0x0552, B:316:0x0556, B:318:0x0561, B:321:0x0568, B:324:0x0574, B:325:0x0579, B:328:0x057e, B:330:0x0583, B:334:0x058e, B:336:0x0596, B:338:0x05a9, B:342:0x05c4, B:344:0x05cc, B:347:0x05d2, B:349:0x05d8, B:351:0x05e0, B:354:0x05f0, B:357:0x05f8, B:359:0x05fc, B:360:0x0603, B:362:0x0608, B:363:0x060b, B:365:0x0613, B:368:0x061d, B:371:0x0627, B:372:0x062c, B:373:0x0631, B:374:0x064b, B:339:0x05b2, B:340:0x05b7, B:375:0x064c, B:377:0x065e, B:380:0x0665, B:383:0x0673, B:384:0x0693, B:41:0x00be, B:42:0x00dc, B:45:0x00e1, B:47:0x00ec, B:49:0x00f0, B:51:0x00f4, B:54:0x00fa, B:61:0x0109, B:63:0x0111, B:66:0x0123, B:67:0x013b, B:68:0x013c, B:69:0x0141, B:80:0x0156, B:81:0x015c, B:83:0x0163, B:85:0x016e, B:92:0x0180, B:95:0x018a, B:96:0x01a2, B:90:0x017b, B:84:0x0168, B:97:0x01a3, B:98:0x01bb, B:104:0x01c5, B:106:0x01cd, B:109:0x01e0, B:110:0x0200, B:111:0x0201, B:112:0x0206, B:113:0x0207, B:115:0x0211, B:385:0x0694, B:386:0x069b, B:387:0x069c, B:388:0x06a1, B:389:0x06a2, B:390:0x06a7), top: B:396:0x0071, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:359:0x05fc A[Catch: all -> 0x007d, TryCatch #2 {all -> 0x007d, blocks: (B:24:0x0071, B:26:0x0075, B:31:0x0082, B:34:0x0095, B:38:0x00aa, B:117:0x021b, B:118:0x0221, B:120:0x022c, B:122:0x0234, B:126:0x024a, B:128:0x0258, B:148:0x029b, B:149:0x02a3, B:151:0x02b0, B:152:0x02b3, B:154:0x02bd, B:160:0x02cd, B:161:0x02d3, B:163:0x02db, B:164:0x02e0, B:166:0x02e8, B:167:0x02f2, B:170:0x02fa, B:171:0x0301, B:172:0x0302, B:175:0x030c, B:177:0x0310, B:179:0x0316, B:180:0x0319, B:182:0x031f, B:185:0x0330, B:191:0x034a, B:195:0x0357, B:192:0x034f, B:194:0x0353, B:130:0x025e, B:133:0x0269, B:137:0x0275, B:139:0x027b, B:144:0x0288, B:145:0x028b, B:203:0x0368, B:207:0x0374, B:209:0x037c, B:211:0x0386, B:213:0x0397, B:216:0x03a1, B:218:0x03a9, B:220:0x03ad, B:222:0x03b3, B:225:0x03b8, B:227:0x03bc, B:250:0x0421, B:252:0x0429, B:255:0x0432, B:256:0x044c, B:229:0x03c2, B:231:0x03ca, B:234:0x03d0, B:235:0x03dd, B:238:0x03e6, B:241:0x03ec, B:244:0x03f1, B:245:0x03fe, B:247:0x0408, B:249:0x0416, B:257:0x044d, B:258:0x046b, B:260:0x046e, B:262:0x0472, B:264:0x0476, B:267:0x047c, B:271:0x0484, B:277:0x0494, B:279:0x04a3, B:281:0x04ae, B:282:0x04b6, B:283:0x04b9, B:295:0x04e5, B:297:0x04f0, B:301:0x04fd, B:304:0x050d, B:305:0x052d, B:290:0x04c9, B:292:0x04d3, B:294:0x04e2, B:293:0x04d8, B:308:0x0532, B:310:0x053c, B:312:0x0544, B:313:0x0547, B:315:0x0552, B:316:0x0556, B:318:0x0561, B:321:0x0568, B:324:0x0574, B:325:0x0579, B:328:0x057e, B:330:0x0583, B:334:0x058e, B:336:0x0596, B:338:0x05a9, B:342:0x05c4, B:344:0x05cc, B:347:0x05d2, B:349:0x05d8, B:351:0x05e0, B:354:0x05f0, B:357:0x05f8, B:359:0x05fc, B:360:0x0603, B:362:0x0608, B:363:0x060b, B:365:0x0613, B:368:0x061d, B:371:0x0627, B:372:0x062c, B:373:0x0631, B:374:0x064b, B:339:0x05b2, B:340:0x05b7, B:375:0x064c, B:377:0x065e, B:380:0x0665, B:383:0x0673, B:384:0x0693, B:41:0x00be, B:42:0x00dc, B:45:0x00e1, B:47:0x00ec, B:49:0x00f0, B:51:0x00f4, B:54:0x00fa, B:61:0x0109, B:63:0x0111, B:66:0x0123, B:67:0x013b, B:68:0x013c, B:69:0x0141, B:80:0x0156, B:81:0x015c, B:83:0x0163, B:85:0x016e, B:92:0x0180, B:95:0x018a, B:96:0x01a2, B:90:0x017b, B:84:0x0168, B:97:0x01a3, B:98:0x01bb, B:104:0x01c5, B:106:0x01cd, B:109:0x01e0, B:110:0x0200, B:111:0x0201, B:112:0x0206, B:113:0x0207, B:115:0x0211, B:385:0x0694, B:386:0x069b, B:387:0x069c, B:388:0x06a1, B:389:0x06a2, B:390:0x06a7), top: B:396:0x0071, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:362:0x0608 A[Catch: all -> 0x007d, TryCatch #2 {all -> 0x007d, blocks: (B:24:0x0071, B:26:0x0075, B:31:0x0082, B:34:0x0095, B:38:0x00aa, B:117:0x021b, B:118:0x0221, B:120:0x022c, B:122:0x0234, B:126:0x024a, B:128:0x0258, B:148:0x029b, B:149:0x02a3, B:151:0x02b0, B:152:0x02b3, B:154:0x02bd, B:160:0x02cd, B:161:0x02d3, B:163:0x02db, B:164:0x02e0, B:166:0x02e8, B:167:0x02f2, B:170:0x02fa, B:171:0x0301, B:172:0x0302, B:175:0x030c, B:177:0x0310, B:179:0x0316, B:180:0x0319, B:182:0x031f, B:185:0x0330, B:191:0x034a, B:195:0x0357, B:192:0x034f, B:194:0x0353, B:130:0x025e, B:133:0x0269, B:137:0x0275, B:139:0x027b, B:144:0x0288, B:145:0x028b, B:203:0x0368, B:207:0x0374, B:209:0x037c, B:211:0x0386, B:213:0x0397, B:216:0x03a1, B:218:0x03a9, B:220:0x03ad, B:222:0x03b3, B:225:0x03b8, B:227:0x03bc, B:250:0x0421, B:252:0x0429, B:255:0x0432, B:256:0x044c, B:229:0x03c2, B:231:0x03ca, B:234:0x03d0, B:235:0x03dd, B:238:0x03e6, B:241:0x03ec, B:244:0x03f1, B:245:0x03fe, B:247:0x0408, B:249:0x0416, B:257:0x044d, B:258:0x046b, B:260:0x046e, B:262:0x0472, B:264:0x0476, B:267:0x047c, B:271:0x0484, B:277:0x0494, B:279:0x04a3, B:281:0x04ae, B:282:0x04b6, B:283:0x04b9, B:295:0x04e5, B:297:0x04f0, B:301:0x04fd, B:304:0x050d, B:305:0x052d, B:290:0x04c9, B:292:0x04d3, B:294:0x04e2, B:293:0x04d8, B:308:0x0532, B:310:0x053c, B:312:0x0544, B:313:0x0547, B:315:0x0552, B:316:0x0556, B:318:0x0561, B:321:0x0568, B:324:0x0574, B:325:0x0579, B:328:0x057e, B:330:0x0583, B:334:0x058e, B:336:0x0596, B:338:0x05a9, B:342:0x05c4, B:344:0x05cc, B:347:0x05d2, B:349:0x05d8, B:351:0x05e0, B:354:0x05f0, B:357:0x05f8, B:359:0x05fc, B:360:0x0603, B:362:0x0608, B:363:0x060b, B:365:0x0613, B:368:0x061d, B:371:0x0627, B:372:0x062c, B:373:0x0631, B:374:0x064b, B:339:0x05b2, B:340:0x05b7, B:375:0x064c, B:377:0x065e, B:380:0x0665, B:383:0x0673, B:384:0x0693, B:41:0x00be, B:42:0x00dc, B:45:0x00e1, B:47:0x00ec, B:49:0x00f0, B:51:0x00f4, B:54:0x00fa, B:61:0x0109, B:63:0x0111, B:66:0x0123, B:67:0x013b, B:68:0x013c, B:69:0x0141, B:80:0x0156, B:81:0x015c, B:83:0x0163, B:85:0x016e, B:92:0x0180, B:95:0x018a, B:96:0x01a2, B:90:0x017b, B:84:0x0168, B:97:0x01a3, B:98:0x01bb, B:104:0x01c5, B:106:0x01cd, B:109:0x01e0, B:110:0x0200, B:111:0x0201, B:112:0x0206, B:113:0x0207, B:115:0x0211, B:385:0x0694, B:386:0x069b, B:387:0x069c, B:388:0x06a1, B:389:0x06a2, B:390:0x06a7), top: B:396:0x0071, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:368:0x061d A[Catch: all -> 0x007d, TRY_ENTER, TryCatch #2 {all -> 0x007d, blocks: (B:24:0x0071, B:26:0x0075, B:31:0x0082, B:34:0x0095, B:38:0x00aa, B:117:0x021b, B:118:0x0221, B:120:0x022c, B:122:0x0234, B:126:0x024a, B:128:0x0258, B:148:0x029b, B:149:0x02a3, B:151:0x02b0, B:152:0x02b3, B:154:0x02bd, B:160:0x02cd, B:161:0x02d3, B:163:0x02db, B:164:0x02e0, B:166:0x02e8, B:167:0x02f2, B:170:0x02fa, B:171:0x0301, B:172:0x0302, B:175:0x030c, B:177:0x0310, B:179:0x0316, B:180:0x0319, B:182:0x031f, B:185:0x0330, B:191:0x034a, B:195:0x0357, B:192:0x034f, B:194:0x0353, B:130:0x025e, B:133:0x0269, B:137:0x0275, B:139:0x027b, B:144:0x0288, B:145:0x028b, B:203:0x0368, B:207:0x0374, B:209:0x037c, B:211:0x0386, B:213:0x0397, B:216:0x03a1, B:218:0x03a9, B:220:0x03ad, B:222:0x03b3, B:225:0x03b8, B:227:0x03bc, B:250:0x0421, B:252:0x0429, B:255:0x0432, B:256:0x044c, B:229:0x03c2, B:231:0x03ca, B:234:0x03d0, B:235:0x03dd, B:238:0x03e6, B:241:0x03ec, B:244:0x03f1, B:245:0x03fe, B:247:0x0408, B:249:0x0416, B:257:0x044d, B:258:0x046b, B:260:0x046e, B:262:0x0472, B:264:0x0476, B:267:0x047c, B:271:0x0484, B:277:0x0494, B:279:0x04a3, B:281:0x04ae, B:282:0x04b6, B:283:0x04b9, B:295:0x04e5, B:297:0x04f0, B:301:0x04fd, B:304:0x050d, B:305:0x052d, B:290:0x04c9, B:292:0x04d3, B:294:0x04e2, B:293:0x04d8, B:308:0x0532, B:310:0x053c, B:312:0x0544, B:313:0x0547, B:315:0x0552, B:316:0x0556, B:318:0x0561, B:321:0x0568, B:324:0x0574, B:325:0x0579, B:328:0x057e, B:330:0x0583, B:334:0x058e, B:336:0x0596, B:338:0x05a9, B:342:0x05c4, B:344:0x05cc, B:347:0x05d2, B:349:0x05d8, B:351:0x05e0, B:354:0x05f0, B:357:0x05f8, B:359:0x05fc, B:360:0x0603, B:362:0x0608, B:363:0x060b, B:365:0x0613, B:368:0x061d, B:371:0x0627, B:372:0x062c, B:373:0x0631, B:374:0x064b, B:339:0x05b2, B:340:0x05b7, B:375:0x064c, B:377:0x065e, B:380:0x0665, B:383:0x0673, B:384:0x0693, B:41:0x00be, B:42:0x00dc, B:45:0x00e1, B:47:0x00ec, B:49:0x00f0, B:51:0x00f4, B:54:0x00fa, B:61:0x0109, B:63:0x0111, B:66:0x0123, B:67:0x013b, B:68:0x013c, B:69:0x0141, B:80:0x0156, B:81:0x015c, B:83:0x0163, B:85:0x016e, B:92:0x0180, B:95:0x018a, B:96:0x01a2, B:90:0x017b, B:84:0x0168, B:97:0x01a3, B:98:0x01bb, B:104:0x01c5, B:106:0x01cd, B:109:0x01e0, B:110:0x0200, B:111:0x0201, B:112:0x0206, B:113:0x0207, B:115:0x0211, B:385:0x0694, B:386:0x069b, B:387:0x069c, B:388:0x06a1, B:389:0x06a2, B:390:0x06a7), top: B:396:0x0071, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:407:0x02a3 A[EDGE_INSN: B:407:0x02a3->B:149:0x02a3 BREAK  A[LOOP:0: B:31:0x0082->B:215:0x039d], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:410:0x04f9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:413:0x0613 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object parseObject(java.util.Map r18, java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 1708
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.DefaultJSONParser.parseObject(java.util.Map, java.lang.Object):java.lang.Object");
    }

    public void popContext() {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return;
        }
        this.context = this.context.parent;
        int i6 = this.contextArrayIndex;
        if (i6 <= 0) {
            return;
        }
        int i10 = i6 - 1;
        this.contextArrayIndex = i10;
        this.contextArray[i10] = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0022, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object resolveReference(java.lang.String r5) {
        /*
            r4 = this;
            com.alibaba.fastjson.parser.ParseContext[] r0 = r4.contextArray
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            r0 = 0
        L7:
            com.alibaba.fastjson.parser.ParseContext[] r2 = r4.contextArray
            int r3 = r2.length
            if (r0 >= r3) goto L22
            int r3 = r4.contextArrayIndex
            if (r0 >= r3) goto L22
            r2 = r2[r0]
            java.lang.String r3 = r2.toString()
            boolean r3 = r3.equals(r5)
            if (r3 == 0) goto L1f
            java.lang.Object r5 = r2.object
            return r5
        L1f:
            int r0 = r0 + 1
            goto L7
        L22:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.DefaultJSONParser.resolveReference(java.lang.String):java.lang.Object");
    }

    public void setConfig(ParserConfig parserConfig) {
        this.config = parserConfig;
    }

    public void setContext(ParseContext parseContext) {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return;
        }
        this.context = parseContext;
    }

    public void setDateFomrat(DateFormat dateFormat) {
        setDateFormat(dateFormat);
    }

    public void setDateFormat(String str) {
        this.dateFormatPattern = str;
        this.dateFormat = null;
    }

    public void setFieldTypeResolver(FieldTypeResolver fieldTypeResolver) {
        this.fieldTypeResolver = fieldTypeResolver;
    }

    public void setResolveStatus(int i6) {
        this.resolveStatus = i6;
    }

    public void throwException(int i6) {
        throw new JSONException("syntax error, expect " + JSONToken.name(i6) + ", actual " + JSONToken.name(this.lexer.token()));
    }

    public DefaultJSONParser(String str, ParserConfig parserConfig) {
        this(str, new JSONScanner(str, JSON.DEFAULT_PARSER_FEATURE), parserConfig);
    }

    public Object parse(Object obj) {
        JSONLexer jSONLexer = this.lexer;
        int i6 = jSONLexer.token();
        if (i6 == 2) {
            Number numberIntegerValue = jSONLexer.integerValue();
            jSONLexer.nextToken();
            return numberIntegerValue;
        }
        if (i6 == 3) {
            Number numberDecimalValue = jSONLexer.decimalValue(jSONLexer.isEnabled(Feature.UseBigDecimal));
            jSONLexer.nextToken();
            return numberDecimalValue;
        }
        if (i6 == 4) {
            String strStringVal = jSONLexer.stringVal();
            jSONLexer.nextToken(16);
            if (jSONLexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                JSONScanner jSONScanner = new JSONScanner(strStringVal);
                try {
                    if (jSONScanner.scanISO8601DateIfMatch()) {
                        return jSONScanner.getCalendar().getTime();
                    }
                } finally {
                    jSONScanner.close();
                }
            }
            return strStringVal;
        }
        if (i6 == 12) {
            return parseObject(isEnabled(Feature.UseNativeJavaObject) ? jSONLexer.isEnabled(Feature.OrderedField) ? new HashMap() : new LinkedHashMap() : new JSONObject(jSONLexer.isEnabled(Feature.OrderedField)), obj);
        }
        if (i6 == 14) {
            Collection arrayList = isEnabled(Feature.UseNativeJavaObject) ? new ArrayList() : new JSONArray();
            parseArray(arrayList, obj);
            return jSONLexer.isEnabled(Feature.UseObjectArray) ? arrayList.toArray() : arrayList;
        }
        if (i6 == 18) {
            if ("NaN".equals(jSONLexer.stringVal())) {
                jSONLexer.nextToken();
                return null;
            }
            throw new JSONException("syntax error, " + jSONLexer.info());
        }
        if (i6 == 26) {
            byte[] bArrBytesValue = jSONLexer.bytesValue();
            jSONLexer.nextToken();
            return bArrBytesValue;
        }
        switch (i6) {
            case 6:
                jSONLexer.nextToken();
                return Boolean.TRUE;
            case 7:
                jSONLexer.nextToken();
                return Boolean.FALSE;
            case 8:
                jSONLexer.nextToken();
                return null;
            case 9:
                jSONLexer.nextToken(18);
                if (jSONLexer.token() != 18) {
                    throw new JSONException("syntax error");
                }
                jSONLexer.nextToken(10);
                accept(10);
                long jLongValue = jSONLexer.integerValue().longValue();
                accept(2);
                accept(11);
                return new Date(jLongValue);
            default:
                switch (i6) {
                    case 20:
                        if (jSONLexer.isBlankInput()) {
                            return null;
                        }
                        throw new JSONException("unterminated json string, " + jSONLexer.info());
                    case 21:
                        jSONLexer.nextToken();
                        HashSet hashSet = new HashSet();
                        parseArray(hashSet, obj);
                        return hashSet;
                    case 22:
                        jSONLexer.nextToken();
                        TreeSet treeSet = new TreeSet();
                        parseArray(treeSet, obj);
                        return treeSet;
                    case 23:
                        jSONLexer.nextToken();
                        return null;
                    default:
                        throw new JSONException("syntax error, " + jSONLexer.info());
                }
        }
    }

    public DefaultJSONParser(String str, ParserConfig parserConfig, int i6) {
        this(str, new JSONScanner(str, i6), parserConfig);
    }

    public void parseArray(Class<?> cls, Collection collection) {
        parseArray((Type) cls, collection);
    }

    public ParseContext setContext(Object obj, Object obj2) {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return null;
        }
        return setContext(this.context, obj, obj2);
    }

    public void setDateFormat(DateFormat dateFormat) {
        this.dateFormat = dateFormat;
    }

    public DefaultJSONParser(char[] cArr, int i6, ParserConfig parserConfig, int i10) {
        this(cArr, new JSONScanner(cArr, i6, i10), parserConfig);
    }

    public void parseArray(Type type, Collection collection) {
        parseArray(type, collection, null);
    }

    public DefaultJSONParser(JSONLexer jSONLexer) {
        this(jSONLexer, ParserConfig.getGlobalInstance());
    }

    public void parseArray(Type type, Collection collection, Object obj) {
        ObjectDeserializer deserializer;
        int i6 = this.lexer.token();
        if (i6 == 21 || i6 == 22) {
            this.lexer.nextToken();
            i6 = this.lexer.token();
        }
        if (i6 == 14) {
            if (Integer.TYPE == type) {
                deserializer = IntegerCodec.instance;
                this.lexer.nextToken(2);
            } else if (String.class == type) {
                deserializer = StringCodec.instance;
                this.lexer.nextToken(4);
            } else {
                deserializer = this.config.getDeserializer(type);
                this.lexer.nextToken(deserializer.getFastMatchToken());
            }
            ParseContext parseContext = this.context;
            setContext(collection, obj);
            int i10 = 0;
            while (true) {
                try {
                    if (this.lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                        while (this.lexer.token() == 16) {
                            this.lexer.nextToken();
                        }
                    }
                    if (this.lexer.token() == 15) {
                        setContext(parseContext);
                        this.lexer.nextToken(16);
                        return;
                    }
                    Object objDeserialze = null;
                    if (Integer.TYPE == type) {
                        collection.add(IntegerCodec.instance.deserialze(this, null, null));
                    } else if (String.class == type) {
                        if (this.lexer.token() == 4) {
                            objDeserialze = this.lexer.stringVal();
                            this.lexer.nextToken(16);
                        } else {
                            Object obj2 = parse();
                            if (obj2 != null) {
                                objDeserialze = obj2.toString();
                            }
                        }
                        collection.add(objDeserialze);
                    } else {
                        if (this.lexer.token() == 8) {
                            this.lexer.nextToken();
                        } else {
                            objDeserialze = deserializer.deserialze(this, type, Integer.valueOf(i10));
                        }
                        collection.add(objDeserialze);
                        checkListResolve(collection);
                    }
                    if (this.lexer.token() == 16) {
                        this.lexer.nextToken(deserializer.getFastMatchToken());
                    }
                    i10++;
                } catch (Throwable th) {
                    setContext(parseContext);
                    throw th;
                }
            }
        } else {
            throw new JSONException("field " + obj + " expect '[', but " + JSONToken.name(i6) + ", " + this.lexer.info());
        }
    }

    public ParseContext setContext(ParseContext parseContext, Object obj, Object obj2) {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return null;
        }
        ParseContext parseContext2 = new ParseContext(parseContext, obj, obj2);
        this.context = parseContext2;
        addContext(parseContext2);
        return this.context;
    }

    public DefaultJSONParser(JSONLexer jSONLexer, ParserConfig parserConfig) {
        this((Object) null, jSONLexer, parserConfig);
    }

    public final void accept(int i6, int i10) {
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == i6) {
            jSONLexer.nextToken(i10);
        } else {
            throwException(i6);
        }
    }

    public DefaultJSONParser(Object obj, JSONLexer jSONLexer, ParserConfig parserConfig) {
        this.dateFormatPattern = JSON.DEFFAULT_DATE_FORMAT;
        this.contextArrayIndex = 0;
        this.resolveStatus = 0;
        this.extraTypeProviders = null;
        this.extraProcessors = null;
        this.fieldTypeResolver = null;
        this.objectKeyLevel = 0;
        this.autoTypeAccept = null;
        this.lexer = jSONLexer;
        this.input = obj;
        this.config = parserConfig;
        this.symbolTable = parserConfig.symbolTable;
        char current = jSONLexer.getCurrent();
        if (current == '{') {
            jSONLexer.next();
            ((JSONLexerBase) jSONLexer).token = 12;
        } else if (current == '[') {
            jSONLexer.next();
            ((JSONLexerBase) jSONLexer).token = 14;
        } else {
            jSONLexer.nextToken();
        }
    }

    public Object[] parseArray(Type[] typeArr) {
        Object objCast;
        Class<?> componentType;
        boolean zIsArray;
        Class cls;
        int i6 = 8;
        if (this.lexer.token() == 8) {
            this.lexer.nextToken(16);
            return null;
        }
        int i10 = 14;
        if (this.lexer.token() == 14) {
            Object[] objArr = new Object[typeArr.length];
            if (typeArr.length == 0) {
                this.lexer.nextToken(15);
                if (this.lexer.token() == 15) {
                    this.lexer.nextToken(16);
                    return new Object[0];
                }
                throw new JSONException("syntax error");
            }
            this.lexer.nextToken(2);
            int i11 = 0;
            while (i11 < typeArr.length) {
                if (this.lexer.token() == i6) {
                    this.lexer.nextToken(16);
                    objCast = null;
                } else {
                    Type type = typeArr[i11];
                    if (type != Integer.TYPE && type != Integer.class) {
                        if (type == String.class) {
                            if (this.lexer.token() == 4) {
                                objCast = this.lexer.stringVal();
                                this.lexer.nextToken(16);
                            } else {
                                objCast = TypeUtils.cast(parse(), type, this.config);
                            }
                        } else {
                            if (i11 == typeArr.length - 1 && (type instanceof Class) && (((cls = (Class) type) != byte[].class && cls != char[].class) || this.lexer.token() != 4)) {
                                zIsArray = cls.isArray();
                                componentType = cls.getComponentType();
                            } else {
                                componentType = null;
                                zIsArray = false;
                            }
                            if (zIsArray && this.lexer.token() != i10) {
                                ArrayList arrayList = new ArrayList();
                                ObjectDeserializer deserializer = this.config.getDeserializer(componentType);
                                int fastMatchToken = deserializer.getFastMatchToken();
                                if (this.lexer.token() != 15) {
                                    while (true) {
                                        arrayList.add(deserializer.deserialze(this, type, null));
                                        if (this.lexer.token() != 16) {
                                            break;
                                        }
                                        this.lexer.nextToken(fastMatchToken);
                                    }
                                    if (this.lexer.token() != 15) {
                                        throw new JSONException("syntax error :" + JSONToken.name(this.lexer.token()));
                                    }
                                }
                                objCast = TypeUtils.cast(arrayList, type, this.config);
                            } else {
                                objCast = this.config.getDeserializer(type).deserialze(this, type, Integer.valueOf(i11));
                            }
                        }
                    } else if (this.lexer.token() == 2) {
                        objCast = Integer.valueOf(this.lexer.intValue());
                        this.lexer.nextToken(16);
                    } else {
                        objCast = TypeUtils.cast(parse(), type, this.config);
                    }
                }
                objArr[i11] = objCast;
                if (this.lexer.token() == 15) {
                    break;
                }
                if (this.lexer.token() == 16) {
                    if (i11 == typeArr.length - 1) {
                        this.lexer.nextToken(15);
                    } else {
                        this.lexer.nextToken(2);
                    }
                    i11++;
                    i6 = 8;
                    i10 = 14;
                } else {
                    throw new JSONException("syntax error :" + JSONToken.name(this.lexer.token()));
                }
            }
            if (this.lexer.token() == 15) {
                this.lexer.nextToken(16);
                return objArr;
            }
            throw new JSONException("syntax error");
        }
        throw new JSONException("syntax error : " + this.lexer.tokenName());
    }

    /* JADX WARN: Code restructure failed: missing block: B:88:0x021c, code lost:
    
        return r11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object parse(com.alibaba.fastjson.parser.deserializer.PropertyProcessable r11, java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 586
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.DefaultJSONParser.parse(com.alibaba.fastjson.parser.deserializer.PropertyProcessable, java.lang.Object):java.lang.Object");
    }

    public final void parseArray(Collection collection) {
        parseArray(collection, (Object) null);
    }

    public final void parseArray(Collection collection, Object obj) {
        Object object;
        Number numberDecimalValue;
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == 21 || jSONLexer.token() == 22) {
            jSONLexer.nextToken();
        }
        if (jSONLexer.token() == 14) {
            jSONLexer.nextToken(4);
            ParseContext parseContext = this.context;
            if (parseContext != null && parseContext.level > 512) {
                throw new JSONException("array level > 512");
            }
            setContext(collection, obj);
            int i6 = 0;
            while (true) {
                try {
                    try {
                        if (jSONLexer.isEnabled(Feature.AllowArbitraryCommas)) {
                            while (jSONLexer.token() == 16) {
                                jSONLexer.nextToken();
                            }
                        }
                        int i10 = jSONLexer.token();
                        if (i10 == 2) {
                            Number numberIntegerValue = jSONLexer.integerValue();
                            jSONLexer.nextToken(16);
                            object = numberIntegerValue;
                        } else if (i10 == 3) {
                            if (jSONLexer.isEnabled(Feature.UseBigDecimal)) {
                                numberDecimalValue = jSONLexer.decimalValue(true);
                            } else {
                                numberDecimalValue = jSONLexer.decimalValue(false);
                            }
                            object = numberDecimalValue;
                            jSONLexer.nextToken(16);
                        } else if (i10 == 4) {
                            String strStringVal = jSONLexer.stringVal();
                            jSONLexer.nextToken(16);
                            object = strStringVal;
                            if (jSONLexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                                JSONScanner jSONScanner = new JSONScanner(strStringVal);
                                Object time = strStringVal;
                                if (jSONScanner.scanISO8601DateIfMatch()) {
                                    time = jSONScanner.getCalendar().getTime();
                                }
                                jSONScanner.close();
                                object = time;
                            }
                        } else if (i10 == 6) {
                            Boolean bool = Boolean.TRUE;
                            jSONLexer.nextToken(16);
                            object = bool;
                        } else if (i10 != 7) {
                            object = null;
                            object = null;
                            if (i10 == 8) {
                                jSONLexer.nextToken(4);
                            } else if (i10 == 12) {
                                object = parseObject(new JSONObject(jSONLexer.isEnabled(Feature.OrderedField)), Integer.valueOf(i6));
                            } else {
                                if (i10 == 20) {
                                    throw new JSONException("unclosed jsonArray");
                                }
                                if (i10 == 23) {
                                    jSONLexer.nextToken(4);
                                } else if (i10 == 14) {
                                    JSONArray jSONArray = new JSONArray();
                                    parseArray(jSONArray, Integer.valueOf(i6));
                                    object = jSONArray;
                                    if (jSONLexer.isEnabled(Feature.UseObjectArray)) {
                                        object = jSONArray.toArray();
                                    }
                                } else if (i10 != 15) {
                                    object = parse();
                                } else {
                                    jSONLexer.nextToken(16);
                                    setContext(parseContext);
                                    return;
                                }
                            }
                        } else {
                            Boolean bool2 = Boolean.FALSE;
                            jSONLexer.nextToken(16);
                            object = bool2;
                        }
                        collection.add(object);
                        checkListResolve(collection);
                        if (jSONLexer.token() == 16) {
                            jSONLexer.nextToken(4);
                        }
                        i6++;
                    } catch (ClassCastException e5) {
                        throw new JSONException("unkown error", e5);
                    }
                } catch (Throwable th) {
                    setContext(parseContext);
                    throw th;
                }
            }
        } else {
            throw new JSONException("syntax error, expect [, actual " + JSONToken.name(jSONLexer.token()) + ", pos " + jSONLexer.pos() + ", fieldName " + obj);
        }
    }

    public <T> T parseObject(Class<T> cls) {
        return (T) parseObject(cls, (Object) null);
    }

    public <T> T parseObject(Type type) {
        return (T) parseObject(type, (Object) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T parseObject(Type type, Object obj) {
        int i6 = this.lexer.token();
        if (i6 == 8) {
            this.lexer.nextToken();
            return (T) TypeUtils.optionalEmpty(type);
        }
        if (i6 == 4) {
            if (type == byte[].class) {
                T t5 = (T) this.lexer.bytesValue();
                this.lexer.nextToken();
                return t5;
            }
            if (type == char[].class) {
                String strStringVal = this.lexer.stringVal();
                this.lexer.nextToken();
                return (T) strStringVal.toCharArray();
            }
        }
        ObjectDeserializer deserializer = this.config.getDeserializer(type);
        try {
            if (deserializer.getClass() == JavaBeanDeserializer.class) {
                if (this.lexer.token() != 12 && this.lexer.token() != 14) {
                    throw new JSONException("syntax error,expect start with { or [,but actually start with " + this.lexer.tokenName());
                }
                return (T) ((JavaBeanDeserializer) deserializer).deserialze(this, type, obj, 0);
            }
            return (T) deserializer.deserialze(this, type, obj);
        } catch (JSONException e5) {
            throw e5;
        } catch (Throwable th) {
            throw new JSONException(th.getMessage(), th);
        }
    }

    public void parseObject(Object obj) {
        Object objDeserialze;
        Class<?> cls = obj.getClass();
        ObjectDeserializer deserializer = this.config.getDeserializer(cls);
        JavaBeanDeserializer javaBeanDeserializer = deserializer instanceof JavaBeanDeserializer ? (JavaBeanDeserializer) deserializer : null;
        if (this.lexer.token() != 12 && this.lexer.token() != 16) {
            throw new JSONException("syntax error, expect {, actual " + this.lexer.tokenName());
        }
        while (true) {
            String strScanSymbol = this.lexer.scanSymbol(this.symbolTable);
            if (strScanSymbol == null) {
                if (this.lexer.token() == 13) {
                    this.lexer.nextToken(16);
                    return;
                } else if (this.lexer.token() != 16 || !this.lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                }
            }
            FieldDeserializer fieldDeserializer = javaBeanDeserializer != null ? javaBeanDeserializer.getFieldDeserializer(strScanSymbol) : null;
            if (fieldDeserializer == null) {
                if (this.lexer.isEnabled(Feature.IgnoreNotMatch)) {
                    this.lexer.nextTokenWithColon();
                    parse();
                    if (this.lexer.token() == 13) {
                        this.lexer.nextToken();
                        return;
                    }
                } else {
                    throw new JSONException("setter not found, class " + cls.getName() + ", property " + strScanSymbol);
                }
            } else {
                FieldInfo fieldInfo = fieldDeserializer.fieldInfo;
                Class<?> cls2 = fieldInfo.fieldClass;
                Type type = fieldInfo.fieldType;
                if (cls2 == Integer.TYPE) {
                    this.lexer.nextTokenWithColon(2);
                    objDeserialze = IntegerCodec.instance.deserialze(this, type, null);
                } else if (cls2 == String.class) {
                    this.lexer.nextTokenWithColon(4);
                    objDeserialze = StringCodec.deserialze(this);
                } else if (cls2 == Long.TYPE) {
                    this.lexer.nextTokenWithColon(2);
                    objDeserialze = LongCodec.instance.deserialze(this, type, null);
                } else {
                    ObjectDeserializer deserializer2 = this.config.getDeserializer(cls2, type);
                    this.lexer.nextTokenWithColon(deserializer2.getFastMatchToken());
                    objDeserialze = deserializer2.deserialze(this, type, null);
                }
                fieldDeserializer.setValue(obj, objDeserialze);
                if (this.lexer.token() != 16 && this.lexer.token() == 13) {
                    this.lexer.nextToken(16);
                    return;
                }
            }
        }
    }

    public Object parseObject(Map map) {
        return parseObject(map, (Object) null);
    }

    public JSONObject parseObject() {
        Object object = parseObject((Map) new JSONObject(this.lexer.isEnabled(Feature.OrderedField)));
        if (object instanceof JSONObject) {
            return (JSONObject) object;
        }
        if (object == null) {
            return null;
        }
        return new JSONObject((Map<String, Object>) object);
    }
}
