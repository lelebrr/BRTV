.class final Landroidx/media3/extractor/text/ttml/TtmlSubtitle;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/extractor/text/Subtitle;


# instance fields
.field private final eventTimesUs:[J

.field private final globalStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/ttml/TtmlStyle;",
            ">;"
        }
    .end annotation
.end field

.field private final imageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final regionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/ttml/TtmlRegion;",
            ">;"
        }
    .end annotation
.end field

.field private final root:Landroidx/media3/extractor/text/ttml/TtmlNode;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/text/ttml/TtmlNode;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/text/ttml/TtmlNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/ttml/TtmlStyle;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/ttml/TtmlRegion;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->root:Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->regionMap:Ljava/util/Map;

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->imageMap:Ljava/util/Map;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    :goto_0
    iput-object p2, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->globalStyles:Ljava/util/Map;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/media3/extractor/text/ttml/TtmlNode;->getEventTimesUs()[J

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->root:Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 2
    .line 3
    iget-object v3, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->globalStyles:Ljava/util/Map;

    .line 4
    .line 5
    iget-object v4, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->regionMap:Ljava/util/Map;

    .line 6
    .line 7
    iget-object v5, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->imageMap:Ljava/util/Map;

    .line 8
    .line 9
    move-wide v1, p1

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/extractor/text/ttml/TtmlNode;->getCues(JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getEventTime(I)J
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    .line 2
    .line 3
    aget-wide v1, v0, p1

    .line 4
    .line 5
    return-wide v1
.end method

.method public getEventTimeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public getGlobalStyles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/ttml/TtmlStyle;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->globalStyles:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/Util;->binarySearchCeil([JJZZ)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object p2, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    .line 9
    .line 10
    array-length p2, p2

    .line 11
    if-ge p1, p2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, -0x1

    .line 15
    :goto_0
    return p1
.end method

.method public getRoot()Landroidx/media3/extractor/text/ttml/TtmlNode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->root:Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 2
    .line 3
    return-object v0
.end method
