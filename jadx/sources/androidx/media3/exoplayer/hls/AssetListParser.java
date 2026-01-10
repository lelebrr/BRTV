package androidx.media3.exoplayer.hls;

import android.net.Uri;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media3.common.C;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import d7.c5;
import d7.d0;
import d7.g1;
import d7.p1;
import d7.s1;
import d7.u1;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class AssetListParser implements ParsingLoadable.Parser<AssetList> {
    private static final String ASSET_LIST_JSON_NAME_ASSET_ARRAY = "ASSETS";
    private static final String ASSET_LIST_JSON_NAME_DURATION = "DURATION";
    private static final String ASSET_LIST_JSON_NAME_URI = "URI";

    /* compiled from: MyApplication */
    public static final class Asset {
        public final long durationUs;
        public final Uri uri;

        public Asset(Uri uri, long j10) {
            this.uri = uri;
            this.durationUs = j10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Asset)) {
                return false;
            }
            Asset asset = (Asset) obj;
            return this.durationUs == asset.durationUs && Objects.equals(this.uri, asset.uri);
        }

        public int hashCode() {
            return Objects.hash(this.uri, Long.valueOf(this.durationUs));
        }
    }

    /* compiled from: MyApplication */
    public static final class AssetList {
        private static final AssetList EMPTY;
        public final u1 assets;
        public final u1 stringAttributes;

        static {
            g1 g1Var = u1.f6276b;
            c5 c5Var = c5.f6115e;
            EMPTY = new AssetList(c5Var, c5Var);
        }

        public AssetList(u1 u1Var, u1 u1Var2) {
            this.assets = u1Var;
            this.stringAttributes = u1Var2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AssetList)) {
                return false;
            }
            AssetList assetList = (AssetList) obj;
            return Objects.equals(this.assets, assetList.assets) && Objects.equals(this.stringAttributes, assetList.stringAttributes);
        }

        public int hashCode() {
            return Objects.hash(this.assets, this.stringAttributes);
        }
    }

    /* compiled from: MyApplication */
    public static final class StringAttribute {
        public final String name;
        public final String value;

        public StringAttribute(String str, String str2) {
            this.name = str;
            this.value = str2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StringAttribute)) {
                return false;
            }
            StringAttribute stringAttribute = (StringAttribute) obj;
            return Objects.equals(this.name, stringAttribute.name) && Objects.equals(this.value, stringAttribute.value);
        }

        public int hashCode() {
            return Objects.hash(this.name, this.value);
        }
    }

    private static void parseAssetArray(JsonReader jsonReader, s1 s1Var) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            if (jsonReader.peek() == JsonToken.BEGIN_OBJECT) {
                parseAssetObject(jsonReader, s1Var);
            }
        }
        jsonReader.endArray();
    }

    private static void parseAssetObject(JsonReader jsonReader, s1 s1Var) throws IOException {
        jsonReader.beginObject();
        String strNextString = null;
        long jNextDouble = -9223372036854775807L;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if (strNextName.equals(ASSET_LIST_JSON_NAME_URI) && jsonReader.peek() == JsonToken.STRING) {
                strNextString = jsonReader.nextString();
            } else if (strNextName.equals(ASSET_LIST_JSON_NAME_DURATION) && jsonReader.peek() == JsonToken.NUMBER) {
                jNextDouble = (long) (jsonReader.nextDouble() * 1000000.0d);
            } else {
                jsonReader.skipValue();
            }
        }
        if (strNextString != null && jNextDouble != C.TIME_UNSET) {
            s1Var.a(new Asset(Uri.parse(strNextString), jNextDouble));
        }
        jsonReader.endObject();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.media3.exoplayer.upstream.ParsingLoadable.Parser
    public AssetList parse(Uri uri, InputStream inputStream) throws IOException {
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream));
        try {
            if (jsonReader.peek() != JsonToken.BEGIN_OBJECT) {
                AssetList assetList = AssetList.EMPTY;
                jsonReader.close();
                return assetList;
            }
            s1 s1Var = new s1(4);
            d0.d(4, "initialCapacity");
            Object[] objArrCopyOf = new Object[4];
            jsonReader.beginObject();
            int i6 = 0;
            while (jsonReader.hasNext()) {
                if (jsonReader.peek().equals(JsonToken.NAME)) {
                    String strNextName = jsonReader.nextName();
                    if (strNextName.equals(ASSET_LIST_JSON_NAME_ASSET_ARRAY) && jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
                        parseAssetArray(jsonReader, s1Var);
                    } else if (jsonReader.peek() == JsonToken.STRING) {
                        StringAttribute stringAttribute = new StringAttribute(strNextName, jsonReader.nextString());
                        int i10 = i6 + 1;
                        int iF = p1.f(objArrCopyOf.length, i10);
                        if (iF > objArrCopyOf.length) {
                            objArrCopyOf = Arrays.copyOf(objArrCopyOf, iF);
                        }
                        objArrCopyOf[i6] = stringAttribute;
                        i6 = i10;
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            AssetList assetList2 = new AssetList(s1Var.g(), u1.j(objArrCopyOf, i6));
            jsonReader.close();
            return assetList2;
        } catch (Throwable th) {
            try {
                jsonReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
