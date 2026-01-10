package ga;

import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import ea.q;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: c, reason: collision with root package name */
    public static final String f7115c = a2.a.s("QqEsrug=\n", "APJh3Y9xQTY=\n");

    /* renamed from: a, reason: collision with root package name */
    public PopupWindow f7116a;

    /* renamed from: b, reason: collision with root package name */
    public FrameLayout f7117b;

    public static void a(b bVar, String str, Spark spark) {
        View viewInflate = View.inflate(spark, R.layout.layout_bsmessage1, null);
        int i6 = (ea.a.f6605i * 530) / 1920;
        String strS = a2.a.s("d2yL+1ToVQ==\n", "BATkjASHJSM=\n");
        String strJ = q.j("ZqHD4C4tLJo=\n", "AsiuhUB1Fro=\n", new StringBuilder(), i6);
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strJ);
        PopupWindow popupWindow = new PopupWindow(viewInflate, i6, -2);
        bVar.f7116a = popupWindow;
        TextView textView = (TextView) popupWindow.getContentView().findViewById(R.id.message_body);
        ((TextView) bVar.f7116a.getContentView().findViewById(R.id.message_title)).setTextSize(15.0f);
        textView.setTextSize(14.0f);
        textView.setText(str);
        bVar.f7116a.setBackgroundDrawable(new BitmapDrawable());
        bVar.f7116a.setAnimationStyle(R.style.anim_menu_bottombar);
        FrameLayout frameLayout = bVar.f7117b;
        frameLayout.getLocationOnScreen(new int[2]);
        bVar.f7116a.showAtLocation(frameLayout, 53, 20, 60);
    }
}
