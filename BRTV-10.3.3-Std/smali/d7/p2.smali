.class public final Ld7/p2;
.super Ld7/h1;
.source "MyApplication"


# instance fields
.field public final synthetic b:Ljava/lang/Iterable;

.field public final synthetic c:Lcom/google/common/util/concurrent/m;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lcom/google/common/util/concurrent/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld7/p2;->b:Ljava/lang/Iterable;

    .line 2
    .line 3
    iput-object p2, p0, Ld7/p2;->c:Lcom/google/common/util/concurrent/m;

    .line 4
    .line 5
    invoke-direct {p0}, Ld7/h1;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .line 1
    iget-object v0, p0, Ld7/p2;->b:Ljava/lang/Iterable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Ld7/p2;->c:Lcom/google/common/util/concurrent/m;

    .line 8
    .line 9
    new-instance v2, Ld7/r2;

    .line 10
    .line 11
    invoke-direct {v2, v0, v1}, Ld7/r2;-><init>(Ljava/util/Iterator;Lb7/i;)V

    .line 12
    .line 13
    .line 14
    return-object v2
.end method
