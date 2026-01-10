.class public abstract Lcom/lzy/okgo/callback/BitmapCallback;
.super Lcom/lzy/okgo/callback/AbsCallback;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okgo/callback/AbsCallback<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private convert:Lcom/lzy/okgo/convert/BitmapConvert;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/lzy/okgo/callback/AbsCallback;-><init>()V

    .line 2
    new-instance v0, Lcom/lzy/okgo/convert/BitmapConvert;

    invoke-direct {v0}, Lcom/lzy/okgo/convert/BitmapConvert;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/callback/BitmapCallback;->convert:Lcom/lzy/okgo/convert/BitmapConvert;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/lzy/okgo/callback/AbsCallback;-><init>()V

    .line 4
    new-instance v0, Lcom/lzy/okgo/convert/BitmapConvert;

    invoke-direct {v0, p1, p2}, Lcom/lzy/okgo/convert/BitmapConvert;-><init>(II)V

    iput-object v0, p0, Lcom/lzy/okgo/callback/BitmapCallback;->convert:Lcom/lzy/okgo/convert/BitmapConvert;

    return-void
.end method

.method public constructor <init>(IILandroid/graphics/Bitmap$Config;Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/lzy/okgo/callback/AbsCallback;-><init>()V

    .line 6
    new-instance v0, Lcom/lzy/okgo/convert/BitmapConvert;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/lzy/okgo/convert/BitmapConvert;-><init>(IILandroid/graphics/Bitmap$Config;Landroid/widget/ImageView$ScaleType;)V

    iput-object v0, p0, Lcom/lzy/okgo/callback/BitmapCallback;->convert:Lcom/lzy/okgo/convert/BitmapConvert;

    return-void
.end method


# virtual methods
.method public convertResponse(Lokhttp3/Response;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/lzy/okgo/callback/BitmapCallback;->convert:Lcom/lzy/okgo/convert/BitmapConvert;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/convert/BitmapConvert;->convertResponse(Lokhttp3/Response;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    return-object v0
.end method

.method public bridge synthetic convertResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/callback/BitmapCallback;->convertResponse(Lokhttp3/Response;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
