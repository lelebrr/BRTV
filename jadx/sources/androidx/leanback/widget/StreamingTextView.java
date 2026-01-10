package androidx.leanback.widget;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import com.p2elite.brtv2.R;
import java.util.Random;
import java.util.regex.Pattern;

/* compiled from: MyApplication */
@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes.dex */
class StreamingTextView extends EditText {
    public static final Pattern f = Pattern.compile("\\S+");

    /* renamed from: g, reason: collision with root package name */
    public static final f1 f1792g = new f1("streamPosition", Integer.class, 0);

    /* renamed from: a, reason: collision with root package name */
    public final Random f1793a;

    /* renamed from: b, reason: collision with root package name */
    public Bitmap f1794b;

    /* renamed from: c, reason: collision with root package name */
    public Bitmap f1795c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public ObjectAnimator f1796e;

    public StreamingTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1793a = new Random();
    }

    public int getStreamPosition() {
        return this.d;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f1794b = Bitmap.createScaledBitmap(BitmapFactory.decodeResource(getResources(), R.drawable.lb_text_dot_one), (int) (r0.getWidth() * 1.3f), (int) (r0.getHeight() * 1.3f), false);
        this.f1795c = Bitmap.createScaledBitmap(BitmapFactory.decodeResource(getResources(), R.drawable.lb_text_dot_two), (int) (r0.getWidth() * 1.3f), (int) (r0.getHeight() * 1.3f), false);
        this.d = -1;
        ObjectAnimator objectAnimator = this.f1796e;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        setText("");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.leanback.widget.StreamingTextView");
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(n5.d.X(callback, this));
    }

    public void setStreamPosition(int i6) {
        this.d = i6;
        invalidate();
    }

    public StreamingTextView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f1793a = new Random();
    }
}
