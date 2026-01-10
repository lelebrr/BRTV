package b3;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.net.Uri;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements u {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3163a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f3164b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f3165c;

    public /* synthetic */ b(Object obj, int i6, Object obj2) {
        this.f3163a = i6;
        this.f3165c = obj;
        this.f3164b = obj2;
    }

    @Override // b3.u
    public final t a(Object obj, int i6, int i10, v2.h hVar) throws NumberFormatException {
        com.bumptech.glide.load.data.k kVar;
        t tVarA;
        Uri uri;
        switch (this.f3163a) {
            case 0:
                Uri uri2 = (Uri) obj;
                String strSubstring = uri2.toString().substring(22);
                q3.d dVar = new q3.d(uri2);
                Object obj2 = this.f3164b;
                AssetManager assetManager = (AssetManager) this.f3165c;
                switch (((a) obj2).f3158a) {
                    case 0:
                        kVar = new com.bumptech.glide.load.data.k(assetManager, strSubstring, 0);
                        break;
                    default:
                        kVar = new com.bumptech.glide.load.data.k(assetManager, strSubstring, 1);
                        break;
                }
                return new t(dVar, kVar);
            case 1:
                Integer num = (Integer) obj;
                Resources.Theme theme = (Resources.Theme) hVar.c(g3.d.f7097b);
                return new t(new q3.d(num), new i(theme, theme != null ? theme.getResources() : ((Context) this.f3165c).getResources(), (h) this.f3164b, num.intValue()));
            case 2:
                ArrayList arrayList = (ArrayList) this.f3165c;
                int size = arrayList.size();
                ArrayList arrayList2 = new ArrayList(size);
                v2.e eVar = null;
                for (int i11 = 0; i11 < size; i11++) {
                    u uVar = (u) arrayList.get(i11);
                    if (uVar.b(obj) && (tVarA = uVar.a(obj, i6, i10, hVar)) != null) {
                        arrayList2.add(tVarA.f3220c);
                        eVar = tVarA.f3218a;
                    }
                }
                if (arrayList2.isEmpty() || eVar == null) {
                    return null;
                }
                return new t(eVar, new z(arrayList2, (s.g) this.f3164b));
            case 3:
                Integer num2 = (Integer) obj;
                Resources resources = (Resources) this.f3164b;
                try {
                    uri = Uri.parse("android.resource://" + resources.getResourcePackageName(num2.intValue()) + '/' + resources.getResourceTypeName(num2.intValue()) + '/' + resources.getResourceEntryName(num2.intValue()));
                } catch (Resources.NotFoundException e5) {
                    if (Log.isLoggable("ResourceLoader", 5)) {
                        Log.w("ResourceLoader", "Received invalid resource id: " + num2, e5);
                    }
                    uri = null;
                }
                if (uri == null) {
                    return null;
                }
                return ((u) this.f3165c).a(uri, i6, i10, hVar);
            default:
                Uri uri3 = (Uri) obj;
                List<String> pathSegments = uri3.getPathSegments();
                int size2 = pathSegments.size();
                u uVar2 = (u) this.f3164b;
                t tVarA2 = null;
                if (size2 == 1) {
                    try {
                        int i12 = Integer.parseInt(uri3.getPathSegments().get(0));
                        if (i12 != 0) {
                            tVarA2 = uVar2.a(Integer.valueOf(i12), i6, i10, hVar);
                        } else if (Log.isLoggable("ResourceUriLoader", 5)) {
                            Log.w("ResourceUriLoader", "Failed to parse a valid non-0 resource id from: " + uri3);
                        }
                        return tVarA2;
                    } catch (NumberFormatException e10) {
                        if (!Log.isLoggable("ResourceUriLoader", 5)) {
                            return tVarA2;
                        }
                        Log.w("ResourceUriLoader", "Failed to parse resource id from: " + uri3, e10);
                        return tVarA2;
                    }
                }
                if (pathSegments.size() != 2) {
                    if (!Log.isLoggable("ResourceUriLoader", 5)) {
                        return null;
                    }
                    Log.w("ResourceUriLoader", "Failed to parse resource uri: " + uri3);
                    return null;
                }
                List<String> pathSegments2 = uri3.getPathSegments();
                String str = pathSegments2.get(0);
                String str2 = pathSegments2.get(1);
                Context context = (Context) this.f3165c;
                int identifier = context.getResources().getIdentifier(str2, str, context.getPackageName());
                if (identifier != 0) {
                    return uVar2.a(Integer.valueOf(identifier), i6, i10, hVar);
                }
                if (!Log.isLoggable("ResourceUriLoader", 5)) {
                    return null;
                }
                Log.w("ResourceUriLoader", "Failed to find resource id for: " + uri3);
                return null;
        }
    }

    @Override // b3.u
    public final boolean b(Object obj) {
        switch (this.f3163a) {
            case 0:
                Uri uri = (Uri) obj;
                if (!"file".equals(uri.getScheme()) || uri.getPathSegments().isEmpty() || !"android_asset".equals(uri.getPathSegments().get(0))) {
                }
                break;
            case 1:
                break;
            case 2:
                Iterator it = ((ArrayList) this.f3165c).iterator();
                while (it.hasNext()) {
                    if (((u) it.next()).b(obj)) {
                        break;
                    }
                }
                break;
            case 3:
                break;
            default:
                Uri uri2 = (Uri) obj;
                if (!"android.resource".equals(uri2.getScheme()) || !((Context) this.f3165c).getPackageName().equals(uri2.getAuthority())) {
                }
                break;
        }
        return true;
    }

    public String toString() {
        switch (this.f3163a) {
            case 2:
                return "MultiModelLoader{modelLoaders=" + Arrays.toString(((ArrayList) this.f3165c).toArray()) + '}';
            default:
                return super.toString();
        }
    }

    public b(Resources resources, u uVar) {
        this.f3163a = 3;
        this.f3164b = resources;
        this.f3165c = uVar;
    }

    public b(Context context, h hVar) {
        this.f3163a = 1;
        this.f3165c = context.getApplicationContext();
        this.f3164b = hVar;
    }

    public b(Context context, u uVar) {
        this.f3163a = 4;
        this.f3165c = context.getApplicationContext();
        this.f3164b = uVar;
    }
}
