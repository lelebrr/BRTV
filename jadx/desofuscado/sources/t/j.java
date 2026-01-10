package t;

import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.Xml;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j {

    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f9939b;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f9940a = new HashMap();

    static {
        HashMap map = new HashMap();
        f9939b = map;
        try {
            map.put("KeyAttribute", b.class.getConstructor(null));
            map.put("KeyPosition", k.class.getConstructor(null));
            map.put("KeyCycle", c.class.getConstructor(null));
            map.put("KeyTimeCycle", l.class.getConstructor(null));
            map.put("KeyTrigger", m.class.getConstructor(null));
        } catch (NoSuchMethodException e5) {
            Log.e("KeyFrames", "unable to load", e5);
        }
    }

    public j(XmlResourceParser xmlResourceParser) throws XmlPullParserException, IOException {
        try {
            int eventType = xmlResourceParser.getEventType();
            while (eventType != 1) {
                if (eventType == 2) {
                    String name = xmlResourceParser.getName();
                    HashMap map = f9939b;
                    if (map.containsKey(name)) {
                        try {
                            if (((Constructor) map.get(name)).newInstance(null) != null) {
                                throw new ClassCastException();
                            }
                            Xml.asAttributeSet(xmlResourceParser);
                            throw null;
                        } catch (Exception e5) {
                            Log.e("KeyFrames", "unable to create ", e5);
                        }
                    } else {
                        name.equalsIgnoreCase("CustomAttribute");
                    }
                } else if (eventType == 3 && "KeyFrameSet".equals(xmlResourceParser.getName())) {
                    return;
                }
                eventType = xmlResourceParser.next();
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        } catch (XmlPullParserException e11) {
            e11.printStackTrace();
        }
    }

    public final void a(o oVar) {
        HashMap map = this.f9940a;
        ArrayList arrayList = (ArrayList) map.get(Integer.valueOf(oVar.f9967b));
        if (arrayList != null) {
            oVar.f9984u.addAll(arrayList);
        }
        ArrayList arrayList2 = (ArrayList) map.get(-1);
        if (arrayList2 != null) {
            Iterator it = arrayList2.iterator();
            if (it.hasNext()) {
                if (it.next() != null) {
                    throw new ClassCastException();
                }
                String str = ((ConstraintLayout.LayoutParams) oVar.f9966a.getLayoutParams()).U;
                throw null;
            }
        }
    }
}
