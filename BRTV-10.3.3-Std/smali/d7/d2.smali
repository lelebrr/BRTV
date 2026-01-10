.class public final Ld7/d2;
.super Ld7/q1;
.source "MyApplication"


# instance fields
.field public final b:Ld7/g2;


# direct methods
.method public constructor <init>(Ld7/g2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld7/d2;->b:Ld7/g2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/util/Map$Entry;

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v1, p0, Ld7/d2;->b:Ld7/g2;

    .line 16
    .line 17
    invoke-virtual {v1, v0, p1}, Ld7/w;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method public final i()Ld7/s5;
    .locals 2

    .line 1
    iget-object v0, p0, Ld7/d2;->b:Ld7/g2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Ld7/a2;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Ld7/a2;-><init>(Ld7/g2;)V

    .line 9
    .line 10
    .line 11
    return-object v1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/d2;->b:Ld7/g2;

    .line 2
    .line 3
    iget v0, v0, Ld7/g2;->g:I

    .line 4
    .line 5
    return v0
.end method
