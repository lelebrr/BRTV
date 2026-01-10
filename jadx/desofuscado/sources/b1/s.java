package b1;

import android.text.Editable;
import android.text.SpannableStringBuilder;
import java.lang.reflect.Array;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s extends SpannableStringBuilder {

    /* renamed from: a, reason: collision with root package name */
    public final Class f3138a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f3139b;

    public s(Class cls, CharSequence charSequence) {
        super(charSequence);
        this.f3139b = new ArrayList();
        a2.a.p(cls, "watcherClass cannot be null");
        this.f3138a = cls;
    }

    public final void a() {
        int i6 = 0;
        while (true) {
            ArrayList arrayList = this.f3139b;
            if (i6 >= arrayList.size()) {
                return;
            }
            ((r) arrayList.get(i6)).f3137b.incrementAndGet();
            i6++;
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Editable append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    public final void b() {
        e();
        int i6 = 0;
        while (true) {
            ArrayList arrayList = this.f3139b;
            if (i6 >= arrayList.size()) {
                return;
            }
            ((r) arrayList.get(i6)).onTextChanged(this, 0, length(), length());
            i6++;
        }
    }

    public final r c(Object obj) {
        int i6 = 0;
        while (true) {
            ArrayList arrayList = this.f3139b;
            if (i6 >= arrayList.size()) {
                return null;
            }
            r rVar = (r) arrayList.get(i6);
            if (rVar.f3136a == obj) {
                return rVar;
            }
            i6++;
        }
    }

    public final boolean d(Object obj) {
        if (obj != null) {
            if (this.f3138a == obj.getClass()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final Editable delete(int i6, int i10) {
        super.delete(i6, i10);
        return this;
    }

    public final void e() {
        int i6 = 0;
        while (true) {
            ArrayList arrayList = this.f3139b;
            if (i6 >= arrayList.size()) {
                return;
            }
            ((r) arrayList.get(i6)).f3137b.decrementAndGet();
            i6++;
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int getSpanEnd(Object obj) {
        r rVarC;
        if (d(obj) && (rVarC = c(obj)) != null) {
            obj = rVarC;
        }
        return super.getSpanEnd(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int getSpanFlags(Object obj) {
        r rVarC;
        if (d(obj) && (rVarC = c(obj)) != null) {
            obj = rVarC;
        }
        return super.getSpanFlags(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int getSpanStart(Object obj) {
        r rVarC;
        if (d(obj) && (rVarC = c(obj)) != null) {
            obj = rVarC;
        }
        return super.getSpanStart(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final Object[] getSpans(int i6, int i10, Class cls) {
        if (this.f3138a != cls) {
            return super.getSpans(i6, i10, cls);
        }
        r[] rVarArr = (r[]) super.getSpans(i6, i10, r.class);
        Object[] objArr = (Object[]) Array.newInstance((Class<?>) cls, rVarArr.length);
        for (int i11 = 0; i11 < rVarArr.length; i11++) {
            objArr[i11] = rVarArr[i11].f3136a;
        }
        return objArr;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final Editable insert(int i6, CharSequence charSequence) {
        super.insert(i6, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int nextSpanTransition(int i6, int i10, Class cls) {
        if (cls == null || this.f3138a == cls) {
            cls = r.class;
        }
        return super.nextSpanTransition(i6, i10, cls);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public final void removeSpan(Object obj) {
        r rVarC;
        if (d(obj)) {
            rVarC = c(obj);
            if (rVarC != null) {
                obj = rVarC;
            }
        } else {
            rVarC = null;
        }
        super.removeSpan(obj);
        if (rVarC != null) {
            this.f3139b.remove(rVarC);
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final /* bridge */ /* synthetic */ Editable replace(int i6, int i10, CharSequence charSequence) {
        replace(i6, i10, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public final void setSpan(Object obj, int i6, int i10, int i11) {
        if (d(obj)) {
            r rVar = new r(obj);
            this.f3139b.add(rVar);
            obj = rVar;
        }
        super.setSpan(obj, i6, i10, i11);
    }

    @Override // android.text.SpannableStringBuilder, java.lang.CharSequence
    public final CharSequence subSequence(int i6, int i10) {
        return new s(this.f3138a, this, i6, i10);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final SpannableStringBuilder append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder delete(int i6, int i10) {
        super.delete(i6, i10);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder insert(int i6, CharSequence charSequence) {
        super.insert(i6, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final /* bridge */ /* synthetic */ Editable replace(int i6, int i10, CharSequence charSequence, int i11, int i12) {
        replace(i6, i10, charSequence, i11, i12);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Appendable append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final Editable insert(int i6, CharSequence charSequence, int i10, int i11) {
        super.insert(i6, charSequence, i10, i11);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder replace(int i6, int i10, CharSequence charSequence) {
        a();
        super.replace(i6, i10, charSequence);
        e();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Editable append(char c5) {
        super.append(c5);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder insert(int i6, CharSequence charSequence, int i10, int i11) {
        super.insert(i6, charSequence, i10, i11);
        return this;
    }

    public s(Class cls, s sVar, int i6, int i10) {
        super(sVar, i6, i10);
        this.f3139b = new ArrayList();
        a2.a.p(cls, "watcherClass cannot be null");
        this.f3138a = cls;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final SpannableStringBuilder append(char c5) {
        super.append(c5);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Appendable append(char c5) {
        super.append(c5);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder replace(int i6, int i10, CharSequence charSequence, int i11, int i12) {
        a();
        super.replace(i6, i10, charSequence, i11, i12);
        e();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Editable append(CharSequence charSequence, int i6, int i10) {
        super.append(charSequence, i6, i10);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final SpannableStringBuilder append(CharSequence charSequence, int i6, int i10) {
        super.append(charSequence, i6, i10);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Appendable append(CharSequence charSequence, int i6, int i10) {
        super.append(charSequence, i6, i10);
        return this;
    }

    @Override // android.text.SpannableStringBuilder
    public final SpannableStringBuilder append(CharSequence charSequence, Object obj, int i6) {
        super.append(charSequence, obj, i6);
        return this;
    }
}
