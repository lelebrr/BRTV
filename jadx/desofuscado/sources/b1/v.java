package b1;

import android.os.Build;
import android.text.Spannable;
import android.text.SpannableString;
import java.util.stream.IntStream;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v implements Spannable {

    /* renamed from: a, reason: collision with root package name */
    public boolean f3143a = false;

    /* renamed from: b, reason: collision with root package name */
    public Spannable f3144b;

    public v(Spannable spannable) {
        this.f3144b = spannable;
    }

    public final void a() {
        Spannable spannable = this.f3144b;
        if (!this.f3143a) {
            if ((Build.VERSION.SDK_INT < 28 ? new u6.e(4) : new u(4)).h(spannable)) {
                this.f3144b = new SpannableString(spannable);
            }
        }
        this.f3143a = true;
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i6) {
        return this.f3144b.charAt(i6);
    }

    @Override // java.lang.CharSequence
    public final IntStream chars() {
        return this.f3144b.chars();
    }

    @Override // java.lang.CharSequence
    public final IntStream codePoints() {
        return this.f3144b.codePoints();
    }

    @Override // android.text.Spanned
    public final int getSpanEnd(Object obj) {
        return this.f3144b.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanFlags(Object obj) {
        return this.f3144b.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanStart(Object obj) {
        return this.f3144b.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public final Object[] getSpans(int i6, int i10, Class cls) {
        return this.f3144b.getSpans(i6, i10, cls);
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.f3144b.length();
    }

    @Override // android.text.Spanned
    public final int nextSpanTransition(int i6, int i10, Class cls) {
        return this.f3144b.nextSpanTransition(i6, i10, cls);
    }

    @Override // android.text.Spannable
    public final void removeSpan(Object obj) {
        a();
        this.f3144b.removeSpan(obj);
    }

    @Override // android.text.Spannable
    public final void setSpan(Object obj, int i6, int i10, int i11) {
        a();
        this.f3144b.setSpan(obj, i6, i10, i11);
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i6, int i10) {
        return this.f3144b.subSequence(i6, i10);
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return this.f3144b.toString();
    }

    public v(CharSequence charSequence) {
        this.f3144b = new SpannableString(charSequence);
    }
}
