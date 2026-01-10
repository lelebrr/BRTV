package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    public final e f314a;

    /* renamed from: b, reason: collision with root package name */
    public final int f315b;

    public i(Context context) {
        int i6 = j.i(context, 0);
        this.f314a = new e(new ContextThemeWrapper(context, j.i(context, i6)));
        this.f315b = i6;
    }

    public static Context b() {
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v1, types: [android.widget.ListAdapter] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    public final j a() {
        e eVar = this.f314a;
        j jVar = new j(eVar.f237a, this.f315b);
        View view = eVar.f240e;
        h hVar = jVar.f319e;
        if (view != null) {
            hVar.f303p = view;
        } else {
            CharSequence charSequence = eVar.d;
            if (charSequence != null) {
                hVar.d = charSequence;
                TextView textView = hVar.f301n;
                if (textView != null) {
                    textView.setText(charSequence);
                }
            }
            Drawable drawable = eVar.f239c;
            if (drawable != null) {
                hVar.f299l = drawable;
                ImageView imageView = hVar.f300m;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    hVar.f300m.setImageDrawable(drawable);
                }
            }
        }
        if (eVar.f241g != null) {
            AlertController$RecycleListView alertController$RecycleListView = (AlertController$RecycleListView) eVar.f238b.inflate(hVar.f307t, (ViewGroup) null);
            int i6 = eVar.f244j ? hVar.f308u : hVar.f309v;
            Object obj = eVar.f241g;
            ?? gVar = obj;
            if (obj == null) {
                gVar = new g(eVar.f237a, i6, R.id.text1, null);
            }
            hVar.f304q = gVar;
            hVar.f305r = eVar.f245k;
            if (eVar.f242h != null) {
                alertController$RecycleListView.setOnItemClickListener(new d(eVar, hVar));
            }
            if (eVar.f244j) {
                alertController$RecycleListView.setChoiceMode(1);
            }
            hVar.f293e = alertController$RecycleListView;
        }
        View view2 = eVar.f243i;
        if (view2 != null) {
            hVar.f = view2;
            hVar.f294g = false;
        }
        jVar.setCancelable(true);
        jVar.setCanceledOnTouchOutside(true);
        jVar.setOnCancelListener(null);
        jVar.setOnDismissListener(null);
        k.m mVar = eVar.f;
        if (mVar != null) {
            jVar.setOnKeyListener(mVar);
        }
        return jVar;
    }
}
