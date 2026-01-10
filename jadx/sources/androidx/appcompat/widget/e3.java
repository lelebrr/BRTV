package androidx.appcompat.widget;

import android.R;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e3 {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f693a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f694b;

    /* renamed from: c, reason: collision with root package name */
    public final ImageView f695c;
    public final ImageView d;

    /* renamed from: e, reason: collision with root package name */
    public final ImageView f696e;

    public e3(View view) {
        this.f693a = (TextView) view.findViewById(R.id.text1);
        this.f694b = (TextView) view.findViewById(R.id.text2);
        this.f695c = (ImageView) view.findViewById(R.id.icon1);
        this.d = (ImageView) view.findViewById(R.id.icon2);
        this.f696e = (ImageView) view.findViewById(com.p2elite.brtv2.R.id.edit_query);
    }
}
