package q1;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.lzy.okgo.cookie.SerializableCookie;
import com.lzy.okgo.model.Progress;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class w {

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f9170a;

    public w(Bundle bundle) {
        this.f9170a = bundle;
    }

    public final HashSet a() {
        Bundle bundle = this.f9170a;
        return !bundle.containsKey("allowedPackages") ? new HashSet() : new HashSet(bundle.getStringArrayList("allowedPackages"));
    }

    public final ArrayList b() {
        Bundle bundle = this.f9170a;
        return !bundle.containsKey("controlFilters") ? new ArrayList() : new ArrayList(bundle.getParcelableArrayList("controlFilters"));
    }

    public final int c() {
        return this.f9170a.getInt("deviceType");
    }

    public final ArrayList d() {
        Bundle bundle = this.f9170a;
        return !bundle.containsKey("groupMemberIds") ? new ArrayList() : new ArrayList(bundle.getStringArrayList("groupMemberIds"));
    }

    public final Uri e() {
        String string = this.f9170a.getString("iconUri");
        if (string == null) {
            return null;
        }
        return Uri.parse(string);
    }

    public final String f() {
        return this.f9170a.getString(TtmlNode.ATTR_ID);
    }

    public final String g() {
        return this.f9170a.getString(SerializableCookie.NAME);
    }

    public final int h() {
        return this.f9170a.getInt("volume");
    }

    public final int i() {
        return this.f9170a.getInt("volumeHandling", 0);
    }

    public final int j() {
        return this.f9170a.getInt("volumeMax");
    }

    public final boolean k() {
        return (TextUtils.isEmpty(f()) || TextUtils.isEmpty(g()) || b().contains(null)) ? false : true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MediaRouteDescriptor{ id=");
        sb.append(f());
        sb.append(", groupMemberIds=");
        sb.append(d());
        sb.append(", name=");
        sb.append(g());
        sb.append(", description=");
        Bundle bundle = this.f9170a;
        sb.append(bundle.getString(Progress.STATUS));
        sb.append(", iconUri=");
        sb.append(e());
        sb.append(", isEnabled=");
        sb.append(bundle.getBoolean("enabled", true));
        sb.append(", isSystemRoute=");
        sb.append(bundle.getBoolean("isSystemRoute", false));
        sb.append(", connectionState=");
        sb.append(bundle.getInt("connectionState", 0));
        sb.append(", controlFilters=");
        sb.append(Arrays.toString(b().toArray()));
        sb.append(", playbackType=");
        sb.append(bundle.getInt("playbackType", 1));
        sb.append(", playbackStream=");
        sb.append(bundle.getInt("playbackStream", -1));
        sb.append(", deviceType=");
        sb.append(c());
        sb.append(", volume=");
        sb.append(h());
        sb.append(", volumeMax=");
        sb.append(j());
        sb.append(", volumeHandling=");
        sb.append(i());
        sb.append(", presentationDisplayId=");
        sb.append(bundle.getInt("presentationDisplayId", -1));
        sb.append(", extras=");
        sb.append(bundle.getBundle("extras"));
        sb.append(", isValid=");
        sb.append(k());
        sb.append(", minClientVersion=");
        sb.append(bundle.getInt("minClientVersion", 1));
        sb.append(", maxClientVersion=");
        sb.append(bundle.getInt("maxClientVersion", Integer.MAX_VALUE));
        sb.append(", isVisibilityPublic=");
        sb.append(bundle.getBoolean("isVisibilityPublic", true));
        sb.append(", allowedPackages=");
        sb.append(Arrays.toString(a().toArray()));
        sb.append(" }");
        return sb.toString();
    }
}
