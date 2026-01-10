.class public Lcom/lzy/okgo/convert/BitmapConvert;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lcom/lzy/okgo/convert/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lzy/okgo/convert/Converter<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private decodeConfig:Landroid/graphics/Bitmap$Config;

.field private maxHeight:I

.field private maxWidth:I

.field private scaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/16 v2, 0x3e8

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/lzy/okgo/convert/BitmapConvert;-><init>(IILandroid/graphics/Bitmap$Config;Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/lzy/okgo/convert/BitmapConvert;-><init>(IILandroid/graphics/Bitmap$Config;Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public constructor <init>(IILandroid/graphics/Bitmap$Config;Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/lzy/okgo/convert/BitmapConvert;->maxWidth:I

    .line 5
    iput p2, p0, Lcom/lzy/okgo/convert/BitmapConvert;->maxHeight:I

    .line 6
    iput-object p3, p0, Lcom/lzy/okgo/convert/BitmapConvert;->decodeConfig:Landroid/graphics/Bitmap$Config;

    .line 7
    iput-object p4, p0, Lcom/lzy/okgo/convert/BitmapConvert;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method private static findBestSampleSize(IIII)I
    .locals 4

    .line 1
    int-to-double v0, p0

    .line 2
    int-to-double v2, p2

    .line 3
    div-double/2addr v0, v2

    .line 4
    int-to-double p0, p1

    .line 5
    int-to-double p2, p3

    .line 6
    div-double/2addr p0, p2

    .line 7
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    const/high16 p2, 0x3f800000    # 1.0f

    .line 12
    .line 13
    :goto_0
    const/high16 p3, 0x40000000    # 2.0f

    .line 14
    .line 15
    mul-float p3, p3, p2

    .line 16
    .line 17
    float-to-double v0, p3

    .line 18
    cmpg-double v2, v0, p0

    .line 19
    .line 20
    if-gtz v2, :cond_0

    .line 21
    .line 22
    move p2, p3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    float-to-int p0, p2

    .line 25
    return p0
.end method

.method private static getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return p2

    .line 6
    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 7
    .line 8
    if-ne p4, v0, :cond_2

    .line 9
    .line 10
    if-nez p0, :cond_1

    .line 11
    .line 12
    return p2

    .line 13
    :cond_1
    return p0

    .line 14
    :cond_2
    if-nez p0, :cond_3

    .line 15
    .line 16
    int-to-double p0, p1

    .line 17
    int-to-double p3, p3

    .line 18
    div-double/2addr p0, p3

    .line 19
    int-to-double p2, p2

    .line 20
    mul-double p2, p2, p0

    .line 21
    .line 22
    double-to-int p0, p2

    .line 23
    return p0

    .line 24
    :cond_3
    if-nez p1, :cond_4

    .line 25
    .line 26
    return p0

    .line 27
    :cond_4
    int-to-double v0, p3

    .line 28
    int-to-double p2, p2

    .line 29
    div-double/2addr v0, p2

    .line 30
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 31
    .line 32
    if-ne p4, p2, :cond_6

    .line 33
    .line 34
    int-to-double p2, p0

    .line 35
    mul-double p2, p2, v0

    .line 36
    .line 37
    int-to-double v2, p1

    .line 38
    cmpg-double p1, p2, v2

    .line 39
    .line 40
    if-gez p1, :cond_5

    .line 41
    .line 42
    div-double/2addr v2, v0

    .line 43
    double-to-int p0, v2

    .line 44
    :cond_5
    return p0

    .line 45
    :cond_6
    int-to-double p2, p0

    .line 46
    mul-double p2, p2, v0

    .line 47
    .line 48
    int-to-double v2, p1

    .line 49
    cmpl-double p1, p2, v2

    .line 50
    .line 51
    if-lez p1, :cond_7

    .line 52
    .line 53
    div-double/2addr v2, v0

    .line 54
    double-to-int p0, v2

    .line 55
    :cond_7
    return p0
.end method

.method private parse([B)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/lzy/okgo/convert/BitmapConvert;->maxWidth:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget v1, p0, Lcom/lzy/okgo/convert/BitmapConvert;->maxHeight:I

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/lzy/okgo/convert/BitmapConvert;->decodeConfig:Landroid/graphics/Bitmap$Config;

    .line 16
    .line 17
    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 18
    .line 19
    array-length v1, p1

    .line 20
    invoke-static {p1, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x1

    .line 26
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 27
    .line 28
    array-length v3, p1

    .line 29
    invoke-static {p1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 30
    .line 31
    .line 32
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 33
    .line 34
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 35
    .line 36
    iget v5, p0, Lcom/lzy/okgo/convert/BitmapConvert;->maxWidth:I

    .line 37
    .line 38
    iget v6, p0, Lcom/lzy/okgo/convert/BitmapConvert;->maxHeight:I

    .line 39
    .line 40
    iget-object v7, p0, Lcom/lzy/okgo/convert/BitmapConvert;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 41
    .line 42
    invoke-static {v5, v6, v3, v4, v7}, Lcom/lzy/okgo/convert/BitmapConvert;->getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    iget v6, p0, Lcom/lzy/okgo/convert/BitmapConvert;->maxHeight:I

    .line 47
    .line 48
    iget v7, p0, Lcom/lzy/okgo/convert/BitmapConvert;->maxWidth:I

    .line 49
    .line 50
    iget-object v8, p0, Lcom/lzy/okgo/convert/BitmapConvert;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 51
    .line 52
    invoke-static {v6, v7, v4, v3, v8}, Lcom/lzy/okgo/convert/BitmapConvert;->getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 57
    .line 58
    invoke-static {v3, v4, v5, v6}, Lcom/lzy/okgo/convert/BitmapConvert;->findBestSampleSize(IIII)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 63
    .line 64
    array-length v3, p1

    .line 65
    invoke-static {p1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-gt v0, v5, :cond_1

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-le v0, v6, :cond_2

    .line 82
    .line 83
    :cond_1
    invoke-static {p1, v5, v6, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 88
    .line 89
    .line 90
    move-object p1, v0

    .line 91
    :cond_2
    :goto_0
    return-object p1
.end method


# virtual methods
.method public convertResponse(Lokhttp3/Response;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lzy/okgo/convert/BitmapConvert;->parse([B)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convertResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/convert/BitmapConvert;->convertResponse(Lokhttp3/Response;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
