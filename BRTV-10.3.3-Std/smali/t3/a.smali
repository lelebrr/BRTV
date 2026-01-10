.class public abstract Lt3/a;
.super Lt3/c;
.source "MyApplication"


# instance fields
.field public d:Landroid/util/SparseIntArray;


# virtual methods
.method public final c(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lt3/a;->d:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/util/SparseIntArray;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lt3/a;->d:Landroid/util/SparseIntArray;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lt3/a;->d:Landroid/util/SparseIntArray;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
