.class public final Landroidx/media3/extractor/mp4/Track;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/Track$Transformation;
    }
.end annotation


# static fields
.field public static final TRANSFORMATION_CEA608_CDAT:I = 0x1

.field public static final TRANSFORMATION_NONE:I


# instance fields
.field public final durationUs:J

.field public final editListDurations:[J

.field public final editListMediaTimes:[J

.field public final format:Landroidx/media3/common/Format;

.field public final id:I

.field public final mediaDurationUs:J

.field public final movieTimescale:J

.field public final nalUnitLengthFieldLength:I

.field private final sampleDescriptionEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

.field public final sampleTransformation:I

.field public final timescale:J

.field public final type:I


# direct methods
.method public constructor <init>(IIJJJJLandroidx/media3/common/Format;I[Landroidx/media3/extractor/mp4/TrackEncryptionBox;I[J[J)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move v1, p1

    .line 6
    iput v1, v0, Landroidx/media3/extractor/mp4/Track;->id:I

    .line 7
    .line 8
    move v1, p2

    .line 9
    iput v1, v0, Landroidx/media3/extractor/mp4/Track;->type:I

    .line 10
    .line 11
    move-wide v1, p3

    .line 12
    iput-wide v1, v0, Landroidx/media3/extractor/mp4/Track;->timescale:J

    .line 13
    .line 14
    move-wide v1, p5

    .line 15
    iput-wide v1, v0, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    .line 16
    .line 17
    move-wide v1, p7

    .line 18
    iput-wide v1, v0, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    .line 19
    .line 20
    move-wide v1, p9

    .line 21
    iput-wide v1, v0, Landroidx/media3/extractor/mp4/Track;->mediaDurationUs:J

    .line 22
    .line 23
    move-object v1, p11

    .line 24
    iput-object v1, v0, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    .line 25
    .line 26
    move v1, p12

    .line 27
    iput v1, v0, Landroidx/media3/extractor/mp4/Track;->sampleTransformation:I

    .line 28
    .line 29
    move-object/from16 v1, p13

    .line 30
    .line 31
    iput-object v1, v0, Landroidx/media3/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 32
    .line 33
    move/from16 v1, p14

    .line 34
    .line 35
    iput v1, v0, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 36
    .line 37
    move-object/from16 v1, p15

    .line 38
    .line 39
    iput-object v1, v0, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    .line 40
    .line 41
    move-object/from16 v1, p16

    .line 42
    .line 43
    iput-object v1, v0, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public copyWithFormat(Landroidx/media3/common/Format;)Landroidx/media3/extractor/mp4/Track;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    new-instance v18, Landroidx/media3/extractor/mp4/Track;

    .line 6
    .line 7
    move-object/from16 v1, v18

    .line 8
    .line 9
    iget v2, v0, Landroidx/media3/extractor/mp4/Track;->id:I

    .line 10
    .line 11
    iget v3, v0, Landroidx/media3/extractor/mp4/Track;->type:I

    .line 12
    .line 13
    iget-wide v4, v0, Landroidx/media3/extractor/mp4/Track;->timescale:J

    .line 14
    .line 15
    iget-wide v6, v0, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    .line 16
    .line 17
    iget-wide v8, v0, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    .line 18
    .line 19
    iget-wide v10, v0, Landroidx/media3/extractor/mp4/Track;->mediaDurationUs:J

    .line 20
    .line 21
    iget v13, v0, Landroidx/media3/extractor/mp4/Track;->sampleTransformation:I

    .line 22
    .line 23
    iget-object v14, v0, Landroidx/media3/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 24
    .line 25
    iget v15, v0, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 26
    .line 27
    move-object/from16 p1, v1

    .line 28
    .line 29
    iget-object v1, v0, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    .line 30
    .line 31
    move-object/from16 v16, v1

    .line 32
    .line 33
    iget-object v1, v0, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    .line 34
    .line 35
    move-object/from16 v17, v1

    .line 36
    .line 37
    move-object/from16 v1, p1

    .line 38
    .line 39
    invoke-direct/range {v1 .. v17}, Landroidx/media3/extractor/mp4/Track;-><init>(IIJJJJLandroidx/media3/common/Format;I[Landroidx/media3/extractor/mp4/TrackEncryptionBox;I[J[J)V

    .line 40
    .line 41
    .line 42
    return-object v18
.end method

.method public copyWithoutEditLists()Landroidx/media3/extractor/mp4/Track;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v18, Landroidx/media3/extractor/mp4/Track;

    .line 4
    .line 5
    move-object/from16 v1, v18

    .line 6
    .line 7
    iget v2, v0, Landroidx/media3/extractor/mp4/Track;->id:I

    .line 8
    .line 9
    iget v3, v0, Landroidx/media3/extractor/mp4/Track;->type:I

    .line 10
    .line 11
    iget-wide v4, v0, Landroidx/media3/extractor/mp4/Track;->timescale:J

    .line 12
    .line 13
    iget-wide v6, v0, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    .line 14
    .line 15
    iget-wide v8, v0, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    .line 16
    .line 17
    iget-wide v10, v0, Landroidx/media3/extractor/mp4/Track;->mediaDurationUs:J

    .line 18
    .line 19
    iget-object v12, v0, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    .line 20
    .line 21
    iget v13, v0, Landroidx/media3/extractor/mp4/Track;->sampleTransformation:I

    .line 22
    .line 23
    iget-object v14, v0, Landroidx/media3/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 24
    .line 25
    iget v15, v0, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 26
    .line 27
    const/16 v16, 0x0

    .line 28
    .line 29
    const/16 v17, 0x0

    .line 30
    .line 31
    invoke-direct/range {v1 .. v17}, Landroidx/media3/extractor/mp4/Track;-><init>(IIJJJJLandroidx/media3/common/Format;I[Landroidx/media3/extractor/mp4/TrackEncryptionBox;I[J[J)V

    .line 32
    .line 33
    .line 34
    return-object v18
.end method

.method public getSampleDescriptionEncryptionBox(I)Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    aget-object p1, v0, p1

    .line 8
    .line 9
    :goto_0
    return-object p1
.end method
