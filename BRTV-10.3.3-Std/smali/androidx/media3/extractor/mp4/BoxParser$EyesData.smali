.class final Landroidx/media3/extractor/mp4/BoxParser$EyesData;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EyesData"
.end annotation


# instance fields
.field private final striData:Landroidx/media3/extractor/mp4/BoxParser$StriData;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/mp4/BoxParser$StriData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/mp4/BoxParser$EyesData;->striData:Landroidx/media3/extractor/mp4/BoxParser$StriData;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic access$800(Landroidx/media3/extractor/mp4/BoxParser$EyesData;)Landroidx/media3/extractor/mp4/BoxParser$StriData;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/mp4/BoxParser$EyesData;->striData:Landroidx/media3/extractor/mp4/BoxParser$StriData;

    .line 2
    .line 3
    return-object p0
.end method
