package d7;

import java.util.Comparator;
import java.util.SortedSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class r extends m implements SortedSet {
    public final /* synthetic */ s4 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(s4 s4Var, Object obj, SortedSet sortedSet, m mVar) {
        super(s4Var, obj, sortedSet, mVar);
        this.f = s4Var;
    }

    @Override // java.util.SortedSet
    public final Comparator comparator() {
        return f().comparator();
    }

    public SortedSet f() {
        return (SortedSet) this.f6214b;
    }

    @Override // java.util.SortedSet
    public final Object first() {
        d();
        return f().first();
    }

    @Override // java.util.SortedSet
    public final SortedSet headSet(Object obj) {
        d();
        SortedSet sortedSetHeadSet = f().headSet(obj);
        m mVar = this.f6215c;
        if (mVar == null) {
            mVar = this;
        }
        return new r(this.f, this.f6213a, sortedSetHeadSet, mVar);
    }

    @Override // java.util.SortedSet
    public final Object last() {
        d();
        return f().last();
    }

    @Override // java.util.SortedSet
    public final SortedSet subSet(Object obj, Object obj2) {
        d();
        SortedSet sortedSetSubSet = f().subSet(obj, obj2);
        m mVar = this.f6215c;
        if (mVar == null) {
            mVar = this;
        }
        return new r(this.f, this.f6213a, sortedSetSubSet, mVar);
    }

    @Override // java.util.SortedSet
    public final SortedSet tailSet(Object obj) {
        d();
        SortedSet sortedSetTailSet = f().tailSet(obj);
        m mVar = this.f6215c;
        if (mVar == null) {
            mVar = this;
        }
        return new r(this.f, this.f6213a, sortedSetTailSet, mVar);
    }
}
