.class public final Ll7/j;
.super Ll7/r;
.source "MyApplication"


# instance fields
.field public a:Ll7/r;


# virtual methods
.method public final a(Lt7/a;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ll7/j;->a:Ll7/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ll7/r;->a(Lt7/a;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public final b(Lt7/b;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll7/j;->a:Ll7/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ll7/r;->b(Lt7/b;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 12
    .line 13
    .line 14
    throw p1
.end method
