.class public final Ld7/a0;
.super Ld7/b;
.source "MyApplication"


# instance fields
.field public final transient h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-static {v0}, Ld7/i0;->b(I)Ld7/i0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Ld7/s;-><init>(Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    const-string v1, "expectedValuesPerKey"

    .line 12
    .line 13
    invoke-static {v0, v1}, Ld7/d0;->d(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput v0, p0, Ld7/a0;->h:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final o()Ljava/util/Collection;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget v1, p0, Ld7/a0;->h:I

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
