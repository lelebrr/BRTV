package d7;

import java.util.Comparator;
import java.util.Map;
import java.util.SortedMap;
import java.util.SortedSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class l extends g implements SortedSet {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ s f6205e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(s sVar, SortedMap sortedMap) {
        super(sVar, sortedMap);
        this.f6205e = sVar;
    }

    public SortedMap c() {
        return (SortedMap) ((Map) this.f6291b);
    }

    @Override // java.util.SortedSet
    public final Comparator comparator() {
        return c().comparator();
    }

    @Override // java.util.SortedSet
    public final Object first() {
        return c().firstKey();
    }

    public SortedSet headSet(Object obj) {
        return new l(this.f6205e, c().headMap(obj));
    }

    @Override // java.util.SortedSet
    public final Object last() {
        return c().lastKey();
    }

    public SortedSet subSet(Object obj, Object obj2) {
        return new l(this.f6205e, c().subMap(obj, obj2));
    }

    public SortedSet tailSet(Object obj) {
        return new l(this.f6205e, c().tailMap(obj));
    }
}
