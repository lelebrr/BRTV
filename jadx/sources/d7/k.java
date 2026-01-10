package d7;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class k extends f implements SortedMap {
    public SortedSet f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ s f6189g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(s sVar, SortedMap sortedMap) {
        super(sVar, sortedMap);
        this.f6189g = sVar;
    }

    @Override // java.util.SortedMap
    public final Comparator comparator() {
        return g().comparator();
    }

    @Override // d7.o4
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public SortedSet b() {
        return new l(this.f6189g, g());
    }

    @Override // d7.f, d7.o4, java.util.AbstractMap, java.util.Map
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public SortedSet keySet() {
        SortedSet sortedSet = this.f;
        if (sortedSet != null) {
            return sortedSet;
        }
        SortedSet sortedSetB = b();
        this.f = sortedSetB;
        return sortedSetB;
    }

    @Override // java.util.SortedMap
    public final Object firstKey() {
        return g().firstKey();
    }

    public SortedMap g() {
        return (SortedMap) this.d;
    }

    public SortedMap headMap(Object obj) {
        return new k(this.f6189g, g().headMap(obj));
    }

    @Override // java.util.SortedMap
    public final Object lastKey() {
        return g().lastKey();
    }

    public SortedMap subMap(Object obj, Object obj2) {
        return new k(this.f6189g, g().subMap(obj, obj2));
    }

    public SortedMap tailMap(Object obj) {
        return new k(this.f6189g, g().tailMap(obj));
    }
}
