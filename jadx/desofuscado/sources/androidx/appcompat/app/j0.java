package androidx.appcompat.app;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.p2elite.brtv2.R;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j0 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f320a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final View f321b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f322c;
    public Object d;

    /* renamed from: e, reason: collision with root package name */
    public Object f323e;

    public j0(l6.h hVar, EditText editText, TextView textView, sa.e eVar) {
        this.f323e = hVar;
        this.f321b = editText;
        this.f322c = textView;
        this.d = eVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Method method;
        Object obj = this.f322c;
        String string = "";
        View view2 = this.f321b;
        boolean z7 = true;
        switch (this.f320a) {
            case 0:
                if (((Method) this.d) == null) {
                    Context context = view2.getContext();
                    while (true) {
                        String str = (String) obj;
                        if (context == null) {
                            int id = view2.getId();
                            if (id != -1) {
                                string = " with id '" + view2.getContext().getResources().getResourceEntryName(id) + "'";
                            }
                            StringBuilder sbX = a.e.x("Could not find method ", str, "(View) in a parent or ancestor Context for android:onClick attribute defined on view ");
                            sbX.append(view2.getClass());
                            sbX.append(string);
                            throw new IllegalStateException(sbX.toString());
                        }
                        try {
                            if (!context.isRestricted() && (method = context.getClass().getMethod(str, View.class)) != null) {
                                this.d = method;
                                this.f323e = context;
                            }
                        } catch (NoSuchMethodException unused) {
                        }
                        context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
                    }
                }
                try {
                    ((Method) this.d).invoke((Context) this.f323e, view);
                    return;
                } catch (IllegalAccessException e5) {
                    throw new IllegalStateException("Could not execute non-public method for android:onClick", e5);
                } catch (InvocationTargetException e10) {
                    throw new IllegalStateException("Could not execute method for android:onClick", e10);
                }
            default:
                String strTrim = ((EditText) view2).getText().toString().trim();
                boolean zIsEmpty = TextUtils.isEmpty(strTrim);
                l6.h hVar = (l6.h) this.f323e;
                if (zIsEmpty) {
                    string = ((Context) hVar.f8016b).getString(R.string.password_cannot_blank);
                } else if (strTrim.length() < 4) {
                    string = String.format(((Context) hVar.f8016b).getString(R.string.password_too_short), 4);
                } else if (org.bitspark.android.utils.m.g(ea.g.f6662g, ea.h.f6693x).equals(strTrim)) {
                    z7 = false;
                } else {
                    string = ((Context) hVar.f8016b).getString(R.string.password_err);
                }
                if (z7) {
                    TextView textView = (TextView) obj;
                    textView.setText(string);
                    textView.setVisibility(0);
                    return;
                } else {
                    DialogInterface.OnClickListener onClickListener = (DialogInterface.OnClickListener) hVar.f8017c;
                    sa.e eVar = (sa.e) this.d;
                    onClickListener.onClick(eVar, -1);
                    eVar.dismiss();
                    return;
                }
        }
    }

    public j0(View view, String str) {
        this.f321b = view;
        this.f322c = str;
    }
}
