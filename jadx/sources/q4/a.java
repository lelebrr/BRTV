package q4;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.zzl;
import com.google.android.gms.common.Feature;
import com.google.android.gms.internal.cast.d0;
import com.google.android.gms.internal.cast.h4;
import com.google.android.gms.internal.cast.k2;
import com.google.android.gms.internal.cast.k6;
import com.google.android.gms.internal.cast.l2;
import com.google.android.gms.internal.cast.l6;
import com.google.android.gms.internal.cast.m1;
import com.google.android.gms.internal.cast.m2;
import com.google.android.gms.internal.cast.o6;
import com.google.android.gms.internal.cast.p0;
import com.google.android.gms.internal.cast.r0;
import com.google.android.gms.internal.cast.x0;
import com.google.android.gms.internal.cast.z0;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import org.bitspark.android.utils.CastOptionsProvider;
import q1.u0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: j, reason: collision with root package name */
    public static final v4.b f9200j = new v4.b("CastContext", null);

    /* renamed from: k, reason: collision with root package name */
    public static final Object f9201k = new Object();

    /* renamed from: l, reason: collision with root package name */
    public static volatile a f9202l;

    /* renamed from: a, reason: collision with root package name */
    public final Context f9203a;

    /* renamed from: b, reason: collision with root package name */
    public final f f9204b;

    /* renamed from: c, reason: collision with root package name */
    public final h f9205c;
    public final CastOptions d;

    /* renamed from: e, reason: collision with root package name */
    public final v4.r f9206e;
    public final com.google.android.gms.internal.cast.h f;

    /* renamed from: g, reason: collision with root package name */
    public final com.google.android.gms.internal.cast.r f9207g;

    /* renamed from: h, reason: collision with root package name */
    public final com.google.android.gms.internal.cast.x f9208h;

    /* renamed from: i, reason: collision with root package name */
    public final com.google.android.gms.internal.cast.j f9209i;

    public a(Context context, CastOptions castOptions, List list, com.google.android.gms.internal.cast.u uVar, v4.r rVar) throws n5.a, c {
        o oVar;
        p0 k2Var;
        final int i6 = 1;
        final int i10 = 0;
        this.f9203a = context;
        this.d = castOptions;
        this.f9206e = rVar;
        this.f9207g = new com.google.android.gms.internal.cast.r(context);
        this.f9208h = uVar.f4427h;
        v vVar = null;
        if (TextUtils.isEmpty(castOptions.f3790a)) {
            this.f9209i = null;
        } else {
            this.f9209i = new com.google.android.gms.internal.cast.j(context, castOptions, uVar);
        }
        HashMap map = new HashMap();
        com.google.android.gms.internal.cast.j jVar = this.f9209i;
        if (jVar != null) {
            map.put(jVar.f4257b, jVar.f4258c);
        }
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                com.google.android.gms.internal.cast.j jVar2 = (com.google.android.gms.internal.cast.j) it.next();
                b5.l.f(jVar2, "Additional SessionProvider must not be null.");
                String str = jVar2.f4257b;
                b5.l.d(str, "Category for SessionProvider must not be null or empty string.");
                boolean zContainsKey = map.containsKey(str);
                String strR = a.e.r("SessionProvider for category ", str, " already added");
                if (zContainsKey) {
                    throw new IllegalArgumentException(String.valueOf(strR));
                }
                map.put(str, jVar2.f4258c);
            }
        }
        castOptions.f3803p = new zzl(1);
        try {
            k kVarA = com.google.android.gms.internal.cast.i.a(context, castOptions, uVar, map);
            try {
                i iVar = (i) kVarA;
                Parcel parcelW = iVar.w(iVar.l(), 6);
                IBinder strongBinder = parcelW.readStrongBinder();
                if (strongBinder == null) {
                    oVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.cast.framework.IDiscoveryManager");
                    oVar = iInterfaceQueryLocalInterface instanceof o ? (o) iInterfaceQueryLocalInterface : new o(strongBinder, "com.google.android.gms.cast.framework.IDiscoveryManager", 0);
                }
                parcelW.recycle();
                this.f9205c = new h(oVar);
                try {
                    i iVar2 = (i) kVarA;
                    Parcel parcelW2 = iVar2.w(iVar2.l(), 5);
                    IBinder strongBinder2 = parcelW2.readStrongBinder();
                    if (strongBinder2 != null) {
                        IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.cast.framework.ISessionManager");
                        vVar = iInterfaceQueryLocalInterface2 instanceof v ? (v) iInterfaceQueryLocalInterface2 : new v(strongBinder2, "com.google.android.gms.cast.framework.ISessionManager", 0);
                    }
                    parcelW2.recycle();
                    f fVar = new f(vVar, context);
                    this.f9204b = fVar;
                    b5.l.d("PrecacheManager", "The log tag cannot be null or empty.");
                    com.google.android.gms.internal.cast.x xVar = this.f9208h;
                    if (xVar != null) {
                        xVar.f = fVar;
                        x0 x0Var = xVar.f4458c;
                        b5.l.e(x0Var);
                        x0Var.post(new com.google.android.gms.internal.cast.w(xVar, 1));
                    }
                    if (Build.VERSION.SDK_INT >= 23) {
                        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(3);
                        k2Var = new r0(context, executorServiceNewFixedThreadPool instanceof k6 ? (k6) executorServiceNewFixedThreadPool : executorServiceNewFixedThreadPool instanceof ScheduledExecutorService ? new o6((ScheduledExecutorService) executorServiceNewFixedThreadPool) : new l6(executorServiceNewFixedThreadPool));
                    } else {
                        k2Var = new k2(18);
                    }
                    b5.l.d("BaseNetUtils", "The log tag cannot be null or empty.");
                    k2Var.mo2a();
                    com.google.android.gms.internal.cast.h hVar = new com.google.android.gms.internal.cast.h();
                    this.f = hVar;
                    try {
                        i iVar3 = (i) kVarA;
                        Parcel parcelL = iVar3.l();
                        d0.d(parcelL, hVar);
                        iVar3.x(parcelL, 3);
                        hVar.f4170e.add(this.f9207g.f4392a);
                        if (!Collections.unmodifiableList(castOptions.f3799l).isEmpty()) {
                            v4.b bVar = f9200j;
                            Log.i(bVar.f10671a, bVar.d("Setting Route Discovery for appIds: ".concat(String.valueOf(Collections.unmodifiableList(this.d.f3799l))), new Object[0]));
                            com.google.android.gms.internal.cast.r rVar2 = this.f9207g;
                            List listUnmodifiableList = Collections.unmodifiableList(this.d.f3799l);
                            rVar2.getClass();
                            v4.b bVar2 = com.google.android.gms.internal.cast.r.f;
                            bVar2.b(ea.q.f(listUnmodifiableList.size(), "SetRouteDiscovery for ", " IDs"), new Object[0]);
                            LinkedHashSet<String> linkedHashSet = new LinkedHashSet();
                            Iterator it2 = listUnmodifiableList.iterator();
                            while (it2.hasNext()) {
                                linkedHashSet.add(z0.e((String) it2.next()));
                            }
                            Map map2 = rVar2.f4394c;
                            bVar2.b("resetting routes. appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(map2.keySet())), new Object[0]);
                            HashMap map3 = new HashMap();
                            synchronized (map2) {
                                try {
                                    for (String str2 : linkedHashSet) {
                                        com.google.android.gms.internal.cast.p pVar = (com.google.android.gms.internal.cast.p) map2.get(z0.e(str2));
                                        if (pVar != null) {
                                            map3.put(str2, pVar);
                                        }
                                    }
                                    map2.clear();
                                    map2.putAll(map3);
                                } finally {
                                }
                            }
                            bVar2.b("Routes reset. appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(map2.keySet())), new Object[0]);
                            LinkedHashSet linkedHashSet2 = rVar2.d;
                            synchronized (linkedHashSet2) {
                                linkedHashSet2.clear();
                                linkedHashSet2.addAll(linkedHashSet);
                            }
                            rVar2.o();
                        }
                        rVar.d(new String[]{"com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED", "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE", "com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE", "com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE", "com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED", "com.google.android.gms.cast.FLAG_CLIENT_ANALYTICS_ENABLED", "com.google.android.gms.cast.FLAG_ANALYTICS_CONSENT_TIMEOUT_SECONDS"}).b(new w5.c(this) { // from class: q4.y

                            /* renamed from: b, reason: collision with root package name */
                            public final /* synthetic */ a f9233b;

                            {
                                this.f9233b = this;
                            }

                            @Override // w5.c
                            public final void onSuccess(Object obj) {
                                Set setSingleton;
                                byte[] bytes;
                                l2 l2Var;
                                m2 m2VarB;
                                switch (i10) {
                                    case 0:
                                        a aVar = this.f9233b;
                                        Bundle bundle = (Bundle) obj;
                                        if (m1.f4314k) {
                                            Context context2 = aVar.f9203a;
                                            v4.r rVar3 = aVar.f9206e;
                                            m1 m1Var = new m1(context2, rVar3, aVar.f9204b, aVar.f9208h, aVar.f);
                                            int i11 = bundle.containsKey("com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE") ? bundle.getInt("com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE", 0) : (bundle.containsKey("com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED") && bundle.getBoolean("com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED", false)) ? 1 : 0;
                                            boolean z7 = bundle.getBoolean("com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED", false);
                                            boolean z10 = bundle.getBoolean("com.google.android.gms.cast.FLAG_CLIENT_ANALYTICS_ENABLED", false);
                                            m1.f4314k = z10;
                                            if (i11 == 0) {
                                                if (!z7 && !z10) {
                                                    return;
                                                } else {
                                                    i11 = 0;
                                                }
                                            }
                                            m1Var.f4320h = new com.google.android.gms.internal.cast.a0(context2, bundle.getLong("com.google.android.gms.cast.FLAG_ANALYTICS_CONSENT_TIMEOUT_SECONDS", 5L));
                                            String packageName = context2.getPackageName();
                                            Locale locale = Locale.ROOT;
                                            String strH = ea.q.h(packageName, ".client_cast_analytics_data");
                                            m1Var.f4321i = bundle.getLong("com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE") == 0 ? 1 : 2;
                                            a4.t.b(context2);
                                            a4.t tVarA = a4.t.a();
                                            y3.a aVar2 = y3.a.f11377e;
                                            tVarA.getClass();
                                            if (aVar2 instanceof a4.m) {
                                                aVar2.getClass();
                                                setSingleton = Collections.unmodifiableSet(y3.a.d);
                                            } else {
                                                setSingleton = Collections.singleton(new x3.b("proto"));
                                            }
                                            a1.b bVarA = a4.j.a();
                                            aVar2.getClass();
                                            bVarA.f47b = "cct";
                                            String str3 = aVar2.f11378a;
                                            String str4 = aVar2.f11379b;
                                            if (str4 == null && str3 == null) {
                                                bytes = null;
                                            } else {
                                                if (str4 == null) {
                                                    str4 = "";
                                                }
                                                bytes = ("1$" + str3 + "\\" + str4).getBytes(Charset.forName("UTF-8"));
                                            }
                                            bVarA.f48c = bytes;
                                            a4.j jVarH = bVarA.h();
                                            x3.b bVar3 = new x3.b("proto");
                                            k2 k2Var2 = new k2(19);
                                            if (!setSingleton.contains(bVar3)) {
                                                throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", bVar3, setSingleton));
                                            }
                                            m1Var.f4319g = new a1.b(jVarH, bVar3, k2Var2, tVarA);
                                            if (bundle.containsKey("com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE")) {
                                                m1Var.f4318e = Long.valueOf(bundle.getLong("com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE"));
                                            }
                                            SharedPreferences sharedPreferences = context2.getApplicationContext().getSharedPreferences(strH, 0);
                                            if (i11 != 0) {
                                                c6.c cVarC = c6.c.c();
                                                cVarC.f3394c = new v4.p(rVar3, new String[]{"com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_ERROR", "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_CHANGE_REASON"}, 0);
                                                cVarC.d = new Feature[]{p4.j.f8880c};
                                                cVarC.f3393b = false;
                                                cVarC.f3392a = 8426;
                                                rVar3.c(0, cVarC.b()).b(new androidx.appcompat.widget.z(m1Var, packageName, i11, sharedPreferences));
                                            }
                                            if (z7) {
                                                b5.l.e(sharedPreferences);
                                                v4.b bVar4 = l2.f4298i;
                                                synchronized (l2.class) {
                                                    try {
                                                        if (l2.f4300k == null) {
                                                            l2.f4300k = new l2(sharedPreferences, m1Var, packageName);
                                                        }
                                                        l2Var = l2.f4300k;
                                                    } catch (Throwable th) {
                                                        throw th;
                                                    }
                                                }
                                                HashSet hashSet = l2Var.f;
                                                SharedPreferences sharedPreferences2 = l2Var.f4302b;
                                                String string = sharedPreferences2.getString("feature_usage_sdk_version", null);
                                                String string2 = sharedPreferences2.getString("feature_usage_package_name", null);
                                                hashSet.clear();
                                                HashSet hashSet2 = l2Var.f4305g;
                                                hashSet2.clear();
                                                l2Var.f4306h = 0L;
                                                String str5 = l2.f4299j;
                                                boolean zEquals = str5.equals(string);
                                                String str6 = l2Var.f4303c;
                                                if (zEquals && str6.equals(string2)) {
                                                    l2Var.f4306h = sharedPreferences2.getLong("feature_usage_last_report_time", 0L);
                                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                                    HashSet hashSet3 = new HashSet();
                                                    for (String str7 : sharedPreferences2.getAll().keySet()) {
                                                        if (str7.startsWith("feature_usage_timestamp_")) {
                                                            long j10 = sharedPreferences2.getLong(str7, 0L);
                                                            if (j10 != 0 && jCurrentTimeMillis - j10 > 1209600000) {
                                                                hashSet3.add(str7);
                                                            } else if (str7.startsWith("feature_usage_timestamp_reported_feature_")) {
                                                                m2 m2VarB2 = l2.b(str7.substring(41));
                                                                if (m2VarB2 != null) {
                                                                    hashSet2.add(m2VarB2);
                                                                    hashSet.add(m2VarB2);
                                                                }
                                                            } else if (str7.startsWith("feature_usage_timestamp_detected_feature_") && (m2VarB = l2.b(str7.substring(41))) != null) {
                                                                hashSet.add(m2VarB);
                                                            }
                                                        }
                                                    }
                                                    l2Var.c(hashSet3);
                                                    b5.l.e(l2Var.f4304e);
                                                    b5.l.e(l2Var.d);
                                                    l2Var.f4304e.post(l2Var.d);
                                                } else {
                                                    HashSet hashSet4 = new HashSet();
                                                    for (String str8 : sharedPreferences2.getAll().keySet()) {
                                                        if (str8.startsWith("feature_usage_timestamp_")) {
                                                            hashSet4.add(str8);
                                                        }
                                                    }
                                                    hashSet4.add("feature_usage_last_report_time");
                                                    l2Var.c(hashSet4);
                                                    sharedPreferences2.edit().putString("feature_usage_sdk_version", str5).putString("feature_usage_package_name", str6).apply();
                                                }
                                                l2.a(m2.CAST_CONTEXT);
                                            }
                                            if (m1.f4314k) {
                                                h4.a();
                                                return;
                                            }
                                            return;
                                        }
                                        return;
                                    default:
                                        z0.g("com.google.android.gms.cast.MAP_CAST_STATUS_CODES_TO_CAST_REASON_CODES", (Bundle) obj);
                                        this.f9233b.getClass();
                                        return;
                                }
                            }
                        });
                        c6.c cVarC = c6.c.c();
                        cVarC.f3394c = new v4.p(rVar, new String[]{"com.google.android.gms.cast.MAP_CAST_STATUS_CODES_TO_CAST_REASON_CODES"}, 2);
                        cVarC.d = new Feature[]{p4.j.d};
                        cVarC.f3393b = false;
                        cVarC.f3392a = 8427;
                        rVar.c(0, cVarC.b()).b(new w5.c(this) { // from class: q4.y

                            /* renamed from: b, reason: collision with root package name */
                            public final /* synthetic */ a f9233b;

                            {
                                this.f9233b = this;
                            }

                            @Override // w5.c
                            public final void onSuccess(Object obj) {
                                Set setSingleton;
                                byte[] bytes;
                                l2 l2Var;
                                m2 m2VarB;
                                switch (i6) {
                                    case 0:
                                        a aVar = this.f9233b;
                                        Bundle bundle = (Bundle) obj;
                                        if (m1.f4314k) {
                                            Context context2 = aVar.f9203a;
                                            v4.r rVar3 = aVar.f9206e;
                                            m1 m1Var = new m1(context2, rVar3, aVar.f9204b, aVar.f9208h, aVar.f);
                                            int i11 = bundle.containsKey("com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE") ? bundle.getInt("com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE", 0) : (bundle.containsKey("com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED") && bundle.getBoolean("com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED", false)) ? 1 : 0;
                                            boolean z7 = bundle.getBoolean("com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED", false);
                                            boolean z10 = bundle.getBoolean("com.google.android.gms.cast.FLAG_CLIENT_ANALYTICS_ENABLED", false);
                                            m1.f4314k = z10;
                                            if (i11 == 0) {
                                                if (!z7 && !z10) {
                                                    return;
                                                } else {
                                                    i11 = 0;
                                                }
                                            }
                                            m1Var.f4320h = new com.google.android.gms.internal.cast.a0(context2, bundle.getLong("com.google.android.gms.cast.FLAG_ANALYTICS_CONSENT_TIMEOUT_SECONDS", 5L));
                                            String packageName = context2.getPackageName();
                                            Locale locale = Locale.ROOT;
                                            String strH = ea.q.h(packageName, ".client_cast_analytics_data");
                                            m1Var.f4321i = bundle.getLong("com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE") == 0 ? 1 : 2;
                                            a4.t.b(context2);
                                            a4.t tVarA = a4.t.a();
                                            y3.a aVar2 = y3.a.f11377e;
                                            tVarA.getClass();
                                            if (aVar2 instanceof a4.m) {
                                                aVar2.getClass();
                                                setSingleton = Collections.unmodifiableSet(y3.a.d);
                                            } else {
                                                setSingleton = Collections.singleton(new x3.b("proto"));
                                            }
                                            a1.b bVarA = a4.j.a();
                                            aVar2.getClass();
                                            bVarA.f47b = "cct";
                                            String str3 = aVar2.f11378a;
                                            String str4 = aVar2.f11379b;
                                            if (str4 == null && str3 == null) {
                                                bytes = null;
                                            } else {
                                                if (str4 == null) {
                                                    str4 = "";
                                                }
                                                bytes = ("1$" + str3 + "\\" + str4).getBytes(Charset.forName("UTF-8"));
                                            }
                                            bVarA.f48c = bytes;
                                            a4.j jVarH = bVarA.h();
                                            x3.b bVar3 = new x3.b("proto");
                                            k2 k2Var2 = new k2(19);
                                            if (!setSingleton.contains(bVar3)) {
                                                throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", bVar3, setSingleton));
                                            }
                                            m1Var.f4319g = new a1.b(jVarH, bVar3, k2Var2, tVarA);
                                            if (bundle.containsKey("com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE")) {
                                                m1Var.f4318e = Long.valueOf(bundle.getLong("com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE"));
                                            }
                                            SharedPreferences sharedPreferences = context2.getApplicationContext().getSharedPreferences(strH, 0);
                                            if (i11 != 0) {
                                                c6.c cVarC2 = c6.c.c();
                                                cVarC2.f3394c = new v4.p(rVar3, new String[]{"com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_ERROR", "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_CHANGE_REASON"}, 0);
                                                cVarC2.d = new Feature[]{p4.j.f8880c};
                                                cVarC2.f3393b = false;
                                                cVarC2.f3392a = 8426;
                                                rVar3.c(0, cVarC2.b()).b(new androidx.appcompat.widget.z(m1Var, packageName, i11, sharedPreferences));
                                            }
                                            if (z7) {
                                                b5.l.e(sharedPreferences);
                                                v4.b bVar4 = l2.f4298i;
                                                synchronized (l2.class) {
                                                    try {
                                                        if (l2.f4300k == null) {
                                                            l2.f4300k = new l2(sharedPreferences, m1Var, packageName);
                                                        }
                                                        l2Var = l2.f4300k;
                                                    } catch (Throwable th) {
                                                        throw th;
                                                    }
                                                }
                                                HashSet hashSet = l2Var.f;
                                                SharedPreferences sharedPreferences2 = l2Var.f4302b;
                                                String string = sharedPreferences2.getString("feature_usage_sdk_version", null);
                                                String string2 = sharedPreferences2.getString("feature_usage_package_name", null);
                                                hashSet.clear();
                                                HashSet hashSet2 = l2Var.f4305g;
                                                hashSet2.clear();
                                                l2Var.f4306h = 0L;
                                                String str5 = l2.f4299j;
                                                boolean zEquals = str5.equals(string);
                                                String str6 = l2Var.f4303c;
                                                if (zEquals && str6.equals(string2)) {
                                                    l2Var.f4306h = sharedPreferences2.getLong("feature_usage_last_report_time", 0L);
                                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                                    HashSet hashSet3 = new HashSet();
                                                    for (String str7 : sharedPreferences2.getAll().keySet()) {
                                                        if (str7.startsWith("feature_usage_timestamp_")) {
                                                            long j10 = sharedPreferences2.getLong(str7, 0L);
                                                            if (j10 != 0 && jCurrentTimeMillis - j10 > 1209600000) {
                                                                hashSet3.add(str7);
                                                            } else if (str7.startsWith("feature_usage_timestamp_reported_feature_")) {
                                                                m2 m2VarB2 = l2.b(str7.substring(41));
                                                                if (m2VarB2 != null) {
                                                                    hashSet2.add(m2VarB2);
                                                                    hashSet.add(m2VarB2);
                                                                }
                                                            } else if (str7.startsWith("feature_usage_timestamp_detected_feature_") && (m2VarB = l2.b(str7.substring(41))) != null) {
                                                                hashSet.add(m2VarB);
                                                            }
                                                        }
                                                    }
                                                    l2Var.c(hashSet3);
                                                    b5.l.e(l2Var.f4304e);
                                                    b5.l.e(l2Var.d);
                                                    l2Var.f4304e.post(l2Var.d);
                                                } else {
                                                    HashSet hashSet4 = new HashSet();
                                                    for (String str8 : sharedPreferences2.getAll().keySet()) {
                                                        if (str8.startsWith("feature_usage_timestamp_")) {
                                                            hashSet4.add(str8);
                                                        }
                                                    }
                                                    hashSet4.add("feature_usage_last_report_time");
                                                    l2Var.c(hashSet4);
                                                    sharedPreferences2.edit().putString("feature_usage_sdk_version", str5).putString("feature_usage_package_name", str6).apply();
                                                }
                                                l2.a(m2.CAST_CONTEXT);
                                            }
                                            if (m1.f4314k) {
                                                h4.a();
                                                return;
                                            }
                                            return;
                                        }
                                        return;
                                    default:
                                        z0.g("com.google.android.gms.cast.MAP_CAST_STATUS_CODES_TO_CAST_REASON_CODES", (Bundle) obj);
                                        this.f9233b.getClass();
                                        return;
                                }
                            }
                        });
                    } catch (RemoteException e5) {
                        throw new IllegalStateException("Failed to call addAppVisibilityListener", e5);
                    }
                } catch (RemoteException e10) {
                    throw new IllegalStateException("Failed to call getSessionManagerImpl", e10);
                }
            } catch (RemoteException e11) {
                throw new IllegalStateException("Failed to call getDiscoveryManagerImpl", e11);
            }
        } catch (RemoteException e12) {
            throw new IllegalStateException("Failed to call newCastContextImpl", e12);
        }
    }

    public static a b(Context context) {
        b5.l.b("Must be called from the main thread.");
        if (f9202l == null) {
            synchronized (f9201k) {
                if (f9202l == null) {
                    Context applicationContext = context.getApplicationContext();
                    CastOptionsProvider castOptionsProviderD = d(applicationContext);
                    CastOptions castOptions = castOptionsProviderD.getCastOptions(applicationContext);
                    v4.r rVar = new v4.r(applicationContext, v4.r.f10710j, y4.b.f11391a0, y4.f.f11393c);
                    try {
                        f9202l = new a(applicationContext, castOptions, castOptionsProviderD.getAdditionalSessionProviders(applicationContext), new com.google.android.gms.internal.cast.u(applicationContext, u0.d(applicationContext), castOptions, rVar), rVar);
                    } catch (c e5) {
                        throw new RuntimeException(e5);
                    }
                }
            }
        }
        return f9202l;
    }

    public static a c(Activity activity) {
        b5.l.b("Must be called from the main thread.");
        try {
            return b(activity);
        } catch (RuntimeException e5) {
            Object[] objArr = {e5};
            v4.b bVar = f9200j;
            Log.e(bVar.f10671a, bVar.d("Failed to load module from Google Play services. Cast will not work properly. Might due to outdated Google Play services. Ignoring this failure silently.", objArr));
            return null;
        }
    }

    public static CastOptionsProvider d(Context context) {
        try {
            a4.k kVarA = l5.b.a(context);
            Bundle bundle = kVarA.f133b.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle == null) {
                f9200j.c(new Object[0]);
            }
            String string = bundle.getString("com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME");
            if (string != null) {
                return (CastOptionsProvider) Class.forName(string).asSubclass(CastOptionsProvider.class).getDeclaredConstructor(null).newInstance(null);
            }
            throw new IllegalStateException("The fully qualified name of the implementation of OptionsProvider must be provided as a metadata in the AndroidManifest.xml with key com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME.");
        } catch (PackageManager.NameNotFoundException e5) {
            e = e5;
            throw new IllegalStateException("Failed to initialize CastContext.", e);
        } catch (ClassNotFoundException e10) {
            e = e10;
            throw new IllegalStateException("Failed to initialize CastContext.", e);
        } catch (IllegalAccessException e11) {
            e = e11;
            throw new IllegalStateException("Failed to initialize CastContext.", e);
        } catch (InstantiationException e12) {
            e = e12;
            throw new IllegalStateException("Failed to initialize CastContext.", e);
        } catch (NoSuchMethodException e13) {
            e = e13;
            throw new IllegalStateException("Failed to initialize CastContext.", e);
        } catch (NullPointerException e14) {
            e = e14;
            throw new IllegalStateException("Failed to initialize CastContext.", e);
        } catch (InvocationTargetException e15) {
            e = e15;
            throw new IllegalStateException("Failed to initialize CastContext.", e);
        }
    }

    public final f a() {
        b5.l.b("Must be called from the main thread.");
        return this.f9204b;
    }
}
