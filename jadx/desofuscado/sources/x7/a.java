package x7;

import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a extends LinkedHashMap {

    /* renamed from: a, reason: collision with root package name */
    public int f11088a;

    @Override // java.util.LinkedHashMap
    public final boolean removeEldestEntry(Map.Entry entry) {
        return size() > this.f11088a;
    }
}
