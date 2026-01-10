package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.util.IOUtils;
import java.io.IOException;
import java.lang.reflect.Type;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class CalendarCodec extends ContextObjectDeserializer implements ObjectSerializer, ObjectDeserializer, ContextObjectSerializer {
    public static final CalendarCodec instance = new CalendarCodec();
    private DatatypeFactory dateFactory;

    public XMLGregorianCalendar createXMLGregorianCalendar(Calendar calendar) {
        if (this.dateFactory == null) {
            try {
                this.dateFactory = DatatypeFactory.newInstance();
            } catch (DatatypeConfigurationException e5) {
                throw new IllegalStateException("Could not obtain an instance of DatatypeFactory.", e5);
            }
        }
        return this.dateFactory.newXMLGregorianCalendar((GregorianCalendar) calendar);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        return (T) deserialze(defaultJSONParser, type, obj, null, 0);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 2;
    }

    @Override // com.alibaba.fastjson.serializer.ContextObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, BeanContext beanContext) throws IOException {
        SerializeWriter serializeWriter = jSONSerializer.out;
        String format = beanContext.getFormat();
        Calendar calendar = (Calendar) obj;
        if (format.equals("unixtime")) {
            serializeWriter.writeInt((int) (calendar.getTimeInMillis() / 1000));
            return;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(format);
        simpleDateFormat.setTimeZone(jSONSerializer.timeZone);
        serializeWriter.writeString(simpleDateFormat.format(calendar.getTime()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v3, types: [T, java.util.Calendar] */
    @Override // com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj, String str, int i6) {
        T t5 = (T) DateCodec.instance.deserialze(defaultJSONParser, type, obj, str, i6);
        if (t5 instanceof Calendar) {
            return t5;
        }
        Date date = (Date) t5;
        if (date == null) {
            return null;
        }
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        ?? r72 = (T) Calendar.getInstance(jSONLexer.getTimeZone(), jSONLexer.getLocale());
        r72.setTime(date);
        return type == XMLGregorianCalendar.class ? (T) createXMLGregorianCalendar((GregorianCalendar) r72) : r72;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i6) throws IOException {
        Calendar gregorianCalendar;
        char[] charArray;
        SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull();
            return;
        }
        if (obj instanceof XMLGregorianCalendar) {
            gregorianCalendar = ((XMLGregorianCalendar) obj).toGregorianCalendar();
        } else {
            gregorianCalendar = (Calendar) obj;
        }
        if (serializeWriter.isEnabled(SerializerFeature.UseISO8601DateFormat)) {
            char c5 = serializeWriter.isEnabled(SerializerFeature.UseSingleQuotes) ? '\'' : '\"';
            serializeWriter.append(c5);
            int i10 = gregorianCalendar.get(1);
            int i11 = gregorianCalendar.get(2) + 1;
            int i12 = gregorianCalendar.get(5);
            int i13 = gregorianCalendar.get(11);
            int i14 = gregorianCalendar.get(12);
            int i15 = gregorianCalendar.get(13);
            int i16 = gregorianCalendar.get(14);
            if (i16 != 0) {
                charArray = "0000-00-00T00:00:00.000".toCharArray();
                IOUtils.getChars(i16, 23, charArray);
                IOUtils.getChars(i15, 19, charArray);
                IOUtils.getChars(i14, 16, charArray);
                IOUtils.getChars(i13, 13, charArray);
                IOUtils.getChars(i12, 10, charArray);
                IOUtils.getChars(i11, 7, charArray);
                IOUtils.getChars(i10, 4, charArray);
            } else if (i15 == 0 && i14 == 0 && i13 == 0) {
                charArray = "0000-00-00".toCharArray();
                IOUtils.getChars(i12, 10, charArray);
                IOUtils.getChars(i11, 7, charArray);
                IOUtils.getChars(i10, 4, charArray);
            } else {
                charArray = "0000-00-00T00:00:00".toCharArray();
                IOUtils.getChars(i15, 19, charArray);
                IOUtils.getChars(i14, 16, charArray);
                IOUtils.getChars(i13, 13, charArray);
                IOUtils.getChars(i12, 10, charArray);
                IOUtils.getChars(i11, 7, charArray);
                IOUtils.getChars(i10, 4, charArray);
            }
            serializeWriter.write(charArray);
            float offset = gregorianCalendar.getTimeZone().getOffset(gregorianCalendar.getTimeInMillis()) / 3600000.0f;
            int i17 = (int) offset;
            if (i17 == 0.0d) {
                serializeWriter.write(90);
            } else {
                if (i17 > 9) {
                    serializeWriter.write(43);
                    serializeWriter.writeInt(i17);
                } else if (i17 > 0) {
                    serializeWriter.write(43);
                    serializeWriter.write(48);
                    serializeWriter.writeInt(i17);
                } else if (i17 < -9) {
                    serializeWriter.write(45);
                    serializeWriter.writeInt(i17);
                } else if (i17 < 0) {
                    serializeWriter.write(45);
                    serializeWriter.write(48);
                    serializeWriter.writeInt(-i17);
                }
                serializeWriter.write(58);
                serializeWriter.append((CharSequence) String.format("%02d", Integer.valueOf((int) ((offset - i17) * 60.0f))));
            }
            serializeWriter.append(c5);
            return;
        }
        jSONSerializer.write(gregorianCalendar.getTime());
    }
}
