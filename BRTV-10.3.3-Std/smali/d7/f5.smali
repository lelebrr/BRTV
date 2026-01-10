.class public final Ld7/f5;
.super Ld7/k2;
.source "MyApplication"


# instance fields
.field public final transient d:Ld7/z1;

.field public final transient e:Ld7/g5;


# direct methods
.method public constructor <init>(Ld7/z1;Ld7/g5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld7/f5;->d:Ld7/z1;

    .line 5
    .line 6
    iput-object p2, p0, Ld7/f5;->e:Ld7/g5;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c()Ld7/u1;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/f5;->e:Ld7/g5;

    .line 2
    .line 3
    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/f5;->d:Ld7/z1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ld7/z1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method public final d([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/f5;->e:Ld7/g5;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ld7/u1;->d([Ljava/lang/Object;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final h()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final i()Ld7/s5;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Ld7/f5;->e:Ld7/g5;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Ld7/u1;->p(I)Ld7/g1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/f5;->d:Ld7/z1;

    .line 2
    .line 3
    check-cast v0, Ld7/h5;

    .line 4
    .line 5
    iget v0, v0, Ld7/h5;->f:I

    .line 6
    .line 7
    return v0
.end method
