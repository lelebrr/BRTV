package j9;

import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class a implements Iterator, k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7459a;

    /* renamed from: b, reason: collision with root package name */
    public int f7460b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f7461c;

    public /* synthetic */ a(int i6, Object obj) {
        this.f7459a = i6;
        this.f7461c = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        Iterator it;
        switch (this.f7459a) {
            case 0:
                return this.f7460b < ((Object[]) this.f7461c).length;
            case 1:
                return this.f7460b < ((ViewGroup) this.f7461c).getChildCount();
            case 2:
                break;
            default:
                return this.f7460b < ((x8.e) this.f7461c).size();
        }
        while (true) {
            int i6 = this.f7460b;
            it = (Iterator) this.f7461c;
            if (i6 > 0 && it.hasNext()) {
                it.next();
                this.f7460b--;
            }
        }
        return it.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Iterator it;
        switch (this.f7459a) {
            case 0:
                try {
                    Object[] objArr = (Object[]) this.f7461c;
                    int i6 = this.f7460b;
                    this.f7460b = i6 + 1;
                    return objArr[i6];
                } catch (ArrayIndexOutOfBoundsException e5) {
                    this.f7460b--;
                    throw new NoSuchElementException(e5.getMessage());
                }
            case 1:
                int i10 = this.f7460b;
                this.f7460b = i10 + 1;
                View childAt = ((ViewGroup) this.f7461c).getChildAt(i10);
                if (childAt != null) {
                    return childAt;
                }
                throw new IndexOutOfBoundsException();
            case 2:
                break;
            default:
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                int i11 = this.f7460b;
                this.f7460b = i11 + 1;
                return ((x8.e) this.f7461c).get(i11);
        }
        while (true) {
            int i12 = this.f7460b;
            it = (Iterator) this.f7461c;
            if (i12 > 0 && it.hasNext()) {
                it.next();
                this.f7460b--;
            }
        }
        return it.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f7459a) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 1:
                int i6 = this.f7460b - 1;
                this.f7460b = i6;
                ((ViewGroup) this.f7461c).removeViewAt(i6);
                return;
            case 2:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public a(Object[] objArr) {
        this.f7459a = 0;
        i.f(objArr, "array");
        this.f7461c = objArr;
    }

    public a(q9.b bVar) {
        this.f7459a = 2;
        this.f7461c = bVar.f9366a.iterator();
        this.f7460b = bVar.f9367b;
    }
}
