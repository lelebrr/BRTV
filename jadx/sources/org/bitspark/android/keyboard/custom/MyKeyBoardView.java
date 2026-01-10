package org.bitspark.android.keyboard.custom;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.mediarouter.app.c;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.nmmedit.protect.NativeUtil;
import com.p2elite.brtv2.R;
import ea.i;
import fa.n0;
import java.util.ArrayList;
import java.util.concurrent.ScheduledExecutorService;
import ma.a;
import na.b;
import q1.f0;

/* loaded from: classes.dex */
public class MyKeyBoardView extends LinearLayout implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final RecyclerView f8744a;

    /* renamed from: b, reason: collision with root package name */
    public EditText f8745b;

    /* renamed from: c, reason: collision with root package name */
    public final String[] f8746c;
    public final String d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f8747e;
    public final a f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f8748g;

    /* renamed from: h, reason: collision with root package name */
    public final View f8749h;

    /* renamed from: i, reason: collision with root package name */
    public b f8750i;

    /* renamed from: j, reason: collision with root package name */
    public final GridLayoutManager f8751j;

    /* renamed from: k, reason: collision with root package name */
    public final na.a f8752k;

    /* renamed from: l, reason: collision with root package name */
    public final na.a f8753l;

    /* renamed from: m, reason: collision with root package name */
    public ScheduledExecutorService f8754m;

    /* renamed from: n, reason: collision with root package name */
    public final na.a f8755n;

    /* renamed from: o, reason: collision with root package name */
    public final c f8756o;

    static {
        NativeUtil.classesInit0(31);
    }

    public MyKeyBoardView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.d = a2.a.s("RCUp3GBg0nZAJS3cZGDedkwlIdxoYNp2SCUl3GxgxnZUJTnccGDCdlAlPdx0YM52XCUx3BJgpHY2\nJV/cFmCgdjIlU9waYKY=\n", "BQlr8CNMllo=\n");
        this.f8747e = true;
        this.f8748g = new ArrayList();
        this.f8752k = new na.a(this);
        this.f8753l = new na.a(this);
        this.f8755n = new na.a(this);
        this.f8756o = new c(6, this);
    }

    public static native void a(MyKeyBoardView myKeyBoardView, View view, int i6);

    public native EditText getEditText();

    @Override // android.view.View.OnClickListener
    public final native void onClick(View view);

    public native void setEditText(EditText editText);

    public native void setOnBackDownPressedListener(n0 n0Var);

    public native void setOnKeyClickListener(b bVar);

    public MyKeyBoardView(Context context, AttributeSet attributeSet) {
        ArrayList arrayList;
        super(context, attributeSet);
        String strS = a2.a.s("gR0YJOpyZ9WFHRwk7nJr1YkdECTicm/VjR0UJOZyc9WRHQgk+nJ31ZUdDCT+cnvVmR0AJJhyEdXz\nHW4knHIV1fcdYiSQchM=\n", "wDFaCKleI/k=\n");
        this.d = strS;
        this.f8747e = true;
        this.f8748g = new ArrayList();
        this.f8752k = new na.a(this);
        this.f8753l = new na.a(this);
        this.f8755n = new na.a(this);
        this.f8756o = new c(6, this);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.view_keyboard, this);
        this.f8749h = viewInflate;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, i.f6697a);
        typedArrayObtainStyledAttributes.getBoolean(6, false);
        if (typedArrayObtainStyledAttributes.getString(8) != null && !typedArrayObtainStyledAttributes.getString(8).equals("")) {
            this.d = typedArrayObtainStyledAttributes.getString(8) + a2.a.s("pA==\n", "iM9B9YkjhhM=\n") + strS;
        }
        this.f8744a = (RecyclerView) viewInflate.findViewById(R.id.rv_kb_num);
        this.f8746c = this.d.split(a2.a.s("Uw==\n", "f1lP4XziRTk=\n"));
        int i6 = 0;
        while (true) {
            String[] strArr = this.f8746c;
            int length = strArr.length;
            arrayList = this.f8748g;
            if (i6 >= length) {
                break;
            }
            arrayList.add(new oa.a(0, strArr[i6]));
            i6++;
        }
        arrayList.add(new oa.a(9, " "));
        arrayList.add(new oa.a(0, a2.a.s("Sw==\n", "ZriQ9jDvndo=\n")));
        this.f8751j = new GridLayoutManager();
        a aVar = new a();
        aVar.f10131a = new f0(5);
        new LinearInterpolator();
        aVar.f10133c = arrayList;
        aVar.f8285j = 500L;
        aVar.f8286k = false;
        aVar.f8287l = false;
        aVar.f8289n = new Handler();
        aVar.f8281e = this.f8752k;
        aVar.f = this.f8755n;
        aVar.f8282g = this.f8753l;
        aVar.c(0, R.layout.item_keyboard_num);
        aVar.c(9, R.layout.item_keyboard_img_num);
        aVar.c(7, R.layout.item_keyboard_alphabet_a);
        aVar.c(8, R.layout.item_keyboard_char_big);
        aVar.c(6, R.layout.item_keyboard_alphabet_normal);
        aVar.c(1, R.layout.item_keyboard_alphabet_normal);
        aVar.c(2, R.layout.item_keyboard_alphabet_a);
        aVar.c(5, R.layout.item_keyboard_img_alphabet);
        aVar.c(3, R.layout.item_keyboard_img_num);
        aVar.c(4, R.layout.item_keyboard_img_alphabet);
        this.f = aVar;
        if (this.f8747e) {
            this.f8744a.setLayoutManager(this.f8751j);
            this.f8744a.setAdapter(this.f);
        }
    }
}
