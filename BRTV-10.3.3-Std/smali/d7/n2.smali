.class public Ld7/n2;
.super Ld7/g2;
.source "MyApplication"

# interfaces
.implements Ld7/l5;


# instance fields
.field public final transient h:Ld7/k2;

.field public transient i:Ld7/m2;


# direct methods
.method public constructor <init>(Ld7/h5;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ld7/g2;-><init>(Ld7/h5;I)V

    .line 2
    .line 3
    .line 4
    sget p1, Ld7/k2;->c:I

    .line 5
    .line 6
    sget-object p1, Ld7/i5;->j:Ld7/i5;

    .line 7
    .line 8
    iput-object p1, p0, Ld7/n2;->h:Ld7/k2;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/n2;->i:Ld7/m2;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld7/m2;

    invoke-direct {v0, p0}, Ld7/m2;-><init>(Ld7/n2;)V

    iput-object v0, p0, Ld7/n2;->i:Ld7/m2;

    :cond_0
    return-object v0
.end method

.method public final a()Ljava/util/Set;
    .locals 1

    .line 3
    iget-object v0, p0, Ld7/n2;->i:Ld7/m2;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ld7/m2;

    invoke-direct {v0, p0}, Ld7/m2;-><init>(Ld7/n2;)V

    iput-object v0, p0, Ld7/n2;->i:Ld7/m2;

    :cond_0
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/g2;->f:Ld7/h5;

    invoke-virtual {v0, p1}, Ld7/h5;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld7/k2;

    .line 2
    iget-object v0, p0, Ld7/n2;->h:Ld7/k2;

    invoke-static {p1, v0}, Lb7/b;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld7/k2;

    return-object p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .line 3
    iget-object v0, p0, Ld7/g2;->f:Ld7/h5;

    invoke-virtual {v0, p1}, Ld7/h5;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld7/k2;

    .line 4
    iget-object v0, p0, Ld7/n2;->h:Ld7/k2;

    invoke-static {p1, v0}, Lb7/b;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld7/k2;

    return-object p1
.end method

.method public final p()Ld7/q1;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/n2;->i:Ld7/m2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ld7/m2;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Ld7/m2;-><init>(Ld7/n2;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ld7/n2;->i:Ld7/m2;

    .line 11
    .line 12
    :cond_0
    return-object v0
.end method
