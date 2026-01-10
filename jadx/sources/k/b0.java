package k;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class b0 extends androidx.appcompat.app.c0 implements Menu {

    /* renamed from: c, reason: collision with root package name */
    public final l f7542c;

    public b0(Context context, l lVar) {
        super(context);
        if (lVar == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.f7542c = lVar;
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return g(this.f7542c.a(0, 0, 0, charSequence));
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i6, int i10, int i11, ComponentName componentName, Intent[] intentArr, Intent intent, int i12, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr != null ? new MenuItem[menuItemArr.length] : null;
        int iAddIntentOptions = this.f7542c.addIntentOptions(i6, i10, i11, componentName, intentArr, intent, i12, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i13 = 0; i13 < length; i13++) {
                menuItemArr[i13] = g(menuItemArr2[i13]);
            }
        }
        return iAddIntentOptions;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return this.f7542c.addSubMenu(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public final void clear() {
        p.l lVar = (p.l) this.f233b;
        if (lVar != null) {
            lVar.clear();
        }
        this.f7542c.clear();
    }

    @Override // android.view.Menu
    public final void close() {
        this.f7542c.close();
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i6) {
        return g(this.f7542c.findItem(i6));
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i6) {
        return g(this.f7542c.getItem(i6));
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        return this.f7542c.hasVisibleItems();
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i6, KeyEvent keyEvent) {
        return this.f7542c.isShortcutKey(i6, keyEvent);
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i6, int i10) {
        return this.f7542c.performIdentifierAction(i6, i10);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i6, KeyEvent keyEvent, int i10) {
        return this.f7542c.performShortcut(i6, keyEvent, i10);
    }

    @Override // android.view.Menu
    public final void removeGroup(int i6) {
        if (((p.l) this.f233b) != null) {
            int i10 = 0;
            while (true) {
                p.l lVar = (p.l) this.f233b;
                if (i10 >= lVar.f8858c) {
                    break;
                }
                if (((h0.a) lVar.f(i10)).getGroupId() == i6) {
                    ((p.l) this.f233b).h(i10);
                    i10--;
                }
                i10++;
            }
        }
        this.f7542c.removeGroup(i6);
    }

    @Override // android.view.Menu
    public final void removeItem(int i6) {
        if (((p.l) this.f233b) != null) {
            int i10 = 0;
            while (true) {
                p.l lVar = (p.l) this.f233b;
                if (i10 >= lVar.f8858c) {
                    break;
                }
                if (((h0.a) lVar.f(i10)).getItemId() == i6) {
                    ((p.l) this.f233b).h(i10);
                    break;
                }
                i10++;
            }
        }
        this.f7542c.removeItem(i6);
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i6, boolean z7, boolean z10) {
        this.f7542c.setGroupCheckable(i6, z7, z10);
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i6, boolean z7) {
        this.f7542c.setGroupEnabled(i6, z7);
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i6, boolean z7) {
        this.f7542c.setGroupVisible(i6, z7);
    }

    @Override // android.view.Menu
    public final void setQwertyMode(boolean z7) {
        this.f7542c.setQwertyMode(z7);
    }

    @Override // android.view.Menu
    public final int size() {
        return this.f7542c.size();
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i6) {
        return this.f7542c.addSubMenu(i6);
    }

    @Override // android.view.Menu
    public final MenuItem add(int i6) {
        return g(this.f7542c.add(i6));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i6, int i10, int i11, CharSequence charSequence) {
        return this.f7542c.addSubMenu(i6, i10, i11, charSequence);
    }

    @Override // android.view.Menu
    public final MenuItem add(int i6, int i10, int i11, CharSequence charSequence) {
        return g(this.f7542c.a(i6, i10, i11, charSequence));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i6, int i10, int i11, int i12) {
        return this.f7542c.addSubMenu(i6, i10, i11, i12);
    }

    @Override // android.view.Menu
    public final MenuItem add(int i6, int i10, int i11, int i12) {
        return g(this.f7542c.add(i6, i10, i11, i12));
    }
}
