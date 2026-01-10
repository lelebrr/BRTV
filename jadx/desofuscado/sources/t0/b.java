package t0;

import a.e;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import androidx.appcompat.widget.a2;
import androidx.appcompat.widget.f3;
import fa.v0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class b extends BaseAdapter implements Filterable {

    /* renamed from: a, reason: collision with root package name */
    public boolean f10055a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f10056b;

    /* renamed from: c, reason: collision with root package name */
    public Cursor f10057c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public a f10058e;
    public a2 f;

    /* renamed from: g, reason: collision with root package name */
    public v0 f10059g;

    public abstract void a(View view, Cursor cursor);

    public void b(Cursor cursor) {
        Cursor cursor2 = this.f10057c;
        if (cursor == cursor2) {
            cursor2 = null;
        } else {
            if (cursor2 != null) {
                a aVar = this.f10058e;
                if (aVar != null) {
                    cursor2.unregisterContentObserver(aVar);
                }
                a2 a2Var = this.f;
                if (a2Var != null) {
                    cursor2.unregisterDataSetObserver(a2Var);
                }
            }
            this.f10057c = cursor;
            if (cursor != null) {
                a aVar2 = this.f10058e;
                if (aVar2 != null) {
                    cursor.registerContentObserver(aVar2);
                }
                a2 a2Var2 = this.f;
                if (a2Var2 != null) {
                    cursor.registerDataSetObserver(a2Var2);
                }
                this.d = cursor.getColumnIndexOrThrow("_id");
                this.f10055a = true;
                notifyDataSetChanged();
            } else {
                this.d = -1;
                this.f10055a = false;
                notifyDataSetInvalidated();
            }
        }
        if (cursor2 != null) {
            cursor2.close();
        }
    }

    public abstract String c(Cursor cursor);

    public abstract View d(ViewGroup viewGroup);

    @Override // android.widget.Adapter
    public final int getCount() {
        Cursor cursor;
        if (!this.f10055a || (cursor = this.f10057c) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i6, View view, ViewGroup viewGroup) {
        if (!this.f10055a) {
            return null;
        }
        this.f10057c.moveToPosition(i6);
        if (view == null) {
            f3 f3Var = (f3) this;
            view = f3Var.f701j.inflate(f3Var.f700i, viewGroup, false);
        }
        a(view, this.f10057c);
        return view;
    }

    @Override // android.widget.Filterable
    public final Filter getFilter() {
        if (this.f10059g == null) {
            v0 v0Var = new v0();
            v0Var.f6965b = this;
            this.f10059g = v0Var;
        }
        return this.f10059g;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i6) {
        Cursor cursor;
        if (!this.f10055a || (cursor = this.f10057c) == null) {
            return null;
        }
        cursor.moveToPosition(i6);
        return this.f10057c;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i6) {
        Cursor cursor;
        if (this.f10055a && (cursor = this.f10057c) != null && cursor.moveToPosition(i6)) {
            return this.f10057c.getLong(this.d);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i6, View view, ViewGroup viewGroup) {
        if (!this.f10055a) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (!this.f10057c.moveToPosition(i6)) {
            throw new IllegalStateException(e.n(i6, "couldn't move cursor to position "));
        }
        if (view == null) {
            view = d(viewGroup);
        }
        a(view, this.f10057c);
        return view;
    }
}
