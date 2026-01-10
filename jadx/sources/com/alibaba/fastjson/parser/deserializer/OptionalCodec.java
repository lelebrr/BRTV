package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.serializer.JSONSerializer;
import com.alibaba.fastjson.serializer.ObjectSerializer;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Optional;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class OptionalCodec implements ObjectSerializer, ObjectDeserializer {
    public static OptionalCodec instance = new OptionalCodec();

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        if (type == androidx.media3.exoplayer.source.mediaparser.a.e()) {
            Integer numCastToInt = TypeUtils.castToInt(defaultJSONParser.parseObject((Class) Integer.class));
            return numCastToInt == null ? (T) OptionalInt.empty() : (T) OptionalInt.of(numCastToInt.intValue());
        }
        if (type == androidx.media3.exoplayer.source.mediaparser.a.x()) {
            Long lCastToLong = TypeUtils.castToLong(defaultJSONParser.parseObject((Class) Long.class));
            return lCastToLong == null ? (T) OptionalLong.empty() : (T) OptionalLong.of(lCastToLong.longValue());
        }
        if (type == androidx.media3.exoplayer.source.mediaparser.a.B()) {
            Double dCastToDouble = TypeUtils.castToDouble(defaultJSONParser.parseObject((Class) Double.class));
            return dCastToDouble == null ? (T) OptionalDouble.empty() : (T) OptionalDouble.of(dCastToDouble.doubleValue());
        }
        Object object = defaultJSONParser.parseObject(TypeUtils.unwrapOptional(type));
        return object == null ? (T) Optional.empty() : (T) Optional.of(object);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 12;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i6) throws IOException {
        if (obj == null) {
            jSONSerializer.writeNull();
            return;
        }
        if (androidx.media3.exoplayer.source.mediaparser.a.q(obj)) {
            Optional optionalH = androidx.media3.exoplayer.source.mediaparser.a.h(obj);
            jSONSerializer.write(optionalH.isPresent() ? optionalH.get() : null);
            return;
        }
        if (androidx.media3.exoplayer.source.mediaparser.a.C(obj)) {
            OptionalDouble optionalDoubleI = androidx.media3.exoplayer.source.mediaparser.a.i(obj);
            if (optionalDoubleI.isPresent()) {
                jSONSerializer.write(Double.valueOf(optionalDoubleI.getAsDouble()));
                return;
            } else {
                jSONSerializer.writeNull();
                return;
            }
        }
        if (androidx.media3.exoplayer.source.mediaparser.a.D(obj)) {
            OptionalInt optionalIntL = androidx.media3.exoplayer.source.mediaparser.a.l(obj);
            if (optionalIntL.isPresent()) {
                jSONSerializer.out.writeInt(optionalIntL.getAsInt());
                return;
            } else {
                jSONSerializer.writeNull();
                return;
            }
        }
        if (!androidx.media3.exoplayer.source.mediaparser.a.A(obj)) {
            throw new JSONException("not support optional : " + obj.getClass());
        }
        OptionalLong optionalLongO = androidx.media3.exoplayer.source.mediaparser.a.o(obj);
        if (optionalLongO.isPresent()) {
            jSONSerializer.out.writeLong(optionalLongO.getAsLong());
        } else {
            jSONSerializer.writeNull();
        }
    }
}
