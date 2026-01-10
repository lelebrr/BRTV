package com.google.android.material.textfield;

import android.view.MotionEvent;
import android.view.View;
import android.widget.AutoCompleteTextView;
import org.bitspark.android.keyboard.custom.MyKeyBoardView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5326a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f5327b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f5328c;

    public /* synthetic */ l(Object obj, int i6, Object obj2) {
        this.f5326a = i6;
        this.f5328c = obj;
        this.f5327b = obj2;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        na.a aVar;
        switch (this.f5326a) {
            case 0:
                if (motionEvent.getAction() == 1) {
                    m mVar = (m) this.f5328c;
                    mVar.getClass();
                    long jCurrentTimeMillis = System.currentTimeMillis() - mVar.f5337n;
                    if (jCurrentTimeMillis < 0 || jCurrentTimeMillis > 300) {
                        mVar.f5335l = false;
                    }
                    m.d(mVar, (AutoCompleteTextView) this.f5327b);
                    mVar.f5335l = true;
                    mVar.f5337n = System.currentTimeMillis();
                }
                return false;
            default:
                if (motionEvent.getAction() == 1 && (aVar = ((ma.a) this.f5328c).f8281e) != null) {
                    MyKeyBoardView.a(aVar.f8507a, view, ((t3.d) this.f5327b).getLayoutPosition());
                }
                return true;
        }
    }
}
