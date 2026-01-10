package androidx.appcompat.widget;

import android.app.Activity;
import android.content.ClipData;
import android.os.Build;
import android.text.Selection;
import android.text.Spannable;
import android.view.DragEvent;
import android.view.View;
import android.widget.TextView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class c0 {
    public static boolean a(DragEvent dragEvent, TextView textView, Activity activity) {
        n0.d cVar;
        activity.requestDragAndDropPermissions(dragEvent);
        int offsetForPosition = textView.getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
        textView.beginBatchEdit();
        try {
            Selection.setSelection((Spannable) textView.getText(), offsetForPosition);
            ClipData clipData = dragEvent.getClipData();
            if (Build.VERSION.SDK_INT >= 31) {
                cVar = new j7.c(clipData, 3);
            } else {
                n0.e eVar = new n0.e();
                eVar.f8307b = clipData;
                eVar.f8308c = 3;
                cVar = eVar;
            }
            n0.s0.l(textView, cVar.f());
            textView.endBatchEdit();
            return true;
        } catch (Throwable th) {
            textView.endBatchEdit();
            throw th;
        }
    }

    public static boolean b(DragEvent dragEvent, View view, Activity activity) {
        n0.d cVar;
        activity.requestDragAndDropPermissions(dragEvent);
        ClipData clipData = dragEvent.getClipData();
        if (Build.VERSION.SDK_INT >= 31) {
            cVar = new j7.c(clipData, 3);
        } else {
            n0.e eVar = new n0.e();
            eVar.f8307b = clipData;
            eVar.f8308c = 3;
            cVar = eVar;
        }
        n0.s0.l(view, cVar.f());
        return true;
    }
}
