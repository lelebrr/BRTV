package z3;

import android.util.JsonReader;
import android.util.JsonToken;
import java.io.BufferedReader;
import java.io.IOException;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final long f11576a;

    public m(long j10) {
        this.f11576a = j10;
    }

    public static m a(BufferedReader bufferedReader) throws IOException {
        JsonReader jsonReader = new JsonReader(bufferedReader);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.nextName().equals("nextRequestWaitMillis")) {
                    return jsonReader.peek() == JsonToken.STRING ? new m(Long.parseLong(jsonReader.nextString())) : new m(jsonReader.nextLong());
                }
                jsonReader.skipValue();
            }
            throw new IOException("Response is missing nextRequestWaitMillis field.");
        } finally {
            jsonReader.close();
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof m) {
            return this.f11576a == ((m) obj).f11576a;
        }
        return false;
    }

    public final int hashCode() {
        long j10 = this.f11576a;
        return 1000003 ^ ((int) ((j10 >>> 32) ^ j10));
    }

    public final String toString() {
        return a.e.s(new StringBuilder("LogResponse{nextRequestWaitMillis="), this.f11576a, "}");
    }
}
