.class public final Ld7/d4;
.super Ld7/t;
.source "MyApplication"


# instance fields
.field public final synthetic a:Ljava/util/Map$Entry;

.field public final synthetic b:La0/b;


# direct methods
.method public constructor <init>(Ljava/util/Map$Entry;La0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld7/d4;->a:Ljava/util/Map$Entry;

    .line 2
    .line 3
    iput-object p2, p0, Ld7/d4;->b:La0/b;

    .line 4
    .line 5
    invoke-direct {p0}, Ld7/t;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/d4;->a:Ljava/util/Map$Entry;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ld7/d4;->a:Ljava/util/Map$Entry;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Ld7/d4;->b:La0/b;

    .line 11
    .line 12
    iget-object v1, v1, La0/b;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lb7/i;

    .line 15
    .line 16
    invoke-interface {v1, v0}, Lb7/i;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
