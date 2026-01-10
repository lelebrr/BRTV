package androidx.media3.common;

import android.os.Bundle;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BundleCollectionUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import d7.c5;
import d7.g1;
import d7.u1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class Tracks {
    public static final Tracks EMPTY;
    private static final String FIELD_TRACK_GROUPS;
    private final u1 groups;

    /* compiled from: MyApplication */
    public static final class Group {
        private final boolean adaptiveSupported;
        public final int length;
        private final TrackGroup mediaTrackGroup;
        private final boolean[] trackSelected;
        private final int[] trackSupport;
        private static final String FIELD_TRACK_GROUP = Util.intToStringMaxRadix(0);
        private static final String FIELD_TRACK_SUPPORT = Util.intToStringMaxRadix(1);
        private static final String FIELD_TRACK_SELECTED = Util.intToStringMaxRadix(3);
        private static final String FIELD_ADAPTIVE_SUPPORTED = Util.intToStringMaxRadix(4);

        @UnstableApi
        public Group(TrackGroup trackGroup, boolean z7, int[] iArr, boolean[] zArr) {
            int i6 = trackGroup.length;
            this.length = i6;
            boolean z10 = false;
            Assertions.checkArgument(i6 == iArr.length && i6 == zArr.length);
            this.mediaTrackGroup = trackGroup;
            if (z7 && i6 > 1) {
                z10 = true;
            }
            this.adaptiveSupported = z10;
            this.trackSupport = (int[]) iArr.clone();
            this.trackSelected = (boolean[]) zArr.clone();
        }

        @UnstableApi
        public static Group fromBundle(Bundle bundle) {
            TrackGroup trackGroupFromBundle = TrackGroup.fromBundle((Bundle) Assertions.checkNotNull(bundle.getBundle(FIELD_TRACK_GROUP)));
            return new Group(trackGroupFromBundle, bundle.getBoolean(FIELD_ADAPTIVE_SUPPORTED, false), (int[]) b7.b.r(bundle.getIntArray(FIELD_TRACK_SUPPORT), new int[trackGroupFromBundle.length]), (boolean[]) b7.b.r(bundle.getBooleanArray(FIELD_TRACK_SELECTED), new boolean[trackGroupFromBundle.length]));
        }

        @UnstableApi
        public Group copyWithId(String str) {
            return new Group(this.mediaTrackGroup.copyWithId(str), this.adaptiveSupported, this.trackSupport, this.trackSelected);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Group.class != obj.getClass()) {
                return false;
            }
            Group group = (Group) obj;
            return this.adaptiveSupported == group.adaptiveSupported && this.mediaTrackGroup.equals(group.mediaTrackGroup) && Arrays.equals(this.trackSupport, group.trackSupport) && Arrays.equals(this.trackSelected, group.trackSelected);
        }

        public TrackGroup getMediaTrackGroup() {
            return this.mediaTrackGroup;
        }

        public Format getTrackFormat(int i6) {
            return this.mediaTrackGroup.getFormat(i6);
        }

        @UnstableApi
        public int getTrackSupport(int i6) {
            return this.trackSupport[i6];
        }

        public int getType() {
            return this.mediaTrackGroup.type;
        }

        public int hashCode() {
            return Arrays.hashCode(this.trackSelected) + ((Arrays.hashCode(this.trackSupport) + (((this.mediaTrackGroup.hashCode() * 31) + (this.adaptiveSupported ? 1 : 0)) * 31)) * 31);
        }

        public boolean isAdaptiveSupported() {
            return this.adaptiveSupported;
        }

        public boolean isSelected() {
            for (boolean z7 : this.trackSelected) {
                if (z7) {
                    return true;
                }
            }
            return false;
        }

        public boolean isSupported() {
            return isSupported(false);
        }

        public boolean isTrackSelected(int i6) {
            return this.trackSelected[i6];
        }

        public boolean isTrackSupported(int i6) {
            return isTrackSupported(i6, false);
        }

        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putBundle(FIELD_TRACK_GROUP, this.mediaTrackGroup.toBundle());
            bundle.putIntArray(FIELD_TRACK_SUPPORT, this.trackSupport);
            bundle.putBooleanArray(FIELD_TRACK_SELECTED, this.trackSelected);
            bundle.putBoolean(FIELD_ADAPTIVE_SUPPORTED, this.adaptiveSupported);
            return bundle;
        }

        public boolean isSupported(boolean z7) {
            for (int i6 = 0; i6 < this.trackSupport.length; i6++) {
                if (isTrackSupported(i6, z7)) {
                    return true;
                }
            }
            return false;
        }

        public boolean isTrackSupported(int i6, boolean z7) {
            int i10 = this.trackSupport[i6];
            return i10 == 4 || (z7 && i10 == 3);
        }
    }

    static {
        g1 g1Var = u1.f6276b;
        EMPTY = new Tracks(c5.f6115e);
        FIELD_TRACK_GROUPS = Util.intToStringMaxRadix(0);
    }

    @UnstableApi
    public Tracks(List<Group> list) {
        this.groups = u1.n(list);
    }

    @UnstableApi
    public static Tracks fromBundle(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(FIELD_TRACK_GROUPS);
        return new Tracks(parcelableArrayList == null ? c5.f6115e : BundleCollectionUtil.fromBundleList(new g(13), parcelableArrayList));
    }

    public boolean containsType(int i6) {
        for (int i10 = 0; i10 < this.groups.size(); i10++) {
            if (((Group) this.groups.get(i10)).getType() == i6) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Tracks.class != obj.getClass()) {
            return false;
        }
        return this.groups.equals(((Tracks) obj).groups);
    }

    public u1 getGroups() {
        return this.groups;
    }

    public int hashCode() {
        return this.groups.hashCode();
    }

    public boolean isEmpty() {
        return this.groups.isEmpty();
    }

    public boolean isTypeSelected(int i6) {
        for (int i10 = 0; i10 < this.groups.size(); i10++) {
            Group group = (Group) this.groups.get(i10);
            if (group.isSelected() && group.getType() == i6) {
                return true;
            }
        }
        return false;
    }

    public boolean isTypeSupported(int i6) {
        return isTypeSupported(i6, false);
    }

    @UnstableApi
    @Deprecated
    public boolean isTypeSupportedOrEmpty(int i6) {
        return isTypeSupportedOrEmpty(i6, false);
    }

    @UnstableApi
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(FIELD_TRACK_GROUPS, BundleCollectionUtil.toBundleArrayList(this.groups, new g(12)));
        return bundle;
    }

    public boolean isTypeSupported(int i6, boolean z7) {
        for (int i10 = 0; i10 < this.groups.size(); i10++) {
            if (((Group) this.groups.get(i10)).getType() == i6 && ((Group) this.groups.get(i10)).isSupported(z7)) {
                return true;
            }
        }
        return false;
    }

    @UnstableApi
    @Deprecated
    public boolean isTypeSupportedOrEmpty(int i6, boolean z7) {
        return !containsType(i6) || isTypeSupported(i6, z7);
    }
}
