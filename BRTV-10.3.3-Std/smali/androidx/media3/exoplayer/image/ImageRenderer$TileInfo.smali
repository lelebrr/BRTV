.class Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/image/ImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TileInfo"
.end annotation


# instance fields
.field private final presentationTimeUs:J

.field private tileBitmap:Landroid/graphics/Bitmap;

.field private final tileIndex:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->tileIndex:I

    .line 5
    .line 6
    iput-wide p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->presentationTimeUs:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getPresentationTimeUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->presentationTimeUs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTileBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->tileBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTileIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->tileIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public hasTileBitmap()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->tileBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public setTileBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->tileBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-void
.end method
