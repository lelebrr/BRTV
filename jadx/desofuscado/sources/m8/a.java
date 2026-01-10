package m8;

import com.bumptech.glide.d;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements j8.b {

    /* renamed from: a, reason: collision with root package name */
    public static final a f8273a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ a[] f8274b;

    static {
        a aVar = new a("DISPOSED", 0);
        f8273a = aVar;
        f8274b = new a[]{aVar};
    }

    public static void b(AtomicReference atomicReference) {
        j8.b bVar;
        j8.b bVar2 = (j8.b) atomicReference.get();
        a aVar = f8273a;
        if (bVar2 == aVar || (bVar = (j8.b) atomicReference.getAndSet(aVar)) == aVar || bVar == null) {
            return;
        }
        bVar.a();
    }

    public static boolean c(AtomicReference atomicReference, j8.b bVar) {
        Objects.requireNonNull(bVar, "d is null");
        while (!atomicReference.compareAndSet(null, bVar)) {
            if (atomicReference.get() != null) {
                bVar.a();
                if (atomicReference.get() == f8273a) {
                    return false;
                }
                d.y(new k8.d("Disposable already set!"));
                return false;
            }
        }
        return true;
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) f8274b.clone();
    }

    @Override // j8.b
    public final void a() {
    }
}
