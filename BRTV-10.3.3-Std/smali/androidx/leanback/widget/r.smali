.class public final Landroidx/leanback/widget/r;
.super Landroidx/leanback/widget/s;
.source "MyApplication"


# instance fields
.field public final synthetic c:Landroidx/leanback/widget/GridLayoutManager;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/GridLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/r;->c:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/leanback/widget/s;-><init>(Landroidx/leanback/widget/GridLayoutManager;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k1;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/r;->c:Landroidx/leanback/widget/GridLayoutManager;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/x0;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/x0;->getPosition(Landroid/view/View;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->n:I

    .line 21
    .line 22
    const/high16 v3, 0x40000

    .line 23
    .line 24
    and-int/2addr v2, v3

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    if-le p1, v1, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    if-ge p1, v1, :cond_2

    .line 31
    .line 32
    :goto_0
    const/4 p1, -0x1

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const/4 p1, 0x1

    .line 35
    :goto_1
    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->d:I

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    new-instance v0, Landroid/graphics/PointF;

    .line 41
    .line 42
    int-to-float p1, p1

    .line 43
    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_3
    new-instance v0, Landroid/graphics/PointF;

    .line 48
    .line 49
    int-to-float p1, p1

    .line 50
    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method
