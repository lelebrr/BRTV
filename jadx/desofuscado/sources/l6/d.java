package l6;

import android.view.ViewGroup;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8007a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ExtendedFloatingActionButton f8008b;

    public /* synthetic */ d(ExtendedFloatingActionButton extendedFloatingActionButton, int i6) {
        this.f8007a = i6;
        this.f8008b = extendedFloatingActionButton;
    }

    public final ViewGroup.LayoutParams a() {
        switch (this.f8007a) {
            case 0:
                return new ViewGroup.LayoutParams(-2, -2);
            default:
                ExtendedFloatingActionButton extendedFloatingActionButton = this.f8008b;
                return new ViewGroup.LayoutParams(extendedFloatingActionButton.getCollapsedSize(), extendedFloatingActionButton.getCollapsedSize());
        }
    }

    public final int b() {
        switch (this.f8007a) {
            case 0:
                return this.f8008b.f4918z;
            default:
                return this.f8008b.getCollapsedPadding();
        }
    }

    public final int c() {
        switch (this.f8007a) {
            case 0:
                return this.f8008b.f4917y;
            default:
                return this.f8008b.getCollapsedPadding();
        }
    }
}
