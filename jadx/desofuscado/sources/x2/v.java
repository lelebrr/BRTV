package x2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public final s.g f10965a;

    /* renamed from: b, reason: collision with root package name */
    public final List f10966b;

    /* renamed from: c, reason: collision with root package name */
    public final String f10967c;

    public v(Class cls, Class cls2, Class cls3, List list, s.g gVar) {
        this.f10965a = gVar;
        if (list.isEmpty()) {
            throw new IllegalArgumentException("Must not be empty.");
        }
        this.f10966b = list;
        this.f10967c = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public final x a(int i6, int i10, c6.b bVar, com.bumptech.glide.load.data.g gVar, v2.h hVar) {
        s.g gVar2 = this.f10965a;
        List list = (List) gVar2.f();
        try {
            List list2 = this.f10966b;
            int size = list2.size();
            x xVarA = null;
            for (int i11 = 0; i11 < size; i11++) {
                try {
                    xVarA = ((j) list2.get(i11)).a(i6, i10, bVar, gVar, hVar);
                } catch (t e5) {
                    list.add(e5);
                }
                if (xVarA != null) {
                    break;
                }
            }
            if (xVarA != null) {
                return xVarA;
            }
            throw new t(this.f10967c, new ArrayList(list));
        } finally {
            gVar2.k(list);
        }
    }

    public final String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.f10966b.toArray()) + '}';
    }
}
