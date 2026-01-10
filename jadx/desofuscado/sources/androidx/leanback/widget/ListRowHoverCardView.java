package androidx.leanback.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class ListRowHoverCardView extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f1678a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f1679b;

    public ListRowHoverCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final CharSequence getDescription() {
        return this.f1679b.getText();
    }

    public final CharSequence getTitle() {
        return this.f1678a.getText();
    }

    public final void setDescription(CharSequence charSequence) {
        boolean zIsEmpty = TextUtils.isEmpty(charSequence);
        TextView textView = this.f1679b;
        if (zIsEmpty) {
            textView.setVisibility(8);
        } else {
            textView.setText(charSequence);
            textView.setVisibility(0);
        }
    }

    public final void setTitle(CharSequence charSequence) {
        boolean zIsEmpty = TextUtils.isEmpty(charSequence);
        TextView textView = this.f1678a;
        if (zIsEmpty) {
            textView.setVisibility(8);
        } else {
            textView.setText(charSequence);
            textView.setVisibility(0);
        }
    }

    public ListRowHoverCardView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        LayoutInflater.from(context).inflate(R.layout.lb_list_row_hovercard, this);
        this.f1678a = (TextView) findViewById(R.id.title);
        this.f1679b = (TextView) findViewById(R.id.description);
    }
}
