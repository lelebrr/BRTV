.class final Landroidx/media3/extractor/mp4/BoxParser$TkhdData;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TkhdData"
.end annotation


# instance fields
.field private final alternateGroup:I

.field private final duration:J

.field private final id:I

.field private final rotationDegrees:I


# direct methods
.method public constructor <init>(IJII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->id:I

    .line 5
    .line 6
    iput-wide p2, p0, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->duration:J

    .line 7
    .line 8
    iput p4, p0, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->alternateGroup:I

    .line 9
    .line 10
    iput p5, p0, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->rotationDegrees:I

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic access$000(Landroidx/media3/extractor/mp4/BoxParser$TkhdData;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->duration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic access$100(Landroidx/media3/extractor/mp4/BoxParser$TkhdData;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->id:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$200(Landroidx/media3/extractor/mp4/BoxParser$TkhdData;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->rotationDegrees:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$400(Landroidx/media3/extractor/mp4/BoxParser$TkhdData;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->alternateGroup:I

    .line 2
    .line 3
    return p0
.end method
