package j;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.SubMenu;
import androidx.appcompat.widget.m1;
import java.io.IOException;
import k.o;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i extends MenuInflater {

    /* renamed from: e, reason: collision with root package name */
    public static final Class[] f7406e;
    public static final Class[] f;

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f7407a;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f7408b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f7409c;
    public Object d;

    static {
        Class[] clsArr = {Context.class};
        f7406e = clsArr;
        f = clsArr;
    }

    public i(Context context) {
        super(context);
        this.f7409c = context;
        Object[] objArr = {context};
        this.f7407a = objArr;
        this.f7408b = objArr;
    }

    public static Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v59 */
    public final void b(XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        ?? r42;
        int i6;
        ColorStateList colorStateList;
        h hVar = new h(this, menu);
        int eventType = xmlResourceParser.getEventType();
        while (true) {
            r42 = 1;
            i6 = 2;
            if (eventType == 2) {
                String name = xmlResourceParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException("Expecting menu, got ".concat(name));
                }
                eventType = xmlResourceParser.next();
            } else {
                eventType = xmlResourceParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
        boolean z7 = false;
        boolean z10 = false;
        String str = null;
        while (!z7) {
            if (eventType == r42) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (eventType == i6) {
                if (!z10) {
                    String name2 = xmlResourceParser.getName();
                    boolean zEquals = name2.equals("group");
                    i iVar = hVar.E;
                    if (zEquals) {
                        TypedArray typedArrayObtainStyledAttributes = iVar.f7409c.obtainStyledAttributes(attributeSet, e.a.f6361q);
                        hVar.f7383b = typedArrayObtainStyledAttributes.getResourceId(r42, 0);
                        hVar.f7384c = typedArrayObtainStyledAttributes.getInt(3, 0);
                        hVar.d = typedArrayObtainStyledAttributes.getInt(4, 0);
                        hVar.f7385e = typedArrayObtainStyledAttributes.getInt(5, 0);
                        hVar.f = typedArrayObtainStyledAttributes.getBoolean(2, r42);
                        hVar.f7386g = typedArrayObtainStyledAttributes.getBoolean(0, r42);
                        typedArrayObtainStyledAttributes.recycle();
                    } else if (name2.equals("item")) {
                        a1.b bVarB = a1.b.B(iVar.f7409c, attributeSet, e.a.f6362r);
                        TypedArray typedArray = (TypedArray) bVarB.f48c;
                        hVar.f7388i = typedArray.getResourceId(2, 0);
                        hVar.f7389j = (typedArray.getInt(5, hVar.f7384c) & (-65536)) | (typedArray.getInt(6, hVar.d) & 65535);
                        hVar.f7390k = typedArray.getText(7);
                        hVar.f7391l = typedArray.getText(8);
                        hVar.f7392m = typedArray.getResourceId(0, 0);
                        String string = typedArray.getString(9);
                        hVar.f7393n = string == null ? (char) 0 : string.charAt(0);
                        hVar.f7394o = typedArray.getInt(16, 4096);
                        String string2 = typedArray.getString(10);
                        hVar.f7395p = string2 == null ? (char) 0 : string2.charAt(0);
                        hVar.f7396q = typedArray.getInt(20, 4096);
                        if (typedArray.hasValue(11)) {
                            hVar.f7397r = typedArray.getBoolean(11, false) ? 1 : 0;
                        } else {
                            hVar.f7397r = hVar.f7385e;
                        }
                        hVar.f7398s = typedArray.getBoolean(3, false);
                        hVar.f7399t = typedArray.getBoolean(4, hVar.f);
                        hVar.f7400u = typedArray.getBoolean(1, hVar.f7386g);
                        hVar.f7401v = typedArray.getInt(21, -1);
                        hVar.f7404y = typedArray.getString(12);
                        hVar.f7402w = typedArray.getResourceId(13, 0);
                        hVar.f7403x = typedArray.getString(15);
                        String string3 = typedArray.getString(14);
                        boolean z11 = string3 != null;
                        if (z11 && hVar.f7402w == 0 && hVar.f7403x == null) {
                            hVar.f7405z = (n0.c) hVar.a(string3, f, iVar.f7408b);
                        } else {
                            if (z11) {
                                Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                            }
                            hVar.f7405z = null;
                        }
                        hVar.A = typedArray.getText(17);
                        hVar.B = typedArray.getText(22);
                        if (typedArray.hasValue(19)) {
                            hVar.D = m1.c(typedArray.getInt(19, -1), hVar.D);
                            colorStateList = null;
                        } else {
                            colorStateList = null;
                            hVar.D = null;
                        }
                        if (typedArray.hasValue(18)) {
                            hVar.C = bVarB.s(18);
                        } else {
                            hVar.C = colorStateList;
                        }
                        bVarB.F();
                        hVar.f7387h = false;
                    } else if (name2.equals("menu")) {
                        hVar.f7387h = true;
                        SubMenu subMenuAddSubMenu = hVar.f7382a.addSubMenu(hVar.f7383b, hVar.f7388i, hVar.f7389j, hVar.f7390k);
                        hVar.b(subMenuAddSubMenu.getItem());
                        b(xmlResourceParser, attributeSet, subMenuAddSubMenu);
                    } else {
                        str = name2;
                        z10 = true;
                    }
                }
                eventType = xmlResourceParser.next();
                r42 = 1;
                i6 = 2;
            } else if (eventType == 3) {
                String name3 = xmlResourceParser.getName();
                if (z10 && name3.equals(str)) {
                    z10 = false;
                    str = null;
                } else if (name3.equals("group")) {
                    hVar.f7383b = 0;
                    hVar.f7384c = 0;
                    hVar.d = 0;
                    hVar.f7385e = 0;
                    hVar.f = r42;
                    hVar.f7386g = r42;
                } else if (name3.equals("item")) {
                    if (!hVar.f7387h) {
                        n0.c cVar = hVar.f7405z;
                        if (cVar == null || !((o) cVar).f7658b.hasSubMenu()) {
                            hVar.f7387h = r42;
                            hVar.b(hVar.f7382a.add(hVar.f7383b, hVar.f7388i, hVar.f7389j, hVar.f7390k));
                        } else {
                            hVar.f7387h = r42;
                            hVar.b(hVar.f7382a.addSubMenu(hVar.f7383b, hVar.f7388i, hVar.f7389j, hVar.f7390k).getItem());
                        }
                    }
                } else if (name3.equals("menu")) {
                    z7 = true;
                }
                eventType = xmlResourceParser.next();
                r42 = 1;
                i6 = 2;
            }
            eventType = xmlResourceParser.next();
            r42 = 1;
            i6 = 2;
        }
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i6, Menu menu) {
        if (!(menu instanceof k.l)) {
            super.inflate(i6, menu);
            return;
        }
        XmlResourceParser layout = null;
        try {
            try {
                try {
                    layout = this.f7409c.getResources().getLayout(i6);
                    b(layout, Xml.asAttributeSet(layout), menu);
                    layout.close();
                } catch (XmlPullParserException e5) {
                    throw new InflateException("Error inflating menu XML", e5);
                }
            } catch (IOException e10) {
                throw new InflateException("Error inflating menu XML", e10);
            }
        } catch (Throwable th) {
            if (layout != null) {
                layout.close();
            }
            throw th;
        }
    }
}
