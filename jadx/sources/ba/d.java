package ba;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.widget.Toast;
import java.lang.reflect.Field;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends Toast {

    /* renamed from: a, reason: collision with root package name */
    public final Toast f3328a;

    public d(Context context, Toast toast) {
        super(context);
        this.f3328a = toast;
    }

    public static d a(Context context, int i6, String str) {
        Toast toastMakeText = Toast.makeText(context, str, i6);
        b(toastMakeText.getView(), new c(context));
        return new d(context, toastMakeText);
    }

    public static void b(View view, c cVar) {
        if (Build.VERSION.SDK_INT == 25) {
            try {
                Field declaredField = View.class.getDeclaredField("mContext");
                declaredField.setAccessible(true);
                declaredField.set(view, cVar);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // android.widget.Toast
    public final int getDuration() {
        return this.f3328a.getDuration();
    }

    @Override // android.widget.Toast
    public final int getGravity() {
        return this.f3328a.getGravity();
    }

    @Override // android.widget.Toast
    public final float getHorizontalMargin() {
        return this.f3328a.getHorizontalMargin();
    }

    @Override // android.widget.Toast
    public final float getVerticalMargin() {
        return this.f3328a.getVerticalMargin();
    }

    @Override // android.widget.Toast
    public final View getView() {
        return this.f3328a.getView();
    }

    @Override // android.widget.Toast
    public final int getXOffset() {
        return this.f3328a.getXOffset();
    }

    @Override // android.widget.Toast
    public final int getYOffset() {
        return this.f3328a.getYOffset();
    }

    @Override // android.widget.Toast
    public final void setDuration(int i6) {
        this.f3328a.setDuration(i6);
    }

    @Override // android.widget.Toast
    public final void setGravity(int i6, int i10, int i11) {
        this.f3328a.setGravity(i6, i10, i11);
    }

    @Override // android.widget.Toast
    public final void setMargin(float f, float f3) {
        this.f3328a.setMargin(f, f3);
    }

    @Override // android.widget.Toast
    public final void setText(int i6) {
        this.f3328a.setText(i6);
    }

    @Override // android.widget.Toast
    public final void setView(View view) {
        this.f3328a.setView(view);
        b(view, new c(view.getContext()));
    }

    @Override // android.widget.Toast
    public final void show() {
        this.f3328a.show();
    }

    @Override // android.widget.Toast
    public final void setText(CharSequence charSequence) {
        this.f3328a.setText(charSequence);
    }
}
