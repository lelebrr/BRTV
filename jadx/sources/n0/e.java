package n0;

import android.content.ClipData;
import android.content.Context;
import android.content.res.XmlResourceParser;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContentInfo;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.io.IOException;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e implements d, f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8306a;

    /* renamed from: b, reason: collision with root package name */
    public Object f8307b;

    /* renamed from: c, reason: collision with root package name */
    public int f8308c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public Object f8309e;
    public Cloneable f;

    public /* synthetic */ e() {
        this.f8306a = 0;
    }

    public void a(Context context, XmlResourceParser xmlResourceParser) throws XmlPullParserException, NumberFormatException, IOException {
        androidx.constraintlayout.widget.d dVar = new androidx.constraintlayout.widget.d();
        int attributeCount = xmlResourceParser.getAttributeCount();
        for (int i6 = 0; i6 < attributeCount; i6++) {
            if (TtmlNode.ATTR_ID.equals(xmlResourceParser.getAttributeName(i6))) {
                String attributeValue = xmlResourceParser.getAttributeValue(i6);
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), TtmlNode.ATTR_ID, context.getPackageName()) : -1;
                if (identifier == -1) {
                    if (attributeValue.length() > 1) {
                        identifier = Integer.parseInt(attributeValue.substring(1));
                    } else {
                        Log.e("ConstraintLayoutStates", "error in parsing id");
                    }
                }
                dVar.i(context, xmlResourceParser);
                ((SparseArray) this.f).put(identifier, dVar);
                return;
            }
        }
    }

    @Override // n0.f
    public ClipData e() {
        return (ClipData) this.f8307b;
    }

    @Override // n0.d
    public g f() {
        return new g(new e(this));
    }

    @Override // n0.f
    public int getFlags() {
        return this.d;
    }

    @Override // n0.f
    public ContentInfo i() {
        return null;
    }

    @Override // n0.d
    public void m(Uri uri) {
        this.f8309e = uri;
    }

    @Override // n0.f
    public int n() {
        return this.f8308c;
    }

    @Override // n0.d
    public void setExtras(Bundle bundle) {
        this.f = bundle;
    }

    @Override // n0.d
    public void setFlags(int i6) {
        this.d = i6;
    }

    public String toString() {
        String str;
        switch (this.f8306a) {
            case 1:
                StringBuilder sb = new StringBuilder("ContentInfoCompat{clip=");
                sb.append(((ClipData) this.f8307b).getDescription());
                sb.append(", source=");
                int i6 = this.f8308c;
                sb.append(i6 != 0 ? i6 != 1 ? i6 != 2 ? i6 != 3 ? i6 != 4 ? i6 != 5 ? String.valueOf(i6) : "SOURCE_PROCESS_TEXT" : "SOURCE_AUTOFILL" : "SOURCE_DRAG_AND_DROP" : "SOURCE_INPUT_METHOD" : "SOURCE_CLIPBOARD" : "SOURCE_APP");
                sb.append(", flags=");
                int i10 = this.d;
                sb.append((i10 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i10));
                Uri uri = (Uri) this.f8309e;
                if (uri == null) {
                    str = "";
                } else {
                    str = ", hasLinkUri(" + uri.toString().length() + ")";
                }
                sb.append(str);
                return a.e.t(sb, ((Bundle) this.f) != null ? ", hasExtras" : "", "}");
            default:
                return super.toString();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public e(android.content.Context r8, androidx.constraintlayout.widget.ConstraintLayout r9, int r10) throws org.xmlpull.v1.XmlPullParserException, android.content.res.Resources.NotFoundException, java.io.IOException, java.lang.NumberFormatException {
        /*
            r7 = this;
            r0 = 2
            r7.f8306a = r0
            r7.<init>()
            r0 = -1
            r7.f8308c = r0
            r7.d = r0
            android.util.SparseArray r1 = new android.util.SparseArray
            r1.<init>()
            r7.f8309e = r1
            android.util.SparseArray r1 = new android.util.SparseArray
            r1.<init>()
            r7.f = r1
            r7.f8307b = r9
            android.content.res.Resources r9 = r8.getResources()
            android.content.res.XmlResourceParser r9 = r9.getXml(r10)
            int r10 = r9.getEventType()     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            r1 = 0
        L28:
            r2 = 1
            if (r10 == r2) goto Lca
            if (r10 == 0) goto Lba
            r3 = 2
            if (r10 == r3) goto L32
            goto Lbd
        L32:
            java.lang.String r10 = r9.getName()     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            int r4 = r10.hashCode()     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            r5 = 4
            r6 = 3
            switch(r4) {
                case -1349929691: goto L6e;
                case 80204913: goto L64;
                case 1382829617: goto L5a;
                case 1657696882: goto L50;
                case 1901439077: goto L40;
                default: goto L3f;
            }     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
        L3f:
            goto L78
        L40:
            java.lang.String r4 = "Variant"
            boolean r4 = r10.equals(r4)     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            if (r4 == 0) goto L78
            r4 = 3
            goto L79
        L4a:
            r8 = move-exception
            goto Lc3
        L4d:
            r8 = move-exception
            goto Lc7
        L50:
            java.lang.String r4 = "layoutDescription"
            boolean r4 = r10.equals(r4)     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            if (r4 == 0) goto L78
            r4 = 0
            goto L79
        L5a:
            java.lang.String r4 = "StateSet"
            boolean r4 = r10.equals(r4)     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            if (r4 == 0) goto L78
            r4 = 1
            goto L79
        L64:
            java.lang.String r4 = "State"
            boolean r4 = r10.equals(r4)     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            if (r4 == 0) goto L78
            r4 = 2
            goto L79
        L6e:
            java.lang.String r4 = "ConstraintSet"
            boolean r4 = r10.equals(r4)     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            if (r4 == 0) goto L78
            r4 = 4
            goto L79
        L78:
            r4 = -1
        L79:
            if (r4 == 0) goto Lbd
            if (r4 == r2) goto Lbd
            if (r4 == r3) goto Lab
            if (r4 == r6) goto L9e
            if (r4 == r5) goto L9a
            java.lang.String r2 = "ConstraintLayoutStates"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            r3.<init>()     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            java.lang.String r4 = "unknown tag "
            r3.append(r4)     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            r3.append(r10)     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            java.lang.String r10 = r3.toString()     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            android.util.Log.v(r2, r10)     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            goto Lbd
        L9a:
            r7.a(r8, r9)     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            goto Lbd
        L9e:
            y.c r10 = new y.c     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            r10.<init>(r8, r9)     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            if (r1 == 0) goto Lbd
            java.util.ArrayList r2 = r1.f11147b     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            r2.add(r10)     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            goto Lbd
        Lab:
            y.b r1 = new y.b     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            r1.<init>(r8, r9)     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            java.lang.Object r10 = r7.f8309e     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            android.util.SparseArray r10 = (android.util.SparseArray) r10     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            int r2 = r1.f11146a     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            r10.put(r2, r1)     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            goto Lbd
        Lba:
            r9.getName()     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
        Lbd:
            int r10 = r9.next()     // Catch: java.io.IOException -> L4a org.xmlpull.v1.XmlPullParserException -> L4d
            goto L28
        Lc3:
            r8.printStackTrace()
            goto Lca
        Lc7:
            r8.printStackTrace()
        Lca:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: n0.e.<init>(android.content.Context, androidx.constraintlayout.widget.ConstraintLayout, int):void");
    }

    public e(e eVar) {
        this.f8306a = 1;
        ClipData clipData = (ClipData) eVar.f8307b;
        clipData.getClass();
        this.f8307b = clipData;
        int i6 = eVar.f8308c;
        if (i6 < 0) {
            Locale locale = Locale.US;
            throw new IllegalArgumentException("source is out of range of [0, 5] (too low)");
        }
        if (i6 <= 5) {
            this.f8308c = i6;
            int i10 = eVar.d;
            if ((i10 & 1) == i10) {
                this.d = i10;
                this.f8309e = (Uri) eVar.f8309e;
                this.f = (Bundle) eVar.f;
                return;
            } else {
                throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(i10) + ", but only 0x" + Integer.toHexString(1) + " are allowed");
            }
        }
        Locale locale2 = Locale.US;
        throw new IllegalArgumentException("source is out of range of [0, 5] (too high)");
    }
}
