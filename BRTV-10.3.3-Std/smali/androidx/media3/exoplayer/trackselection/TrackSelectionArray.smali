.class public final Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field private hashCode:I

.field public final length:I

.field private final trackSelections:[Landroidx/media3/exoplayer/trackselection/TrackSelection;


# direct methods
.method public varargs constructor <init>([Landroidx/media3/exoplayer/trackselection/TrackSelection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;->trackSelections:[Landroidx/media3/exoplayer/trackselection/TrackSelection;

    .line 5
    .line 6
    array-length p1, p1

    .line 7
    iput p1, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;->length:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    if-eqz p1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-class v1, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;

    .line 12
    .line 13
    if-eq v1, v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;->trackSelections:[Landroidx/media3/exoplayer/trackselection/TrackSelection;

    .line 19
    .line 20
    iget-object p1, p1, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;->trackSelections:[Landroidx/media3/exoplayer/trackselection/TrackSelection;

    .line 21
    .line 22
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public get(I)Landroidx/media3/exoplayer/trackselection/TrackSelection;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;->trackSelections:[Landroidx/media3/exoplayer/trackselection/TrackSelection;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method

.method public getAll()[Landroidx/media3/exoplayer/trackselection/TrackSelection;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;->trackSelections:[Landroidx/media3/exoplayer/trackselection/TrackSelection;

    .line 2
    .line 3
    invoke-virtual {v0}, [Landroidx/media3/exoplayer/trackselection/TrackSelection;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/media3/exoplayer/trackselection/TrackSelection;

    .line 8
    .line 9
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;->hashCode:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;->trackSelections:[Landroidx/media3/exoplayer/trackselection/TrackSelection;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x20f

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    iput v1, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;->hashCode:I

    .line 15
    .line 16
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;->hashCode:I

    .line 17
    .line 18
    return v0
.end method
