.class public abstract Lz9/g;
.super Lt9/h0;
.source "MyApplication"


# instance fields
.field public c:Lz9/b;


# virtual methods
.method public final d(La9/i;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lz9/g;->c:Lz9/b;

    .line 2
    .line 3
    sget-object v0, Lz9/b;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 4
    .line 5
    sget-object v0, Lz9/j;->g:Landroidx/leanback/widget/o;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, p2, v0, v1}, Lz9/b;->b(Ljava/lang/Runnable;Landroidx/leanback/widget/o;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
