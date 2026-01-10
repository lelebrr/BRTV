.class final Landroidx/media3/exoplayer/text/ReplacingCuesResolver;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/exoplayer/text/CuesResolver;


# instance fields
.field private final cuesWithTimingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/extractor/text/CuesWithTiming;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method

.method private getIndexOfCuesStartingAfter(J)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 17
    .line 18
    iget-wide v1, v1, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    .line 19
    .line 20
    cmp-long v3, p1, v1

    .line 21
    .line 22
    if-gez v3, :cond_0

    .line 23
    .line 24
    return v0

    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1
.end method


# virtual methods
.method public addCues(Landroidx/media3/extractor/text/CuesWithTiming;J)Z
    .locals 9

    .line 1
    iget-wide v0, p1, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v6, v0, v4

    .line 11
    .line 12
    if-eqz v6, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 18
    .line 19
    .line 20
    iget-wide v0, p1, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    .line 21
    .line 22
    cmp-long v6, v0, p2

    .line 23
    .line 24
    if-gtz v6, :cond_2

    .line 25
    .line 26
    iget-wide v0, p1, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    .line 27
    .line 28
    cmp-long v6, v0, v4

    .line 29
    .line 30
    if-eqz v6, :cond_1

    .line 31
    .line 32
    cmp-long v4, p2, v0

    .line 33
    .line 34
    if-gez v4, :cond_2

    .line 35
    .line 36
    :cond_1
    const/4 v0, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/4 v0, 0x0

    .line 39
    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    sub-int/2addr v1, v3

    .line 46
    :goto_2
    if-ltz v1, :cond_5

    .line 47
    .line 48
    iget-wide v4, p1, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    .line 49
    .line 50
    iget-object v6, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 57
    .line 58
    iget-wide v6, v6, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    .line 59
    .line 60
    cmp-long v8, v4, v6

    .line 61
    .line 62
    if-ltz v8, :cond_3

    .line 63
    .line 64
    iget-object p2, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 65
    .line 66
    add-int/2addr v1, v3

    .line 67
    invoke-virtual {p2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return v0

    .line 71
    :cond_3
    iget-object v4, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 78
    .line 79
    iget-wide v4, v4, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    .line 80
    .line 81
    cmp-long v6, v4, p2

    .line 82
    .line 83
    if-gtz v6, :cond_4

    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    iget-object p2, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {p2, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return v0
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public discardCuesBeforeTimeUs(J)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->getIndexOfCuesStartingAfter(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 9
    .line 10
    add-int/lit8 v2, v0, -0x1

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 17
    .line 18
    iget-wide v1, v1, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    .line 19
    .line 20
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    cmp-long v5, v1, v3

    .line 26
    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    cmp-long v3, v1, p1

    .line 30
    .line 31
    if-ltz v3, :cond_2

    .line 32
    .line 33
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public getCuesAtTimeUs(J)Ld7/u1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ld7/u1;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->getIndexOfCuesStartingAfter(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Ld7/u1;->b:Ld7/g1;

    .line 8
    .line 9
    sget-object p1, Ld7/c5;->e:Ld7/c5;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 21
    .line 22
    iget-wide v1, v0, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    .line 23
    .line 24
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    cmp-long v5, v1, v3

    .line 30
    .line 31
    if-eqz v5, :cond_2

    .line 32
    .line 33
    cmp-long v3, p1, v1

    .line 34
    .line 35
    if-gez v3, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    sget-object p1, Ld7/u1;->b:Ld7/g1;

    .line 39
    .line 40
    sget-object p1, Ld7/c5;->e:Ld7/c5;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    :goto_0
    iget-object p1, v0, Landroidx/media3/extractor/text/CuesWithTiming;->cues:Ld7/u1;

    .line 44
    .line 45
    :goto_1
    return-object p1
.end method

.method public getNextCueChangeTimeUs(J)J
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/high16 v1, -0x8000000000000000L

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-wide v1

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 20
    .line 21
    iget-wide v4, v0, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    .line 22
    .line 23
    cmp-long v0, p1, v4

    .line 24
    .line 25
    if-gez v0, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 34
    .line 35
    iget-wide p1, p1, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    .line 36
    .line 37
    return-wide p1

    .line 38
    :cond_1
    const/4 v0, 0x1

    .line 39
    const/4 v3, 0x1

    .line 40
    :goto_0
    iget-object v4, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    if-ge v3, v4, :cond_4

    .line 52
    .line 53
    iget-object v4, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 60
    .line 61
    iget-wide v7, v4, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    .line 62
    .line 63
    cmp-long v9, p1, v7

    .line 64
    .line 65
    if-gez v9, :cond_3

    .line 66
    .line 67
    iget-object v1, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 68
    .line 69
    sub-int/2addr v3, v0

    .line 70
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 75
    .line 76
    iget-wide v0, v0, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    .line 77
    .line 78
    cmp-long v2, v0, v5

    .line 79
    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    cmp-long v2, v0, p1

    .line 83
    .line 84
    if-lez v2, :cond_2

    .line 85
    .line 86
    iget-wide p1, v4, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    .line 87
    .line 88
    cmp-long v2, v0, p1

    .line 89
    .line 90
    if-gez v2, :cond_2

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    iget-wide v0, v4, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    .line 94
    .line 95
    :goto_1
    return-wide v0

    .line 96
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-static {v0}, Ld7/d0;->n(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 106
    .line 107
    iget-wide v3, v0, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    .line 108
    .line 109
    cmp-long v0, v3, v5

    .line 110
    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    cmp-long v0, p1, v3

    .line 114
    .line 115
    if-gez v0, :cond_5

    .line 116
    .line 117
    move-wide v1, v3

    .line 118
    :cond_5
    return-wide v1
.end method

.method public getPreviousCueChangeTimeUs(J)J
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    if-nez v0, :cond_7

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 22
    .line 23
    iget-wide v3, v0, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    .line 24
    .line 25
    cmp-long v0, p1, v3

    .line 26
    .line 27
    if-gez v0, :cond_0

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_0
    const/4 v0, 0x1

    .line 31
    const/4 v3, 0x1

    .line 32
    :goto_0
    iget-object v4, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-ge v3, v4, :cond_4

    .line 39
    .line 40
    iget-object v4, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 47
    .line 48
    iget-wide v4, v4, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    .line 49
    .line 50
    cmp-long v6, p1, v4

    .line 51
    .line 52
    if-nez v6, :cond_1

    .line 53
    .line 54
    return-wide v4

    .line 55
    :cond_1
    if-gez v6, :cond_3

    .line 56
    .line 57
    iget-object v4, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 58
    .line 59
    sub-int/2addr v3, v0

    .line 60
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 65
    .line 66
    iget-wide v3, v0, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    .line 67
    .line 68
    cmp-long v5, v3, v1

    .line 69
    .line 70
    if-eqz v5, :cond_2

    .line 71
    .line 72
    cmp-long v1, v3, p1

    .line 73
    .line 74
    if-gtz v1, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    iget-wide v3, v0, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    .line 78
    .line 79
    :goto_1
    return-wide v3

    .line 80
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-static {v0}, Ld7/d0;->n(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 90
    .line 91
    iget-wide v3, v0, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    .line 92
    .line 93
    cmp-long v5, v3, v1

    .line 94
    .line 95
    if-eqz v5, :cond_5

    .line 96
    .line 97
    cmp-long v1, p1, v3

    .line 98
    .line 99
    if-gez v1, :cond_6

    .line 100
    .line 101
    :cond_5
    iget-wide v3, v0, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    .line 102
    .line 103
    :cond_6
    return-wide v3

    .line 104
    :cond_7
    :goto_2
    return-wide v1
.end method
