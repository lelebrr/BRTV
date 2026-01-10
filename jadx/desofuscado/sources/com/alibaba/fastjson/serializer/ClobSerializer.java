package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import java.io.IOException;
import java.io.Reader;
import java.lang.reflect.Type;
import java.sql.Clob;
import java.sql.SQLException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ClobSerializer implements ObjectSerializer {
    public static final ClobSerializer instance = new ClobSerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i6) throws SQLException, IOException {
        try {
            if (obj == null) {
                jSONSerializer.writeNull();
                return;
            }
            Reader characterStream = ((Clob) obj).getCharacterStream();
            StringBuilder sb = new StringBuilder();
            try {
                char[] cArr = new char[2048];
                while (true) {
                    int i10 = characterStream.read(cArr, 0, 2048);
                    if (i10 < 0) {
                        String string = sb.toString();
                        characterStream.close();
                        jSONSerializer.write(string);
                        return;
                    }
                    sb.append(cArr, 0, i10);
                }
            } catch (Exception e5) {
                throw new JSONException("read string from reader error", e5);
            }
        } catch (SQLException e10) {
            throw new IOException("write clob error", e10);
        }
    }
}
