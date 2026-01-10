.class public abstract Li8/e;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lj8/b;


# virtual methods
.method public abstract b(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)Lj8/b;
.end method

.method public c(Lp8/d;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Li8/e;->b(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)Lj8/b;

    .line 4
    .line 5
    .line 6
    return-void
.end method
