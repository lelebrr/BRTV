.class public final Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/AssetListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetList"
.end annotation


# static fields
.field private static final EMPTY:Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;


# instance fields
.field public final assets:Ld7/u1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld7/u1;"
        }
    .end annotation
.end field

.field public final stringAttributes:Ld7/u1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld7/u1;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;

    .line 2
    .line 3
    sget-object v1, Ld7/u1;->b:Ld7/g1;

    .line 4
    .line 5
    sget-object v1, Ld7/c5;->e:Ld7/c5;

    .line 6
    .line 7
    invoke-direct {v0, v1, v1}, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;-><init>(Ld7/u1;Ld7/u1;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;->EMPTY:Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ld7/u1;Ld7/u1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld7/u1;",
            "Ld7/u1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;->assets:Ld7/u1;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;->stringAttributes:Ld7/u1;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic access$000()Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;->EMPTY:Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;->assets:Ld7/u1;

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;->assets:Ld7/u1;

    .line 16
    .line 17
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;->stringAttributes:Ld7/u1;

    .line 24
    .line 25
    iget-object p1, p1, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;->stringAttributes:Ld7/u1;

    .line 26
    .line 27
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;->assets:Ld7/u1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;->stringAttributes:Ld7/u1;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v0, v2, v3

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    aput-object v1, v2, v0

    .line 13
    .line 14
    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method
