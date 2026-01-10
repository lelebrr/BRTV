package androidx.media3.common;

import android.util.SparseBooleanArray;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class FlagSet {
    private final SparseBooleanArray flags;

    public boolean contains(int i6) {
        return this.flags.get(i6);
    }

    public boolean containsAny(int... iArr) {
        for (int i6 : iArr) {
            if (contains(i6)) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FlagSet)) {
            return false;
        }
        FlagSet flagSet = (FlagSet) obj;
        if (Util.SDK_INT >= 24) {
            return this.flags.equals(flagSet.flags);
        }
        if (size() != flagSet.size()) {
            return false;
        }
        for (int i6 = 0; i6 < size(); i6++) {
            if (get(i6) != flagSet.get(i6)) {
                return false;
            }
        }
        return true;
    }

    public int get(int i6) {
        Assertions.checkIndex(i6, 0, size());
        return this.flags.keyAt(i6);
    }

    public int hashCode() {
        if (Util.SDK_INT >= 24) {
            return this.flags.hashCode();
        }
        int size = size();
        for (int i6 = 0; i6 < size(); i6++) {
            size = (size * 31) + get(i6);
        }
        return size;
    }

    public int size() {
        return this.flags.size();
    }

    /* compiled from: MyApplication */
    public static final class Builder {
        private boolean buildCalled;
        private final SparseBooleanArray flags = new SparseBooleanArray();

        public Builder add(int i6) {
            Assertions.checkState(!this.buildCalled);
            this.flags.append(i6, true);
            return this;
        }

        public Builder addAll(int... iArr) {
            for (int i6 : iArr) {
                add(i6);
            }
            return this;
        }

        public Builder addIf(int i6, boolean z7) {
            return z7 ? add(i6) : this;
        }

        public FlagSet build() {
            Assertions.checkState(!this.buildCalled);
            this.buildCalled = true;
            return new FlagSet(this.flags);
        }

        public Builder remove(int i6) {
            Assertions.checkState(!this.buildCalled);
            this.flags.delete(i6);
            return this;
        }

        public Builder removeAll(int... iArr) {
            for (int i6 : iArr) {
                remove(i6);
            }
            return this;
        }

        public Builder removeIf(int i6, boolean z7) {
            return z7 ? remove(i6) : this;
        }

        public Builder addAll(FlagSet flagSet) {
            for (int i6 = 0; i6 < flagSet.size(); i6++) {
                add(flagSet.get(i6));
            }
            return this;
        }
    }

    private FlagSet(SparseBooleanArray sparseBooleanArray) {
        this.flags = sparseBooleanArray;
    }
}
