package u6;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.LocaleList;
import android.os.Parcel;
import androidx.cardview.widget.CardView;
import androidx.lifecycle.v0;
import androidx.lifecycle.y0;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.ComplianceOptions;
import com.google.android.gms.internal.cast.d0;
import com.tencent.mars.xlog.Log;
import e3.e0;
import ea.q0;
import ea.r0;
import ea.s0;
import ea.t0;
import ea.u0;
import io.binstream.libtvcar.Listener;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.concurrent.Executors;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class e implements d4.b, e0, sa.a, Listener, y0, k3.m, k4.a, na.b, n7.m, l8.a, z4.k {

    /* renamed from: b, reason: collision with root package name */
    public static e f10347b;

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10348a;

    public /* synthetic */ e(int i6) {
        this.f10348a = i6;
    }

    public static void j(Context context, Locale locale) {
        Locale.setDefault(locale);
        Resources resources = context.getResources();
        j9.i.b(resources, "res");
        Configuration configuration = resources.getConfiguration();
        j9.i.b(configuration, "res.configuration");
        if (com.bumptech.glide.d.q(configuration).equals(locale)) {
            return;
        }
        Configuration configuration2 = new Configuration(resources.getConfiguration());
        if (Build.VERSION.SDK_INT >= 24) {
            Locale[] localeArr = {locale};
            LinkedHashSet linkedHashSet = new LinkedHashSet(x8.u.p(1));
            linkedHashSet.add(localeArr[0]);
            LocaleList localeList = LocaleList.getDefault();
            j9.i.b(localeList, "LocaleList.getDefault()");
            int size = localeList.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i6 = 0; i6 < size; i6++) {
                Locale locale2 = localeList.get(i6);
                j9.i.b(locale2, "defaultLocales[it]");
                arrayList.add(locale2);
            }
            linkedHashSet.addAll(arrayList);
            Object[] array = linkedHashSet.toArray(new Locale[0]);
            if (array == null) {
                throw new w8.j("null cannot be cast to non-null type kotlin.Array<T>");
            }
            Locale[] localeArr2 = (Locale[]) array;
            configuration2.setLocales(com.alibaba.fastjson.parser.deserializer.d.i((Locale[]) Arrays.copyOf(localeArr2, localeArr2.length)));
        } else {
            configuration2.setLocale(locale);
        }
        resources.updateConfiguration(configuration2, resources.getDisplayMetrics());
    }

    @Override // androidx.lifecycle.y0
    public v0 a(Class cls) {
        return new k1.b();
    }

    @Override // androidx.lifecycle.y0
    public v0 b(Class cls, j1.b bVar) {
        return a(cls);
    }

    @Override // k4.a
    public long c() {
        return System.currentTimeMillis();
    }

    public boolean d() {
        return this instanceof f;
    }

    @Override // e3.e0
    public void e(MediaMetadataRetriever mediaMetadataRetriever, Object obj) throws IllegalArgumentException {
        AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) obj;
        mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
    }

    @Override // e3.e0
    public void f(MediaExtractor mediaExtractor, Object obj) throws IOException {
        AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) obj;
        mediaExtractor.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
    }

    public void g(float f, float f3, float f4, w wVar) {
        wVar.d(f, 0.0f);
    }

    @Override // v8.a
    public Object get() {
        return new a4.r(0, Executors.newSingleThreadExecutor());
    }

    public boolean h(CharSequence charSequence) {
        return false;
    }

    public void i(l6.h hVar, float f) {
        o.a aVar = (o.a) ((Drawable) hVar.f8016b);
        CardView cardView = (CardView) hVar.f8017c;
        boolean useCompatPadding = cardView.getUseCompatPadding();
        boolean preventCornerOverlap = cardView.getPreventCornerOverlap();
        if (f != aVar.f8511e || aVar.f != useCompatPadding || aVar.f8512g != preventCornerOverlap) {
            aVar.f8511e = f;
            aVar.f = useCompatPadding;
            aVar.f8512g = preventCornerOverlap;
            aVar.b(null);
            aVar.invalidateSelf();
        }
        if (!cardView.getUseCompatPadding()) {
            hVar.s(0, 0, 0, 0);
            return;
        }
        o.a aVar2 = (o.a) ((Drawable) hVar.f8016b);
        float f3 = aVar2.f8511e;
        float f4 = aVar2.f8508a;
        int iCeil = (int) Math.ceil(o.b.a(f3, f4, cardView.getPreventCornerOverlap()));
        int iCeil2 = (int) Math.ceil(o.b.b(f3, f4, cardView.getPreventCornerOverlap()));
        hVar.s(iCeil, iCeil2, iCeil, iCeil2);
    }

    @Override // n7.m
    public Object o() {
        switch (this.f10348a) {
            case 22:
                return new ConcurrentHashMap();
            case 23:
                return new LinkedHashMap();
            case 24:
                return new TreeSet();
            case 25:
                return new ArrayDeque();
            default:
                return new ConcurrentSkipListMap();
        }
    }

    @Override // io.binstream.libtvcar.Listener
    public void onInfo(String str) {
        JSONObject jSONObject;
        String strS = a2.a.s("YPRQdL9vuoNCy3Bw\n", "NKITFc083/E=\n");
        String strK = ea.q.k("lPDTD8aluw==\n", "+56aYaDKgfA=\n", new StringBuilder(), str);
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strK);
        ua.e eVarB = ua.e.b();
        q0 q0Var = new q0();
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException e5) {
            String strS2 = a2.a.s("AH005iUzaXMiQhTi\n", "VCt3h1dgDAE=\n");
            String str2 = a2.a.s("Pt4cvYM73eUZxCG+ngDR9Q/sKL3L\n", "fI1P2PFNtIY=\n") + e5;
            boolean z10 = org.bitspark.android.utils.m.f8784b;
            Log.i(strS2, str2);
            jSONObject = null;
        }
        if (jSONObject != null) {
            q0Var.f6726a = jSONObject.optInt(a2.a.s("9M6hWGvSPcrP07dCYg==\n", "kKHWNge9XK4=\n"));
            jSONObject.optInt(a2.a.s("3Lie7eG2Ph3IvJc=\n", "qcjygoDSYW8=\n"));
            jSONObject.optInt(a2.a.s("OpJrdUR7hZ0BiXNvSXg=\n", "Xv0cGygU5Pk=\n"));
            jSONObject.optInt(a2.a.s("rzDA1PunN7e1NM3X\n", "2kCsu5rDaMM=\n"));
        }
        eVarB.e(q0Var);
    }

    @Override // io.binstream.libtvcar.Listener
    public void onInited(String str) {
        JSONObject jSONObject;
        String strS = a2.a.s("bLc9wvYqcBtOiB3G\n", "OOF+o4R5FWk=\n");
        String strK = ea.q.k("i/h+xaL277Te\n", "5JY3q8uCitA=\n", new StringBuilder(), str);
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strK);
        ua.e eVarB = ua.e.b();
        r0 r0Var = new r0();
        r0Var.f6728a = -1000;
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException e5) {
            String strS2 = a2.a.s("OwEjMxYT9G4ZPgM3\n", "b1dgUmRAkRw=\n");
            String str2 = a2.a.s("fI66HvjpwIhblIcS/vrNpluumhrt+pM=\n", "Pt3pe4qfqes=\n") + e5;
            boolean z10 = org.bitspark.android.utils.m.f8784b;
            Log.i(strS2, str2);
            jSONObject = null;
        }
        if (jSONObject != null) {
            r0Var.f6728a = jSONObject.optInt(a2.a.s("+caVGMg=\n", "nLTndqdJvz4=\n"), -1000);
        }
        eVarB.e(r0Var);
    }

    @Override // io.binstream.libtvcar.Listener
    public void onPrepared(String str) {
        JSONObject jSONObject;
        String strS = a2.a.s("Oq2X3v8C/ycYkrfa\n", "bvvUv41RmlU=\n");
        String strK = ea.q.k("Fc9yxbMlC1sfxRg=\n", "eqEit9ZVaik=\n", new StringBuilder(), str);
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strK);
        ua.e eVarB = ua.e.b();
        ea.v0 v0Var = new ea.v0();
        v0Var.f6742a = -1300;
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException e5) {
            String strS2 = a2.a.s("SQtrH0L3Jd9rNEsb\n", "HV0ofjCkQK0=\n");
            String str2 = a2.a.s("7YCeeWcpUALJt699cTRHFMq3un0v\n", "udbdGBV5Imc=\n") + e5;
            boolean z10 = org.bitspark.android.utils.m.f8784b;
            Log.i(strS2, str2);
            jSONObject = null;
        }
        if (jSONObject != null) {
            int iOptInt = jSONObject.optInt(a2.a.s("rLvUXHs=\n", "ycmmMhQ6+Pg=\n"), -1300);
            v0Var.f6742a = iOptInt;
            if (iOptInt == 0) {
                v0Var.f6743b = jSONObject.optString(a2.a.s("1wz0\n", "on6Y4XAyBfE=\n"), a2.a.s("avsI8w==\n", "BI5knzd0ulA=\n"));
            }
        }
        eVarB.e(v0Var);
    }

    @Override // io.binstream.libtvcar.Listener
    public void onQuit(String str) {
        JSONObject jSONObject;
        String strS = a2.a.s("vkj+B5i35Qqcd94D\n", "6h69ZurkgHg=\n");
        String strK = ea.q.k("OdKfmLMPDg==\n", "VrzO7dp7NLQ=\n", new StringBuilder(), str);
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strK);
        ua.e eVarB = ua.e.b();
        s0 s0Var = new s0();
        s0Var.f6732a = -1500;
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException e5) {
            String strS2 = a2.a.s("KperkJBeTJwIqIuU\n", "fsHo8eINKe4=\n");
            String str2 = a2.a.s("+wA6h3UYgubcAhyLcyOO9soyDoc9\n", "uVNp4gdu64U=\n") + e5;
            boolean z10 = org.bitspark.android.utils.m.f8784b;
            Log.i(strS2, str2);
            jSONObject = null;
        }
        if (jSONObject != null) {
            s0Var.f6732a = jSONObject.optInt(a2.a.s("KnE0tR0=\n", "TwNG23LuZWs=\n"), -1500);
        }
        eVarB.e(s0Var);
    }

    @Override // io.binstream.libtvcar.Listener
    public void onStart(String str) {
        JSONObject jSONObject;
        String strS = a2.a.s("1LCJynY72332j6nO\n", "gObKqwRovg8=\n");
        String strK = ea.q.k("pI6eV2GgieY=\n", "y+DNIwDS/dw=\n", new StringBuilder(), str);
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strK);
        ua.e eVarB = ua.e.b();
        t0 t0Var = new t0();
        t0Var.f6735a = -1100;
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException e5) {
            String strS2 = a2.a.s("/AaIk9bjLe/eOaiX\n", "qFDL8qSwSJ0=\n");
            String str2 = a2.a.s("PC6vPMZzzNobLog4xnHo3A0OnT7RPw==\n", "fn38WbQFpbk=\n") + e5;
            boolean z10 = org.bitspark.android.utils.m.f8784b;
            Log.i(strS2, str2);
            jSONObject = null;
        }
        if (jSONObject != null) {
            int iOptInt = jSONObject.optInt(a2.a.s("Rd7EJ9Q=\n", "IKy2Sbs0gBM=\n"), -1100);
            t0Var.f6735a = iOptInt;
            if (iOptInt == 0) {
                t0Var.f6736b = jSONObject.optString(a2.a.s("8zjO\n", "hkqi0NRN754=\n"), a2.a.s("P74fGg==\n", "Uctzdj/R9QQ=\n"));
            }
        }
        eVarB.e(t0Var);
    }

    @Override // io.binstream.libtvcar.Listener
    public void onStop(String str) {
        JSONObject jSONObject;
        String strS = a2.a.s("be/Ck+ZFhdhP0OKX\n", "ObmB8pQW4Ko=\n");
        String strK = ea.q.k("b5neaGGtRA==\n", "APeNHA7dfjI=\n", new StringBuilder(), str);
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strK);
        ua.e eVarB = ua.e.b();
        u0 u0Var = new u0();
        u0Var.f6738a = -1200;
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException e5) {
            String strS2 = a2.a.s("z9cxFk+N/BDt6BES\n", "m4Fydz3emWI=\n");
            String str2 = a2.a.s("uLgr+0JoVymfuAzxQFNbOYmKH/sK\n", "+ut4njAePko=\n") + e5;
            boolean z10 = org.bitspark.android.utils.m.f8784b;
            Log.i(strS2, str2);
            jSONObject = null;
        }
        if (jSONObject != null) {
            int iOptInt = jSONObject.optInt(a2.a.s("lvvDTCU=\n", "84mxIkoF6To=\n"), -1200);
            u0Var.f6738a = iOptInt;
            if (iOptInt == 0) {
                u0Var.f6739b = jSONObject.optString(a2.a.s("m0ix\n", "7jrd/1j8f3A=\n"), a2.a.s("9zD8fQ==\n", "mUWQETe1g2A=\n"));
            }
        }
        eVarB.e(u0Var);
    }

    @Override // z4.k
    public void r(Object obj, Object obj2) {
        v4.w wVar = (v4.w) obj;
        v4.b bVar = p4.o.F;
        Context context = wVar.f3991c;
        ComplianceOptions complianceOptions = new ComplianceOptions(-1, -1, 0, true);
        v4.d dVar = (v4.d) wVar.p();
        ApiMetadata apiMetadata = new ApiMetadata(complianceOptions);
        Parcel parcelL = dVar.l();
        d0.c(parcelL, apiMetadata);
        dVar.y(parcelL, 1);
        ((w5.d) obj2).b(null);
    }

    public String toString() {
        switch (this.f10348a) {
            case 27:
                return "EmptyConsumer";
            default:
                return super.toString();
        }
    }

    public e(int[] iArr, ValueAnimator valueAnimator) {
        this.f10348a = 7;
    }

    @Override // l8.a
    public void accept(Object obj) {
    }
}
