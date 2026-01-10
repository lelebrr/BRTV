package r4;

import android.view.View;
import android.widget.ArrayAdapter;
import androidx.fragment.app.FragmentActivity;
import com.p2elite.brtv2.R;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s extends ArrayAdapter implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final FragmentActivity f9578a;

    /* renamed from: b, reason: collision with root package name */
    public int f9579b;

    public s(FragmentActivity fragmentActivity, ArrayList arrayList, int i6) {
        super(fragmentActivity, R.layout.cast_tracks_chooser_dialog_row_layout, arrayList == null ? new ArrayList() : arrayList);
        this.f9578a = fragmentActivity;
        this.f9579b = i6;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x008b  */
    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.view.View getView(int r8, android.view.View r9, android.view.ViewGroup r10) {
        /*
            r7 = this;
            r0 = 1
            r1 = 0
            androidx.fragment.app.FragmentActivity r2 = r7.f9578a
            if (r9 != 0) goto L33
            java.lang.String r9 = "layout_inflater"
            java.lang.Object r9 = r2.getSystemService(r9)
            android.view.LayoutInflater r9 = (android.view.LayoutInflater) r9
            b5.l.e(r9)
            r3 = 2131623972(0x7f0e0024, float:1.887511E38)
            android.view.View r9 = r9.inflate(r3, r10, r1)
            r4.r r10 = new r4.r
            r3 = 2131428357(0x7f0b0405, float:1.8478356E38)
            android.view.View r3 = r9.findViewById(r3)
            android.widget.TextView r3 = (android.widget.TextView) r3
            r4 = 2131428194(0x7f0b0362, float:1.8478026E38)
            android.view.View r4 = r9.findViewById(r4)
            android.widget.RadioButton r4 = (android.widget.RadioButton) r4
            r10.<init>(r3, r4)
            r9.setTag(r10)
            goto L3c
        L33:
            java.lang.Object r10 = r9.getTag()
            r4.r r10 = (r4.r) r10
            b5.l.e(r10)
        L3c:
            java.lang.Integer r3 = java.lang.Integer.valueOf(r8)
            android.widget.RadioButton r4 = r10.f9577b
            r4.setTag(r3)
            int r3 = r7.f9579b
            if (r3 != r8) goto L4b
            r3 = 1
            goto L4c
        L4b:
            r3 = 0
        L4c:
            r4.setChecked(r3)
            r9.setOnClickListener(r7)
            java.lang.Object r3 = r7.getItem(r8)
            com.google.android.gms.cast.MediaTrack r3 = (com.google.android.gms.cast.MediaTrack) r3
            b5.l.e(r3)
            java.lang.String r4 = r3.f
            boolean r5 = android.text.TextUtils.isEmpty(r4)
            if (r5 == 0) goto L65
            r4 = 0
            goto L69
        L65:
            java.util.Locale r4 = java.util.Locale.forLanguageTag(r4)
        L69:
            java.lang.String r5 = r3.f3763e
            boolean r6 = android.text.TextUtils.isEmpty(r5)
            if (r6 == 0) goto L9b
            r5 = 2
            int r3 = r3.f3764g
            if (r3 != r5) goto L7e
            r8 = 2131886211(0x7f120083, float:1.9406994E38)
            java.lang.String r5 = r2.getString(r8)
            goto L9b
        L7e:
            if (r4 == 0) goto L8b
            java.lang.String r5 = r4.getDisplayLanguage()
            boolean r3 = android.text.TextUtils.isEmpty(r5)
            if (r3 != 0) goto L8b
            goto L9b
        L8b:
            int r8 = r8 + r0
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r0[r1] = r8
            r8 = 2131886212(0x7f120084, float:1.9406996E38)
            java.lang.String r5 = r2.getString(r8, r0)
        L9b:
            android.widget.TextView r8 = r10.f9576a
            r8.setText(r5)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: r4.s.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        r rVar = (r) view.getTag();
        b5.l.e(rVar);
        Object tag = rVar.f9577b.getTag();
        b5.l.e(tag);
        this.f9579b = ((Integer) tag).intValue();
        notifyDataSetChanged();
    }
}
