.class final Landroidx/media3/extractor/mp4/BoxParser$VexuData;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VexuData"
.end annotation


# instance fields
.field private final eyesData:Landroidx/media3/extractor/mp4/BoxParser$EyesData;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/mp4/BoxParser$EyesData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/mp4/BoxParser$VexuData;->eyesData:Landroidx/media3/extractor/mp4/BoxParser$EyesData;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic access$700(Landroidx/media3/extractor/mp4/BoxParser$VexuData;)Landroidx/media3/extractor/mp4/BoxParser$EyesData;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/mp4/BoxParser$VexuData;->eyesData:Landroidx/media3/extractor/mp4/BoxParser$EyesData;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public hasBothEyeViews()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/mp4/BoxParser$VexuData;->eyesData:Landroidx/media3/extractor/mp4/BoxParser$EyesData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser$EyesData;->access$800(Landroidx/media3/extractor/mp4/BoxParser$EyesData;)Landroidx/media3/extractor/mp4/BoxParser$StriData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser$StriData;->access$1600(Landroidx/media3/extractor/mp4/BoxParser$StriData;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/extractor/mp4/BoxParser$VexuData;->eyesData:Landroidx/media3/extractor/mp4/BoxParser$EyesData;

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser$EyesData;->access$800(Landroidx/media3/extractor/mp4/BoxParser$EyesData;)Landroidx/media3/extractor/mp4/BoxParser$StriData;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser$StriData;->access$1700(Landroidx/media3/extractor/mp4/BoxParser$StriData;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0
.end method
