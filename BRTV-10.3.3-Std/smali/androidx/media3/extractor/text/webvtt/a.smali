.class public final synthetic Landroidx/media3/extractor/text/webvtt/a;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/extractor/text/webvtt/a;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/extractor/text/webvtt/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    .line 7
    .line 8
    check-cast p2, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    .line 9
    .line 10
    invoke-static {p1, p2}, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->a(Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :pswitch_0
    check-cast p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;

    .line 16
    .line 17
    check-cast p2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;

    .line 18
    .line 19
    invoke-static {p1, p2}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->a(Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
