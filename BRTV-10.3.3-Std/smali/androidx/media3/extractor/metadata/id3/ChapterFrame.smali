.class public final Landroidx/media3/extractor/metadata/id3/ChapterFrame;
.super Landroidx/media3/extractor/metadata/id3/Id3Frame;
.source "MyApplication"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "CHAP"


# instance fields
.field public final chapterId:Ljava/lang/String;

.field public final endOffset:J

.field public final endTimeMs:I

.field public final startOffset:J

.field public final startTimeMs:I

.field private final subFrames:[Landroidx/media3/extractor/metadata/id3/Id3Frame;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJJ[Landroidx/media3/extractor/metadata/id3/Id3Frame;)V
    .locals 1

    .line 1
    const-string v0, "CHAP"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    .line 7
    .line 8
    iput p2, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->startTimeMs:I

    .line 9
    .line 10
    iput p3, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->endTimeMs:I

    .line 11
    .line 12
    iput-wide p4, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->startOffset:J

    .line 13
    .line 14
    iput-wide p6, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->endOffset:J

    .line 15
    .line 16
    iput-object p8, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media3/extractor/metadata/id3/Id3Frame;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Landroidx/media3/extractor/metadata/id3/ChapterFrame;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Landroidx/media3/extractor/metadata/id3/ChapterFrame;

    .line 18
    .line 19
    iget v2, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->startTimeMs:I

    .line 20
    .line 21
    iget v3, p1, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->startTimeMs:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget v2, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->endTimeMs:I

    .line 26
    .line 27
    iget v3, p1, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->endTimeMs:I

    .line 28
    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    iget-wide v2, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->startOffset:J

    .line 32
    .line 33
    iget-wide v4, p1, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->startOffset:J

    .line 34
    .line 35
    cmp-long v6, v2, v4

    .line 36
    .line 37
    if-nez v6, :cond_2

    .line 38
    .line 39
    iget-wide v2, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->endOffset:J

    .line 40
    .line 41
    iget-wide v4, p1, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->endOffset:J

    .line 42
    .line 43
    cmp-long v6, v2, v4

    .line 44
    .line 45
    if-nez v6, :cond_2

    .line 46
    .line 47
    iget-object v2, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v3, p1, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    iget-object v2, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media3/extractor/metadata/id3/Id3Frame;

    .line 58
    .line 59
    iget-object p1, p1, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media3/extractor/metadata/id3/Id3Frame;

    .line 60
    .line 61
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    .line 70
    :cond_3
    :goto_1
    return v1
.end method

.method public getSubFrame(I)Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media3/extractor/metadata/id3/Id3Frame;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method

.method public getSubFrameCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media3/extractor/metadata/id3/Id3Frame;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/16 v0, 0x20f

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->startTimeMs:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    mul-int/lit8 v0, v0, 0x1f

    .line 7
    .line 8
    iget v1, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->endTimeMs:I

    .line 9
    .line 10
    add-int/2addr v0, v1

    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget-wide v1, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->startOffset:J

    .line 14
    .line 15
    long-to-int v2, v1

    .line 16
    add-int/2addr v0, v2

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-wide v1, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->endOffset:J

    .line 20
    .line 21
    long-to-int v2, v1

    .line 22
    add-int/2addr v0, v2

    .line 23
    mul-int/lit8 v0, v0, 0x1f

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    :goto_0
    add-int/2addr v0, v1

    .line 36
    return v0
.end method
