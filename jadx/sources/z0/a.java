package z0;

import android.view.View;
import android.view.WindowInsets;
import androidx.drawerlayout.widget.DrawerLayout;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a implements View.OnApplyWindowInsetsListener {
    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        DrawerLayout drawerLayout = (DrawerLayout) view;
        boolean z7 = false;
        boolean z10 = windowInsets.getSystemWindowInsetTop() > 0;
        drawerLayout.f1354w = windowInsets;
        drawerLayout.f1355x = z10;
        if (!z10 && drawerLayout.getBackground() == null) {
            z7 = true;
        }
        drawerLayout.setWillNotDraw(z7);
        drawerLayout.requestLayout();
        return windowInsets.consumeSystemWindowInsets();
    }
}
