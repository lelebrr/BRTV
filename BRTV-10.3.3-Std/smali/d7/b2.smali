.class public final Ld7/b2;
.super Ld7/s5;
.source "MyApplication"


# instance fields
.field public final a:Ld7/s5;

.field public b:Ld7/s5;


# direct methods
.method public constructor <init>(Ld7/g2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Ld7/g2;->f:Ld7/h5;

    .line 5
    .line 6
    invoke-virtual {p1}, Ld7/z1;->f()Ld7/q1;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ld7/u1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Ld7/u1;->p(I)Ld7/g1;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Ld7/b2;->a:Ld7/s5;

    .line 18
    .line 19
    sget-object p1, Ld7/s2;->d:Ld7/s2;

    .line 20
    .line 21
    iput-object p1, p0, Ld7/b2;->b:Ld7/s5;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/b2;->b:Ld7/s5;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Ld7/b2;->a:Ld7/s5;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/b2;->b:Ld7/s5;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ld7/b2;->a:Ld7/s5;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ld7/q1;

    .line 16
    .line 17
    invoke-virtual {v0}, Ld7/q1;->i()Ld7/s5;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Ld7/b2;->b:Ld7/s5;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Ld7/b2;->b:Ld7/s5;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
