package androidx.media3.exoplayer.upstream;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.upstream.Allocator;
import java.util.Arrays;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class DefaultAllocator implements Allocator {
    private static final int AVAILABLE_EXTRA_CAPACITY = 100;
    private int allocatedCount;
    private Allocation[] availableAllocations;
    private int availableCount;
    private final int individualAllocationSize;
    private final byte[] initialAllocationBlock;
    private int targetBufferSize;
    private final boolean trimOnReset;

    public DefaultAllocator(boolean z7, int i6) {
        this(z7, i6, 0);
    }

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public synchronized Allocation allocate() {
        Allocation allocation;
        try {
            this.allocatedCount++;
            int i6 = this.availableCount;
            if (i6 > 0) {
                Allocation[] allocationArr = this.availableAllocations;
                int i10 = i6 - 1;
                this.availableCount = i10;
                allocation = (Allocation) Assertions.checkNotNull(allocationArr[i10]);
                this.availableAllocations[this.availableCount] = null;
            } else {
                allocation = new Allocation(new byte[this.individualAllocationSize], 0);
                int i11 = this.allocatedCount;
                Allocation[] allocationArr2 = this.availableAllocations;
                if (i11 > allocationArr2.length) {
                    this.availableAllocations = (Allocation[]) Arrays.copyOf(allocationArr2, allocationArr2.length * 2);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return allocation;
    }

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public int getIndividualAllocationLength() {
        return this.individualAllocationSize;
    }

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public synchronized int getTotalBytesAllocated() {
        return this.allocatedCount * this.individualAllocationSize;
    }

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public synchronized void release(Allocation allocation) {
        Allocation[] allocationArr = this.availableAllocations;
        int i6 = this.availableCount;
        this.availableCount = i6 + 1;
        allocationArr[i6] = allocation;
        this.allocatedCount--;
        notifyAll();
    }

    public synchronized void reset() {
        if (this.trimOnReset) {
            setTargetBufferSize(0);
        }
    }

    public synchronized void setTargetBufferSize(int i6) {
        boolean z7 = i6 < this.targetBufferSize;
        this.targetBufferSize = i6;
        if (z7) {
            trim();
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public synchronized void trim() {
        try {
            int i6 = 0;
            int iMax = Math.max(0, Util.ceilDivide(this.targetBufferSize, this.individualAllocationSize) - this.allocatedCount);
            int i10 = this.availableCount;
            if (iMax >= i10) {
                return;
            }
            if (this.initialAllocationBlock != null) {
                int i11 = i10 - 1;
                while (i6 <= i11) {
                    Allocation allocation = (Allocation) Assertions.checkNotNull(this.availableAllocations[i6]);
                    if (allocation.data == this.initialAllocationBlock) {
                        i6++;
                    } else {
                        Allocation allocation2 = (Allocation) Assertions.checkNotNull(this.availableAllocations[i11]);
                        if (allocation2.data != this.initialAllocationBlock) {
                            i11--;
                        } else {
                            Allocation[] allocationArr = this.availableAllocations;
                            allocationArr[i6] = allocation2;
                            allocationArr[i11] = allocation;
                            i11--;
                            i6++;
                        }
                    }
                }
                iMax = Math.max(iMax, i6);
                if (iMax >= this.availableCount) {
                    return;
                }
            }
            Arrays.fill(this.availableAllocations, iMax, this.availableCount, (Object) null);
            this.availableCount = iMax;
        } catch (Throwable th) {
            throw th;
        }
    }

    public DefaultAllocator(boolean z7, int i6, int i10) {
        Assertions.checkArgument(i6 > 0);
        Assertions.checkArgument(i10 >= 0);
        this.trimOnReset = z7;
        this.individualAllocationSize = i6;
        this.availableCount = i10;
        this.availableAllocations = new Allocation[i10 + 100];
        if (i10 <= 0) {
            this.initialAllocationBlock = null;
            return;
        }
        this.initialAllocationBlock = new byte[i10 * i6];
        for (int i11 = 0; i11 < i10; i11++) {
            this.availableAllocations[i11] = new Allocation(this.initialAllocationBlock, i11 * i6);
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public synchronized void release(Allocator.AllocationNode allocationNode) {
        while (allocationNode != null) {
            try {
                Allocation[] allocationArr = this.availableAllocations;
                int i6 = this.availableCount;
                this.availableCount = i6 + 1;
                allocationArr[i6] = allocationNode.getAllocation();
                this.allocatedCount--;
                allocationNode = allocationNode.next();
            } catch (Throwable th) {
                throw th;
            }
        }
        notifyAll();
    }
}
