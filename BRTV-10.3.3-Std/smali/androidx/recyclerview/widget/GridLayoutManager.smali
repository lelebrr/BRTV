.class public Landroidx/recyclerview/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field public static final l:Ljava/util/Set;


# instance fields
.field public a:Z

.field public b:I

.field public c:[I

.field public d:[Landroid/view/View;

.field public final e:Landroid/util/SparseIntArray;

.field public final f:Landroid/util/SparseIntArray;

.field public g:Landroidx/appcompat/app/c0;

.field public final h:Landroid/graphics/Rect;

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0x42

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/16 v3, 0x21

    .line 16
    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/16 v4, 0x82

    .line 22
    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const/4 v5, 0x4

    .line 28
    new-array v5, v5, [Ljava/lang/Integer;

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    aput-object v1, v5, v6

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    aput-object v2, v5, v1

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    aput-object v3, v5, v1

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    aput-object v4, v5, v1

    .line 41
    .line 42
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Landroidx/recyclerview/widget/GridLayoutManager;->l:Ljava/util/Set;

    .line 54
    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->a:Z

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 31
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    .line 32
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    .line 33
    new-instance v1, Landroidx/recyclerview/widget/u;

    .line 34
    invoke-direct {v1}, Landroidx/appcompat/app/c0;-><init>()V

    .line 35
    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/app/c0;

    .line 36
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    .line 37
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    .line 38
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    .line 39
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->k:I

    const/4 v0, 0x7

    .line 40
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->C(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    .line 15
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->a:Z

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 18
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    .line 19
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    .line 20
    new-instance v1, Landroidx/recyclerview/widget/u;

    .line 21
    invoke-direct {v1}, Landroidx/appcompat/app/c0;-><init>()V

    .line 22
    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/app/c0;

    .line 23
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    .line 24
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    .line 25
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    .line 26
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->k:I

    .line 27
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->C(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->a:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 4
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    .line 5
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    .line 6
    new-instance v1, Landroidx/recyclerview/widget/u;

    .line 7
    invoke-direct {v1}, Landroidx/appcompat/app/c0;-><init>()V

    .line 8
    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/app/c0;

    .line 9
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    .line 10
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    .line 11
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    .line 12
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->k:I

    .line 13
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/x0;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p1

    .line 14
    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->b:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->C(I)V

    return-void
.end method


# virtual methods
.method public final A(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 1

    .line 1
    iget-boolean p3, p3, Landroidx/recyclerview/widget/l1;->g:Z

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/app/c0;

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Landroidx/appcompat/app/c0;->j(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    invoke-virtual {p3, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-eq p3, v0, :cond_1

    .line 20
    .line 21
    return p3

    .line 22
    :cond_1
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/e1;->b(I)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-ne p2, v0, :cond_2

    .line 27
    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string p3, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    .line 31
    .line 32
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string p2, "GridLayoutManager"

    .line 43
    .line 44
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    return p1

    .line 49
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/app/c0;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/c0;->j(I)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1
.end method

.method public final B(Landroid/view/View;IZ)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->b:Landroid/graphics/Rect;

    .line 8
    .line 9
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 10
    .line 11
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 12
    .line 13
    add-int/2addr v2, v3

    .line 14
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 15
    .line 16
    add-int/2addr v2, v3

    .line 17
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 18
    .line 19
    add-int/2addr v2, v3

    .line 20
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 21
    .line 22
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 23
    .line 24
    add-int/2addr v3, v1

    .line 25
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 26
    .line 27
    add-int/2addr v3, v1

    .line 28
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 29
    .line 30
    add-int/2addr v3, v1

    .line 31
    iget v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e:I

    .line 32
    .line 33
    iget v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->f:I

    .line 34
    .line 35
    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->x(II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v6, 0x1

    .line 43
    if-ne v4, v6, :cond_0

    .line 44
    .line 45
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 46
    .line 47
    invoke-static {v1, p2, v3, v4, v5}, Landroidx/recyclerview/widget/x0;->getChildMeasureSpec(IIIIZ)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/d0;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroidx/recyclerview/widget/d0;->l()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getHeightMode()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 62
    .line 63
    invoke-static {v1, v3, v2, v0, v6}, Landroidx/recyclerview/widget/x0;->getChildMeasureSpec(IIIIZ)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 69
    .line 70
    invoke-static {v1, p2, v2, v4, v5}, Landroidx/recyclerview/widget/x0;->getChildMeasureSpec(IIIIZ)I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/d0;

    .line 75
    .line 76
    invoke-virtual {v1}, Landroidx/recyclerview/widget/d0;->l()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getWidthMode()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 85
    .line 86
    invoke-static {v1, v2, v3, v0, v6}, Landroidx/recyclerview/widget/x0;->getChildMeasureSpec(IIIIZ)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    move v7, v0

    .line 91
    move v0, p2

    .line 92
    move p2, v7

    .line 93
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 98
    .line 99
    if-eqz p3, :cond_1

    .line 100
    .line 101
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/x0;->shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    .line 102
    .line 103
    .line 104
    move-result p3

    .line 105
    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/x0;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    :goto_1
    if-eqz p3, :cond_2

    .line 111
    .line 112
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 113
    .line 114
    .line 115
    :cond_2
    return-void
.end method

.method public final C(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->a:Z

    .line 8
    .line 9
    if-lt p1, v0, :cond_1

    .line 10
    .line 11
    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/app/c0;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/appcompat/app/c0;->k()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->requestLayout()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v1, "Span count should be at least 1. Provided "

    .line 25
    .line 26
    invoke-static {p1, v1}, La/e;->n(ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method public final D()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getPaddingRight()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    sub-int/2addr v0, v1

    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getPaddingLeft()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :goto_0
    sub-int/2addr v0, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getPaddingBottom()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    sub-int/2addr v0, v1

    .line 32
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getPaddingTop()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    goto :goto_0

    .line 37
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->r(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 2
    .line 3
    return p1
.end method

.method public final collectPrefetchPositionsForLayoutState(Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/y;Landroidx/recyclerview/widget/w0;)V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 6
    .line 7
    if-ge v2, v3, :cond_0

    .line 8
    .line 9
    iget v3, p2, Landroidx/recyclerview/widget/y;->d:I

    .line 10
    .line 11
    if-ltz v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/l1;->b()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-ge v3, v4, :cond_0

    .line 18
    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    iget v3, p2, Landroidx/recyclerview/widget/y;->d:I

    .line 22
    .line 23
    iget v4, p2, Landroidx/recyclerview/widget/y;->g:I

    .line 24
    .line 25
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    move-object v5, p3

    .line 30
    check-cast v5, Landroidx/recyclerview/widget/r;

    .line 31
    .line 32
    invoke-virtual {v5, v3, v4}, Landroidx/recyclerview/widget/r;->a(II)V

    .line 33
    .line 34
    .line 35
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/app/c0;

    .line 36
    .line 37
    invoke-virtual {v4, v3}, Landroidx/appcompat/app/c0;->j(I)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    sub-int/2addr v0, v3

    .line 42
    iget v3, p2, Landroidx/recyclerview/widget/y;->d:I

    .line 43
    .line 44
    iget v4, p2, Landroidx/recyclerview/widget/y;->e:I

    .line 45
    .line 46
    add-int/2addr v3, v4

    .line 47
    iput v3, p2, Landroidx/recyclerview/widget/y;->d:I

    .line 48
    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public final findReferenceChild(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;ZZ)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getChildCount()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    sub-int/2addr p3, v0

    .line 13
    const/4 p4, -0x1

    .line 14
    const/4 v0, -0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p4, 0x0

    .line 17
    move p4, p3

    .line 18
    const/4 p3, 0x0

    .line 19
    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/l1;->b()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/d0;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroidx/recyclerview/widget/d0;->k()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/d0;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroidx/recyclerview/widget/d0;->g()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x0

    .line 39
    move-object v5, v4

    .line 40
    :goto_1
    if-eq p3, p4, :cond_6

    .line 41
    .line 42
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/x0;->getChildAt(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/x0;->getPosition(Landroid/view/View;)I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-ltz v7, :cond_5

    .line 51
    .line 52
    if-ge v7, v1, :cond_5

    .line 53
    .line 54
    invoke-virtual {p0, v7, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->z(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-eqz v7, :cond_1

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 66
    .line 67
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->a:Landroidx/recyclerview/widget/p1;

    .line 68
    .line 69
    invoke-virtual {v7}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eqz v7, :cond_2

    .line 74
    .line 75
    if-nez v5, :cond_5

    .line 76
    .line 77
    move-object v5, v6

    .line 78
    goto :goto_3

    .line 79
    :cond_2
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/d0;

    .line 80
    .line 81
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/d0;->e(Landroid/view/View;)I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-ge v7, v3, :cond_4

    .line 86
    .line 87
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/d0;

    .line 88
    .line 89
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/d0;->b(Landroid/view/View;)I

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-ge v7, v2, :cond_3

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    return-object v6

    .line 97
    :cond_4
    :goto_2
    if-nez v4, :cond_5

    .line 98
    .line 99
    move-object v4, v6

    .line 100
    :cond_5
    :goto_3
    add-int/2addr p3, v0

    .line 101
    goto :goto_1

    .line 102
    :cond_6
    if-eqz v4, :cond_7

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_7
    move-object v4, v5

    .line 106
    :goto_4
    return-object v4
.end method

.method public final generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x2

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 8
    .line 9
    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 3

    .line 2
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 5
    iput v2, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e:I

    .line 6
    iput v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->f:I

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 8
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iput v2, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e:I

    .line 10
    iput v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->f:I

    return-object v0
.end method

.method public final getColumnCountForAccessibility(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getItemCount()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/l1;->b()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ge v0, v1, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return p1

    .line 25
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/l1;->b()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    sub-int/2addr v0, v1

    .line 30
    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->y(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    add-int/2addr p1, v1

    .line 35
    return p1
.end method

.method public final getRowCountForAccessibility(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getItemCount()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/l1;->b()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ge v0, v1, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return p1

    .line 25
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/l1;->b()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    sub-int/2addr v0, v1

    .line 30
    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->y(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    add-int/2addr p1, v1

    .line 35
    return p1
.end method

.method public final layoutChunk(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/y;Landroidx/recyclerview/widget/x;)V
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    move-object/from16 v2, p3

    .line 8
    .line 9
    move-object/from16 v7, p4

    .line 10
    .line 11
    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/d0;

    .line 12
    .line 13
    invoke-virtual {v3}, Landroidx/recyclerview/widget/d0;->j()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v8, 0x1

    .line 18
    const/high16 v5, 0x40000000    # 2.0f

    .line 19
    .line 20
    if-eq v3, v5, :cond_0

    .line 21
    .line 22
    const/4 v9, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v9, 0x0

    .line 25
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/x0;->getChildCount()I

    .line 26
    .line 27
    .line 28
    move-result v10

    .line 29
    if-lez v10, :cond_1

    .line 30
    .line 31
    iget-object v10, v6, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    .line 32
    .line 33
    iget v11, v6, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 34
    .line 35
    aget v10, v10, v11

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v10, 0x0

    .line 39
    :goto_1
    if-eqz v9, :cond_2

    .line 40
    .line 41
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->D()V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget v11, v2, Landroidx/recyclerview/widget/y;->e:I

    .line 45
    .line 46
    if-ne v11, v8, :cond_3

    .line 47
    .line 48
    const/4 v11, 0x1

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    const/4 v11, 0x0

    .line 51
    :goto_2
    iget v12, v6, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 52
    .line 53
    if-nez v11, :cond_4

    .line 54
    .line 55
    iget v12, v2, Landroidx/recyclerview/widget/y;->d:I

    .line 56
    .line 57
    invoke-virtual {v6, v12, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->z(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 58
    .line 59
    .line 60
    move-result v12

    .line 61
    iget v13, v2, Landroidx/recyclerview/widget/y;->d:I

    .line 62
    .line 63
    invoke-virtual {v6, v13, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->A(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 64
    .line 65
    .line 66
    move-result v13

    .line 67
    add-int/2addr v12, v13

    .line 68
    :cond_4
    const/4 v13, 0x0

    .line 69
    :goto_3
    iget v14, v6, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 70
    .line 71
    if-ge v13, v14, :cond_8

    .line 72
    .line 73
    iget v14, v2, Landroidx/recyclerview/widget/y;->d:I

    .line 74
    .line 75
    if-ltz v14, :cond_8

    .line 76
    .line 77
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/l1;->b()I

    .line 78
    .line 79
    .line 80
    move-result v15

    .line 81
    if-ge v14, v15, :cond_8

    .line 82
    .line 83
    if-lez v12, :cond_8

    .line 84
    .line 85
    iget v14, v2, Landroidx/recyclerview/widget/y;->d:I

    .line 86
    .line 87
    invoke-virtual {v6, v14, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->A(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 88
    .line 89
    .line 90
    move-result v15

    .line 91
    iget v5, v6, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 92
    .line 93
    if-gt v15, v5, :cond_7

    .line 94
    .line 95
    sub-int/2addr v12, v15

    .line 96
    if-gez v12, :cond_5

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_5
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/y;->b(Landroidx/recyclerview/widget/e1;)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    if-nez v5, :cond_6

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_6
    iget-object v14, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 107
    .line 108
    aput-object v5, v14, v13

    .line 109
    .line 110
    add-int/lit8 v13, v13, 0x1

    .line 111
    .line 112
    const/high16 v5, 0x40000000    # 2.0f

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 116
    .line 117
    const-string v1, "Item at position "

    .line 118
    .line 119
    const-string v2, " requires "

    .line 120
    .line 121
    const-string v3, " spans but GridLayoutManager has only "

    .line 122
    .line 123
    invoke-static {v1, v14, v2, v15, v3}, La/e;->v(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    iget v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v2, " spans."

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v0

    .line 145
    :cond_8
    :goto_4
    if-nez v13, :cond_9

    .line 146
    .line 147
    iput-boolean v8, v7, Landroidx/recyclerview/widget/x;->b:Z

    .line 148
    .line 149
    return-void

    .line 150
    :cond_9
    if-eqz v11, :cond_a

    .line 151
    .line 152
    move v14, v13

    .line 153
    const/4 v12, 0x0

    .line 154
    const/4 v15, 0x1

    .line 155
    goto :goto_5

    .line 156
    :cond_a
    add-int/lit8 v12, v13, -0x1

    .line 157
    .line 158
    const/4 v14, -0x1

    .line 159
    const/4 v15, -0x1

    .line 160
    :goto_5
    const/4 v5, 0x0

    .line 161
    :goto_6
    if-eq v12, v14, :cond_b

    .line 162
    .line 163
    iget-object v8, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 164
    .line 165
    aget-object v8, v8, v12

    .line 166
    .line 167
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 168
    .line 169
    .line 170
    move-result-object v16

    .line 171
    move-object/from16 v4, v16

    .line 172
    .line 173
    check-cast v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 174
    .line 175
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/x0;->getPosition(Landroid/view/View;)I

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    invoke-virtual {v6, v8, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->A(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    iput v8, v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->f:I

    .line 184
    .line 185
    iput v5, v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e:I

    .line 186
    .line 187
    add-int/2addr v5, v8

    .line 188
    add-int/2addr v12, v15

    .line 189
    const/4 v8, 0x1

    .line 190
    goto :goto_6

    .line 191
    :cond_b
    const/4 v0, 0x0

    .line 192
    const/4 v1, 0x0

    .line 193
    const/4 v4, 0x0

    .line 194
    :goto_7
    if-ge v1, v13, :cond_11

    .line 195
    .line 196
    iget-object v5, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 197
    .line 198
    aget-object v5, v5, v1

    .line 199
    .line 200
    iget-object v8, v2, Landroidx/recyclerview/widget/y;->k:Ljava/util/List;

    .line 201
    .line 202
    if-nez v8, :cond_d

    .line 203
    .line 204
    if-eqz v11, :cond_c

    .line 205
    .line 206
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/x0;->addView(Landroid/view/View;)V

    .line 207
    .line 208
    .line 209
    const/4 v8, 0x0

    .line 210
    goto :goto_8

    .line 211
    :cond_c
    const/4 v8, 0x0

    .line 212
    invoke-virtual {v6, v5, v8}, Landroidx/recyclerview/widget/x0;->addView(Landroid/view/View;I)V

    .line 213
    .line 214
    .line 215
    goto :goto_8

    .line 216
    :cond_d
    const/4 v8, 0x0

    .line 217
    if-eqz v11, :cond_e

    .line 218
    .line 219
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/x0;->addDisappearingView(Landroid/view/View;)V

    .line 220
    .line 221
    .line 222
    goto :goto_8

    .line 223
    :cond_e
    invoke-virtual {v6, v5, v8}, Landroidx/recyclerview/widget/x0;->addDisappearingView(Landroid/view/View;I)V

    .line 224
    .line 225
    .line 226
    :goto_8
    iget-object v12, v6, Landroidx/recyclerview/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    .line 227
    .line 228
    invoke-virtual {v6, v5, v12}, Landroidx/recyclerview/widget/x0;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v6, v5, v3, v8}, Landroidx/recyclerview/widget/GridLayoutManager;->B(Landroid/view/View;IZ)V

    .line 232
    .line 233
    .line 234
    iget-object v8, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/d0;

    .line 235
    .line 236
    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/d0;->c(Landroid/view/View;)I

    .line 237
    .line 238
    .line 239
    move-result v8

    .line 240
    if-le v8, v4, :cond_f

    .line 241
    .line 242
    move v4, v8

    .line 243
    :cond_f
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 244
    .line 245
    .line 246
    move-result-object v8

    .line 247
    check-cast v8, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 248
    .line 249
    iget-object v12, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/d0;

    .line 250
    .line 251
    invoke-virtual {v12, v5}, Landroidx/recyclerview/widget/d0;->d(Landroid/view/View;)I

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    int-to-float v5, v5

    .line 256
    const/high16 v12, 0x3f800000    # 1.0f

    .line 257
    .line 258
    mul-float v5, v5, v12

    .line 259
    .line 260
    iget v8, v8, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->f:I

    .line 261
    .line 262
    int-to-float v8, v8

    .line 263
    div-float/2addr v5, v8

    .line 264
    cmpl-float v8, v5, v0

    .line 265
    .line 266
    if-lez v8, :cond_10

    .line 267
    .line 268
    move v0, v5

    .line 269
    :cond_10
    add-int/lit8 v1, v1, 0x1

    .line 270
    .line 271
    goto :goto_7

    .line 272
    :cond_11
    if-eqz v9, :cond_13

    .line 273
    .line 274
    iget v1, v6, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 275
    .line 276
    int-to-float v1, v1

    .line 277
    mul-float v0, v0, v1

    .line 278
    .line 279
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->r(I)V

    .line 288
    .line 289
    .line 290
    const/4 v4, 0x0

    .line 291
    const/4 v8, 0x0

    .line 292
    :goto_9
    if-ge v8, v13, :cond_13

    .line 293
    .line 294
    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 295
    .line 296
    aget-object v0, v0, v8

    .line 297
    .line 298
    const/4 v1, 0x1

    .line 299
    const/high16 v3, 0x40000000    # 2.0f

    .line 300
    .line 301
    invoke-virtual {v6, v0, v3, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->B(Landroid/view/View;IZ)V

    .line 302
    .line 303
    .line 304
    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/d0;

    .line 305
    .line 306
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/d0;->c(Landroid/view/View;)I

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    if-le v0, v4, :cond_12

    .line 311
    .line 312
    move v4, v0

    .line 313
    :cond_12
    add-int/lit8 v8, v8, 0x1

    .line 314
    .line 315
    goto :goto_9

    .line 316
    :cond_13
    const/4 v8, 0x0

    .line 317
    :goto_a
    if-ge v8, v13, :cond_17

    .line 318
    .line 319
    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 320
    .line 321
    aget-object v0, v0, v8

    .line 322
    .line 323
    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/d0;

    .line 324
    .line 325
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/d0;->c(Landroid/view/View;)I

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-eq v1, v4, :cond_15

    .line 330
    .line 331
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 336
    .line 337
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->b:Landroid/graphics/Rect;

    .line 338
    .line 339
    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 340
    .line 341
    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    .line 342
    .line 343
    add-int/2addr v5, v9

    .line 344
    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 345
    .line 346
    add-int/2addr v5, v9

    .line 347
    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 348
    .line 349
    add-int/2addr v5, v9

    .line 350
    iget v9, v3, Landroid/graphics/Rect;->left:I

    .line 351
    .line 352
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 353
    .line 354
    add-int/2addr v9, v3

    .line 355
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 356
    .line 357
    add-int/2addr v9, v3

    .line 358
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 359
    .line 360
    add-int/2addr v9, v3

    .line 361
    iget v3, v1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e:I

    .line 362
    .line 363
    iget v10, v1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->f:I

    .line 364
    .line 365
    invoke-virtual {v6, v3, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->x(II)I

    .line 366
    .line 367
    .line 368
    move-result v3

    .line 369
    iget v10, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 370
    .line 371
    const/4 v11, 0x1

    .line 372
    if-ne v10, v11, :cond_14

    .line 373
    .line 374
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 375
    .line 376
    const/4 v10, 0x0

    .line 377
    const/high16 v11, 0x40000000    # 2.0f

    .line 378
    .line 379
    invoke-static {v3, v11, v9, v1, v10}, Landroidx/recyclerview/widget/x0;->getChildMeasureSpec(IIIIZ)I

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    sub-int v3, v4, v5

    .line 384
    .line 385
    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    goto :goto_b

    .line 390
    :cond_14
    const/4 v10, 0x0

    .line 391
    const/high16 v11, 0x40000000    # 2.0f

    .line 392
    .line 393
    sub-int v9, v4, v9

    .line 394
    .line 395
    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 396
    .line 397
    .line 398
    move-result v9

    .line 399
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 400
    .line 401
    invoke-static {v3, v11, v5, v1, v10}, Landroidx/recyclerview/widget/x0;->getChildMeasureSpec(IIIIZ)I

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    move v1, v9

    .line 406
    :goto_b
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 407
    .line 408
    .line 409
    move-result-object v5

    .line 410
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 411
    .line 412
    invoke-virtual {v6, v0, v1, v3, v5}, Landroidx/recyclerview/widget/x0;->shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    .line 413
    .line 414
    .line 415
    move-result v5

    .line 416
    if-eqz v5, :cond_16

    .line 417
    .line 418
    invoke-virtual {v0, v1, v3}, Landroid/view/View;->measure(II)V

    .line 419
    .line 420
    .line 421
    goto :goto_c

    .line 422
    :cond_15
    const/4 v10, 0x0

    .line 423
    const/high16 v11, 0x40000000    # 2.0f

    .line 424
    .line 425
    :cond_16
    :goto_c
    add-int/lit8 v8, v8, 0x1

    .line 426
    .line 427
    goto :goto_a

    .line 428
    :cond_17
    const/4 v10, 0x0

    .line 429
    iput v4, v7, Landroidx/recyclerview/widget/x;->a:I

    .line 430
    .line 431
    iget v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 432
    .line 433
    const/4 v1, 0x1

    .line 434
    if-ne v0, v1, :cond_19

    .line 435
    .line 436
    iget v0, v2, Landroidx/recyclerview/widget/y;->f:I

    .line 437
    .line 438
    const/4 v1, -0x1

    .line 439
    if-ne v0, v1, :cond_18

    .line 440
    .line 441
    iget v8, v2, Landroidx/recyclerview/widget/y;->b:I

    .line 442
    .line 443
    sub-int v0, v8, v4

    .line 444
    .line 445
    move v2, v0

    .line 446
    const/4 v0, 0x0

    .line 447
    const/4 v1, 0x0

    .line 448
    goto :goto_e

    .line 449
    :cond_18
    iget v8, v2, Landroidx/recyclerview/widget/y;->b:I

    .line 450
    .line 451
    add-int v0, v8, v4

    .line 452
    .line 453
    move v2, v8

    .line 454
    const/4 v1, 0x0

    .line 455
    move v8, v0

    .line 456
    const/4 v0, 0x0

    .line 457
    goto :goto_e

    .line 458
    :cond_19
    const/4 v1, -0x1

    .line 459
    iget v0, v2, Landroidx/recyclerview/widget/y;->f:I

    .line 460
    .line 461
    if-ne v0, v1, :cond_1a

    .line 462
    .line 463
    iget v8, v2, Landroidx/recyclerview/widget/y;->b:I

    .line 464
    .line 465
    sub-int v0, v8, v4

    .line 466
    .line 467
    move v1, v8

    .line 468
    :goto_d
    const/4 v2, 0x0

    .line 469
    const/4 v8, 0x0

    .line 470
    goto :goto_e

    .line 471
    :cond_1a
    iget v8, v2, Landroidx/recyclerview/widget/y;->b:I

    .line 472
    .line 473
    add-int v0, v8, v4

    .line 474
    .line 475
    move v1, v0

    .line 476
    move v0, v8

    .line 477
    goto :goto_d

    .line 478
    :goto_e
    if-ge v10, v13, :cond_1f

    .line 479
    .line 480
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 481
    .line 482
    aget-object v9, v3, v10

    .line 483
    .line 484
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    move-object v11, v3

    .line 489
    check-cast v11, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 490
    .line 491
    iget v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 492
    .line 493
    const/4 v4, 0x1

    .line 494
    if-ne v3, v4, :cond_1c

    .line 495
    .line 496
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    .line 497
    .line 498
    .line 499
    move-result v0

    .line 500
    if-eqz v0, :cond_1b

    .line 501
    .line 502
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/x0;->getPaddingLeft()I

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    iget-object v1, v6, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    .line 507
    .line 508
    iget v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 509
    .line 510
    iget v4, v11, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e:I

    .line 511
    .line 512
    sub-int/2addr v3, v4

    .line 513
    aget v1, v1, v3

    .line 514
    .line 515
    add-int/2addr v0, v1

    .line 516
    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/d0;

    .line 517
    .line 518
    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/d0;->d(Landroid/view/View;)I

    .line 519
    .line 520
    .line 521
    move-result v1

    .line 522
    sub-int v1, v0, v1

    .line 523
    .line 524
    move v12, v0

    .line 525
    move v14, v2

    .line 526
    move v15, v8

    .line 527
    move v8, v1

    .line 528
    goto :goto_f

    .line 529
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/x0;->getPaddingLeft()I

    .line 530
    .line 531
    .line 532
    move-result v0

    .line 533
    iget-object v1, v6, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    .line 534
    .line 535
    iget v3, v11, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e:I

    .line 536
    .line 537
    aget v1, v1, v3

    .line 538
    .line 539
    add-int/2addr v0, v1

    .line 540
    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/d0;

    .line 541
    .line 542
    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/d0;->d(Landroid/view/View;)I

    .line 543
    .line 544
    .line 545
    move-result v1

    .line 546
    add-int/2addr v1, v0

    .line 547
    move v12, v1

    .line 548
    move v14, v2

    .line 549
    move v15, v8

    .line 550
    move v8, v0

    .line 551
    goto :goto_f

    .line 552
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/x0;->getPaddingTop()I

    .line 553
    .line 554
    .line 555
    move-result v2

    .line 556
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    .line 557
    .line 558
    iget v4, v11, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e:I

    .line 559
    .line 560
    aget v3, v3, v4

    .line 561
    .line 562
    add-int/2addr v2, v3

    .line 563
    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/d0;

    .line 564
    .line 565
    invoke-virtual {v3, v9}, Landroidx/recyclerview/widget/d0;->d(Landroid/view/View;)I

    .line 566
    .line 567
    .line 568
    move-result v3

    .line 569
    add-int/2addr v3, v2

    .line 570
    move v8, v0

    .line 571
    move v12, v1

    .line 572
    move v14, v2

    .line 573
    move v15, v3

    .line 574
    :goto_f
    move-object/from16 v0, p0

    .line 575
    .line 576
    move-object v1, v9

    .line 577
    move v2, v8

    .line 578
    move v3, v14

    .line 579
    move v4, v12

    .line 580
    move v5, v15

    .line 581
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/x0;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 582
    .line 583
    .line 584
    iget-object v0, v11, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->a:Landroidx/recyclerview/widget/p1;

    .line 585
    .line 586
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 587
    .line 588
    .line 589
    move-result v0

    .line 590
    if-nez v0, :cond_1d

    .line 591
    .line 592
    iget-object v0, v11, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->a:Landroidx/recyclerview/widget/p1;

    .line 593
    .line 594
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->isUpdated()Z

    .line 595
    .line 596
    .line 597
    move-result v0

    .line 598
    if-eqz v0, :cond_1e

    .line 599
    .line 600
    :cond_1d
    const/4 v0, 0x1

    .line 601
    goto :goto_10

    .line 602
    :cond_1e
    const/4 v0, 0x1

    .line 603
    goto :goto_11

    .line 604
    :goto_10
    iput-boolean v0, v7, Landroidx/recyclerview/widget/x;->c:Z

    .line 605
    .line 606
    :goto_11
    iget-boolean v1, v7, Landroidx/recyclerview/widget/x;->d:Z

    .line 607
    .line 608
    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    .line 609
    .line 610
    .line 611
    move-result v2

    .line 612
    or-int/2addr v1, v2

    .line 613
    iput-boolean v1, v7, Landroidx/recyclerview/widget/x;->d:Z

    .line 614
    .line 615
    add-int/lit8 v10, v10, 0x1

    .line 616
    .line 617
    move v0, v8

    .line 618
    move v1, v12

    .line 619
    move v2, v14

    .line 620
    move v8, v15

    .line 621
    goto/16 :goto_e

    .line 622
    .line 623
    :cond_1f
    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 624
    .line 625
    const/4 v1, 0x0

    .line 626
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 627
    .line 628
    .line 629
    return-void
.end method

.method public final onAnchorReady(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/w;I)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->onAnchorReady(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/w;I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->D()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/recyclerview/widget/l1;->b()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_3

    .line 12
    .line 13
    iget-boolean v0, p2, Landroidx/recyclerview/widget/l1;->g:Z

    .line 14
    .line 15
    if-nez v0, :cond_3

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-ne p4, v0, :cond_0

    .line 19
    .line 20
    const/4 p4, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p4, 0x0

    .line 23
    :goto_0
    iget v1, p3, Landroidx/recyclerview/widget/w;->b:I

    .line 24
    .line 25
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->z(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz p4, :cond_1

    .line 30
    .line 31
    :goto_1
    if-lez v1, :cond_3

    .line 32
    .line 33
    iget p4, p3, Landroidx/recyclerview/widget/w;->b:I

    .line 34
    .line 35
    if-lez p4, :cond_3

    .line 36
    .line 37
    add-int/lit8 p4, p4, -0x1

    .line 38
    .line 39
    iput p4, p3, Landroidx/recyclerview/widget/w;->b:I

    .line 40
    .line 41
    invoke-virtual {p0, p4, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->z(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/l1;->b()I

    .line 47
    .line 48
    .line 49
    move-result p4

    .line 50
    sub-int/2addr p4, v0

    .line 51
    iget v0, p3, Landroidx/recyclerview/widget/w;->b:I

    .line 52
    .line 53
    :goto_2
    if-ge v0, p4, :cond_2

    .line 54
    .line 55
    add-int/lit8 v2, v0, 0x1

    .line 56
    .line 57
    invoke-virtual {p0, v2, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->z(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-le v3, v1, :cond_2

    .line 62
    .line 63
    move v0, v2

    .line 64
    move v1, v3

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    iput v0, p3, Landroidx/recyclerview/widget/w;->b:I

    .line 67
    .line 68
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->s()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)Landroid/view/View;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/x0;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    return-object v4

    .line 15
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    check-cast v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 20
    .line 21
    iget v6, v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e:I

    .line 22
    .line 23
    iget v5, v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->f:I

    .line 24
    .line 25
    add-int/2addr v5, v6

    .line 26
    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    if-nez v7, :cond_1

    .line 31
    .line 32
    return-object v4

    .line 33
    :cond_1
    move/from16 v7, p2

    .line 34
    .line 35
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    const/4 v9, 0x1

    .line 40
    if-ne v7, v9, :cond_2

    .line 41
    .line 42
    const/4 v7, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v7, 0x0

    .line 45
    :goto_0
    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 46
    .line 47
    const/4 v11, -0x1

    .line 48
    if-eq v7, v10, :cond_3

    .line 49
    .line 50
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/x0;->getChildCount()I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    sub-int/2addr v7, v9

    .line 55
    const/4 v10, -0x1

    .line 56
    const/4 v12, -0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/x0;->getChildCount()I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    move v10, v7

    .line 63
    const/4 v7, 0x0

    .line 64
    const/4 v12, 0x1

    .line 65
    :goto_1
    iget v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 66
    .line 67
    if-ne v13, v9, :cond_4

    .line 68
    .line 69
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    .line 70
    .line 71
    .line 72
    move-result v13

    .line 73
    if-eqz v13, :cond_4

    .line 74
    .line 75
    const/4 v13, 0x1

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    const/4 v13, 0x0

    .line 78
    :goto_2
    invoke-virtual {v0, v7, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->y(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 79
    .line 80
    .line 81
    move-result v14

    .line 82
    move v11, v7

    .line 83
    const/4 v8, 0x0

    .line 84
    const/4 v15, -0x1

    .line 85
    const/16 v16, -0x1

    .line 86
    .line 87
    const/16 v17, 0x0

    .line 88
    .line 89
    move-object v7, v4

    .line 90
    :goto_3
    if-eq v11, v10, :cond_5

    .line 91
    .line 92
    invoke-virtual {v0, v11, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->y(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/x0;->getChildAt(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-ne v1, v3, :cond_6

    .line 101
    .line 102
    :cond_5
    :goto_4
    move-object/from16 v21, v7

    .line 103
    .line 104
    goto/16 :goto_c

    .line 105
    .line 106
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 107
    .line 108
    .line 109
    move-result v18

    .line 110
    if-eqz v18, :cond_a

    .line 111
    .line 112
    if-eq v9, v14, :cond_a

    .line 113
    .line 114
    if-eqz v4, :cond_7

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_7
    move-object/from16 v18, v3

    .line 118
    .line 119
    move-object/from16 v21, v7

    .line 120
    .line 121
    :cond_8
    move/from16 v19, v8

    .line 122
    .line 123
    move/from16 v20, v10

    .line 124
    .line 125
    :cond_9
    move/from16 v7, v16

    .line 126
    .line 127
    move/from16 v8, v17

    .line 128
    .line 129
    goto/16 :goto_a

    .line 130
    .line 131
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    check-cast v9, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 136
    .line 137
    iget v2, v9, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e:I

    .line 138
    .line 139
    move-object/from16 v18, v3

    .line 140
    .line 141
    iget v3, v9, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->f:I

    .line 142
    .line 143
    add-int/2addr v3, v2

    .line 144
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 145
    .line 146
    .line 147
    move-result v19

    .line 148
    if-eqz v19, :cond_b

    .line 149
    .line 150
    if-ne v2, v6, :cond_b

    .line 151
    .line 152
    if-ne v3, v5, :cond_b

    .line 153
    .line 154
    return-object v1

    .line 155
    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 156
    .line 157
    .line 158
    move-result v19

    .line 159
    if-eqz v19, :cond_c

    .line 160
    .line 161
    if-eqz v4, :cond_d

    .line 162
    .line 163
    :cond_c
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 164
    .line 165
    .line 166
    move-result v19

    .line 167
    if-nez v19, :cond_e

    .line 168
    .line 169
    if-nez v7, :cond_e

    .line 170
    .line 171
    :cond_d
    move-object/from16 v21, v7

    .line 172
    .line 173
    :goto_5
    move/from16 v19, v8

    .line 174
    .line 175
    move/from16 v20, v10

    .line 176
    .line 177
    move/from16 v7, v16

    .line 178
    .line 179
    move/from16 v8, v17

    .line 180
    .line 181
    goto :goto_9

    .line 182
    :cond_e
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 183
    .line 184
    .line 185
    move-result v19

    .line 186
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 187
    .line 188
    .line 189
    move-result v20

    .line 190
    move-object/from16 v21, v7

    .line 191
    .line 192
    sub-int v7, v20, v19

    .line 193
    .line 194
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 195
    .line 196
    .line 197
    move-result v19

    .line 198
    if-eqz v19, :cond_11

    .line 199
    .line 200
    if-le v7, v8, :cond_f

    .line 201
    .line 202
    :goto_6
    goto :goto_5

    .line 203
    :cond_f
    if-ne v7, v8, :cond_8

    .line 204
    .line 205
    if-le v2, v15, :cond_10

    .line 206
    .line 207
    const/4 v7, 0x1

    .line 208
    goto :goto_7

    .line 209
    :cond_10
    const/4 v7, 0x0

    .line 210
    :goto_7
    if-ne v13, v7, :cond_8

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_11
    if-nez v4, :cond_8

    .line 214
    .line 215
    move/from16 v19, v8

    .line 216
    .line 217
    move/from16 v20, v10

    .line 218
    .line 219
    const/4 v8, 0x0

    .line 220
    const/4 v10, 0x1

    .line 221
    invoke-virtual {v0, v1, v8, v10}, Landroidx/recyclerview/widget/x0;->isViewPartiallyVisible(Landroid/view/View;ZZ)Z

    .line 222
    .line 223
    .line 224
    move-result v22

    .line 225
    if-eqz v22, :cond_9

    .line 226
    .line 227
    move/from16 v8, v17

    .line 228
    .line 229
    if-le v7, v8, :cond_12

    .line 230
    .line 231
    move/from16 v7, v16

    .line 232
    .line 233
    goto :goto_9

    .line 234
    :cond_12
    if-ne v7, v8, :cond_15

    .line 235
    .line 236
    move/from16 v7, v16

    .line 237
    .line 238
    if-le v2, v7, :cond_13

    .line 239
    .line 240
    goto :goto_8

    .line 241
    :cond_13
    const/4 v10, 0x0

    .line 242
    :goto_8
    if-ne v13, v10, :cond_16

    .line 243
    .line 244
    :goto_9
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 245
    .line 246
    .line 247
    move-result v10

    .line 248
    if-eqz v10, :cond_14

    .line 249
    .line 250
    iget v4, v9, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e:I

    .line 251
    .line 252
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    sub-int v2, v3, v2

    .line 261
    .line 262
    move v15, v4

    .line 263
    move/from16 v16, v7

    .line 264
    .line 265
    move/from16 v17, v8

    .line 266
    .line 267
    move-object/from16 v7, v21

    .line 268
    .line 269
    move-object v4, v1

    .line 270
    move v8, v2

    .line 271
    goto :goto_b

    .line 272
    :cond_14
    iget v7, v9, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e:I

    .line 273
    .line 274
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    sub-int v17, v3, v2

    .line 283
    .line 284
    move/from16 v16, v7

    .line 285
    .line 286
    move/from16 v8, v19

    .line 287
    .line 288
    move-object v7, v1

    .line 289
    goto :goto_b

    .line 290
    :cond_15
    move/from16 v7, v16

    .line 291
    .line 292
    :cond_16
    :goto_a
    move/from16 v16, v7

    .line 293
    .line 294
    move/from16 v17, v8

    .line 295
    .line 296
    move/from16 v8, v19

    .line 297
    .line 298
    move-object/from16 v7, v21

    .line 299
    .line 300
    :goto_b
    add-int/2addr v11, v12

    .line 301
    move-object/from16 v1, p3

    .line 302
    .line 303
    move-object/from16 v2, p4

    .line 304
    .line 305
    move-object/from16 v3, v18

    .line 306
    .line 307
    move/from16 v10, v20

    .line 308
    .line 309
    const/4 v9, 0x1

    .line 310
    goto/16 :goto_3

    .line 311
    .line 312
    :goto_c
    if-eqz v4, :cond_17

    .line 313
    .line 314
    goto :goto_d

    .line 315
    :cond_17
    move-object/from16 v4, v21

    .line 316
    .line 317
    :goto_d
    return-object v4
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Lo0/h;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Lo0/h;)V

    .line 2
    .line 3
    .line 4
    const-class p1, Landroid/widget/GridView;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p3, p1}, Lo0/h;->i(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Landroidx/recyclerview/widget/x0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 p2, 0x1

    .line 24
    if-le p1, p2, :cond_0

    .line 25
    .line 26
    sget-object p1, Lo0/c;->s:Lo0/c;

    .line 27
    .line 28
    invoke-virtual {p3, p1}, Lo0/h;->b(Lo0/c;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;Landroid/view/View;Lo0/h;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-super {p0, p3, p4}, Landroidx/recyclerview/widget/x0;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Lo0/h;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 14
    .line 15
    iget-object p3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->a:Landroidx/recyclerview/widget/p1;

    .line 16
    .line 17
    invoke-virtual {p3}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    invoke-virtual {p0, p3, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->y(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 26
    .line 27
    const/4 p3, 0x1

    .line 28
    const/4 v1, 0x0

    .line 29
    if-nez p2, :cond_1

    .line 30
    .line 31
    iget p2, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e:I

    .line 32
    .line 33
    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->f:I

    .line 34
    .line 35
    invoke-static {p2, v0, p1, p3, v1}, Lo0/g;->a(IIIIZ)Lo0/g;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p4, p1}, Lo0/h;->k(Lo0/g;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget p2, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e:I

    .line 44
    .line 45
    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->f:I

    .line 46
    .line 47
    invoke-static {p1, p3, p2, v0, v1}, Lo0/g;->a(IIIIZ)Lo0/g;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p4, p1}, Lo0/h;->k(Lo0/g;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public final onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/app/c0;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/app/c0;->k()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/app/c0;

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/appcompat/app/c0;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Landroid/util/SparseIntArray;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/app/c0;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/app/c0;->k()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/app/c0;

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/appcompat/app/c0;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Landroid/util/SparseIntArray;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/app/c0;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/app/c0;->k()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/app/c0;

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/appcompat/app/c0;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Landroid/util/SparseIntArray;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/app/c0;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/app/c0;->k()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/app/c0;

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/appcompat/app/c0;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Landroid/util/SparseIntArray;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/app/c0;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/app/c0;->k()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/app/c0;

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/appcompat/app/c0;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Landroid/util/SparseIntArray;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onLayoutChildren(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)V
    .locals 7

    .line 1
    iget-boolean v0, p2, Landroidx/recyclerview/widget/l1;->g:Z

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/x0;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 25
    .line 26
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->a:Landroidx/recyclerview/widget/p1;

    .line 27
    .line 28
    invoke-virtual {v5}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    iget v6, v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->f:I

    .line 33
    .line 34
    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    .line 36
    .line 37
    iget v4, v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e:I

    .line 38
    .line 39
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final onLayoutCompleted(Landroidx/recyclerview/widget/l1;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/l1;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->a:Z

    .line 6
    .line 7
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/high16 v1, 0x4000000

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 21
    .line 22
    .line 23
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 11

    .line 1
    sget-object v0, Lo0/c;->s:Lo0/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo0/c;->a()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, -0x1

    .line 10
    if-ne p1, v0, :cond_32

    .line 11
    .line 12
    if-eq p1, v3, :cond_32

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getChildCount()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ge p1, v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/x0;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->isAccessibilityFocused()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/x0;->getChildAt(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    :goto_1
    if-nez p1, :cond_2

    .line 44
    .line 45
    return v1

    .line 46
    :cond_2
    if-nez p2, :cond_3

    .line 47
    .line 48
    return v1

    .line 49
    :cond_3
    const-string v0, "android.view.accessibility.action.ARGUMENT_DIRECTION_INT"

    .line 50
    .line 51
    invoke-virtual {p2, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget-object v4, Landroidx/recyclerview/widget/GridLayoutManager;->l:Ljava/util/Set;

    .line 60
    .line 61
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    return v1

    .line 68
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/x0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-nez p1, :cond_5

    .line 75
    .line 76
    return v1

    .line 77
    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->getAbsoluteAdapterPosition()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->u(I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->t(I)I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-ltz v0, :cond_31

    .line 90
    .line 91
    if-gez v4, :cond_6

    .line 92
    .line 93
    goto/16 :goto_f

    .line 94
    .line 95
    :cond_6
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->v(I)Ljava/util/HashSet;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    .line 100
    .line 101
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_7

    .line 110
    .line 111
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->t(I)I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    invoke-virtual {p0, v5, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->w(II)Ljava/util/HashSet;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->k:I

    .line 120
    .line 121
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-nez v5, :cond_8

    .line 130
    .line 131
    :cond_7
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    .line 132
    .line 133
    iput v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->k:I

    .line 134
    .line 135
    :cond_8
    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    .line 136
    .line 137
    if-ne v5, v3, :cond_9

    .line 138
    .line 139
    move v5, v0

    .line 140
    :cond_9
    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->k:I

    .line 141
    .line 142
    if-ne v6, v3, :cond_a

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_a
    move v4, v6

    .line 146
    :goto_2
    const/16 v6, 0x42

    .line 147
    .line 148
    const/16 v7, 0x11

    .line 149
    .line 150
    if-eq p2, v7, :cond_1b

    .line 151
    .line 152
    const/16 v8, 0x21

    .line 153
    .line 154
    if-eq p2, v8, :cond_17

    .line 155
    .line 156
    if-eq p2, v6, :cond_11

    .line 157
    .line 158
    const/16 v8, 0x82

    .line 159
    .line 160
    if-eq p2, v8, :cond_b

    .line 161
    .line 162
    return v1

    .line 163
    :cond_b
    add-int/2addr p1, v2

    .line 164
    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getItemCount()I

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    if-ge p1, v8, :cond_10

    .line 169
    .line 170
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->u(I)I

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->t(I)I

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    if-ltz v8, :cond_10

    .line 179
    .line 180
    if-gez v9, :cond_c

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_c
    iget v10, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 184
    .line 185
    if-ne v10, v2, :cond_e

    .line 186
    .line 187
    if-le v8, v5, :cond_f

    .line 188
    .line 189
    if-eq v9, v4, :cond_d

    .line 190
    .line 191
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->t(I)I

    .line 192
    .line 193
    .line 194
    move-result v9

    .line 195
    invoke-virtual {p0, v9, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->w(II)Ljava/util/HashSet;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v10

    .line 203
    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v9

    .line 207
    if-eqz v9, :cond_f

    .line 208
    .line 209
    :cond_d
    iput v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    .line 210
    .line 211
    goto/16 :goto_8

    .line 212
    .line 213
    :cond_e
    if-le v8, v5, :cond_f

    .line 214
    .line 215
    if-ne v9, v4, :cond_f

    .line 216
    .line 217
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->u(I)I

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    iput v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    .line 222
    .line 223
    goto/16 :goto_8

    .line 224
    .line 225
    :cond_f
    add-int/lit8 p1, p1, 0x1

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_10
    :goto_4
    const/4 p1, -0x1

    .line 229
    goto/16 :goto_8

    .line 230
    .line 231
    :cond_11
    add-int/2addr p1, v2

    .line 232
    :goto_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getItemCount()I

    .line 233
    .line 234
    .line 235
    move-result v8

    .line 236
    if-ge p1, v8, :cond_10

    .line 237
    .line 238
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->u(I)I

    .line 239
    .line 240
    .line 241
    move-result v8

    .line 242
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->t(I)I

    .line 243
    .line 244
    .line 245
    move-result v9

    .line 246
    if-ltz v8, :cond_10

    .line 247
    .line 248
    if-gez v9, :cond_12

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_12
    iget v10, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 252
    .line 253
    if-ne v10, v2, :cond_15

    .line 254
    .line 255
    if-ne v8, v5, :cond_13

    .line 256
    .line 257
    if-gt v9, v4, :cond_14

    .line 258
    .line 259
    :cond_13
    if-le v8, v5, :cond_16

    .line 260
    .line 261
    :cond_14
    iput v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    .line 262
    .line 263
    iput v9, p0, Landroidx/recyclerview/widget/GridLayoutManager;->k:I

    .line 264
    .line 265
    goto/16 :goto_8

    .line 266
    .line 267
    :cond_15
    if-le v9, v4, :cond_16

    .line 268
    .line 269
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->v(I)Ljava/util/HashSet;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v10

    .line 277
    invoke-virtual {v8, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v8

    .line 281
    if-eqz v8, :cond_16

    .line 282
    .line 283
    iput v9, p0, Landroidx/recyclerview/widget/GridLayoutManager;->k:I

    .line 284
    .line 285
    goto/16 :goto_8

    .line 286
    .line 287
    :cond_16
    add-int/lit8 p1, p1, 0x1

    .line 288
    .line 289
    goto :goto_5

    .line 290
    :cond_17
    sub-int/2addr p1, v2

    .line 291
    :goto_6
    if-ltz p1, :cond_10

    .line 292
    .line 293
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->u(I)I

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->t(I)I

    .line 298
    .line 299
    .line 300
    move-result v9

    .line 301
    if-ltz v8, :cond_10

    .line 302
    .line 303
    if-gez v9, :cond_18

    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_18
    iget v10, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 307
    .line 308
    if-ne v10, v2, :cond_19

    .line 309
    .line 310
    if-ge v8, v5, :cond_1a

    .line 311
    .line 312
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->t(I)I

    .line 313
    .line 314
    .line 315
    move-result v9

    .line 316
    invoke-virtual {p0, v9, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->w(II)Ljava/util/HashSet;

    .line 317
    .line 318
    .line 319
    move-result-object v9

    .line 320
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 321
    .line 322
    .line 323
    move-result-object v10

    .line 324
    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v9

    .line 328
    if-eqz v9, :cond_1a

    .line 329
    .line 330
    iput v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    .line 331
    .line 332
    goto :goto_8

    .line 333
    :cond_19
    if-ge v8, v5, :cond_1a

    .line 334
    .line 335
    if-ne v9, v4, :cond_1a

    .line 336
    .line 337
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->v(I)Ljava/util/HashSet;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    invoke-static {v4}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    check-cast v4, Ljava/lang/Integer;

    .line 346
    .line 347
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 348
    .line 349
    .line 350
    move-result v4

    .line 351
    iput v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    .line 352
    .line 353
    goto :goto_8

    .line 354
    :cond_1a
    add-int/lit8 p1, p1, -0x1

    .line 355
    .line 356
    goto :goto_6

    .line 357
    :cond_1b
    sub-int/2addr p1, v2

    .line 358
    :goto_7
    if-ltz p1, :cond_10

    .line 359
    .line 360
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->u(I)I

    .line 361
    .line 362
    .line 363
    move-result v8

    .line 364
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->t(I)I

    .line 365
    .line 366
    .line 367
    move-result v9

    .line 368
    if-ltz v8, :cond_10

    .line 369
    .line 370
    if-gez v9, :cond_1c

    .line 371
    .line 372
    goto/16 :goto_4

    .line 373
    .line 374
    :cond_1c
    iget v10, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 375
    .line 376
    if-ne v10, v2, :cond_1f

    .line 377
    .line 378
    if-ne v8, v5, :cond_1d

    .line 379
    .line 380
    if-lt v9, v4, :cond_1e

    .line 381
    .line 382
    :cond_1d
    if-ge v8, v5, :cond_20

    .line 383
    .line 384
    :cond_1e
    iput v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    .line 385
    .line 386
    iput v9, p0, Landroidx/recyclerview/widget/GridLayoutManager;->k:I

    .line 387
    .line 388
    goto :goto_8

    .line 389
    :cond_1f
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->v(I)Ljava/util/HashSet;

    .line 390
    .line 391
    .line 392
    move-result-object v8

    .line 393
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 394
    .line 395
    .line 396
    move-result-object v10

    .line 397
    invoke-virtual {v8, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v8

    .line 401
    if-eqz v8, :cond_20

    .line 402
    .line 403
    if-ge v9, v4, :cond_20

    .line 404
    .line 405
    iput v9, p0, Landroidx/recyclerview/widget/GridLayoutManager;->k:I

    .line 406
    .line 407
    goto :goto_8

    .line 408
    :cond_20
    add-int/lit8 p1, p1, -0x1

    .line 409
    .line 410
    goto :goto_7

    .line 411
    :goto_8
    if-ne p1, v3, :cond_30

    .line 412
    .line 413
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 414
    .line 415
    if-nez v4, :cond_30

    .line 416
    .line 417
    if-ne p2, v7, :cond_28

    .line 418
    .line 419
    if-gez v0, :cond_22

    .line 420
    .line 421
    :cond_21
    :goto_9
    const/4 p1, -0x1

    .line 422
    goto/16 :goto_e

    .line 423
    .line 424
    :cond_22
    if-ne v4, v2, :cond_23

    .line 425
    .line 426
    goto :goto_9

    .line 427
    :cond_23
    new-instance p1, Ljava/util/TreeMap;

    .line 428
    .line 429
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    .line 430
    .line 431
    .line 432
    move-result-object p2

    .line 433
    invoke-direct {p1, p2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 434
    .line 435
    .line 436
    const/4 p2, 0x0

    .line 437
    :goto_a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getItemCount()I

    .line 438
    .line 439
    .line 440
    move-result v4

    .line 441
    if-ge p2, v4, :cond_26

    .line 442
    .line 443
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->v(I)Ljava/util/HashSet;

    .line 444
    .line 445
    .line 446
    move-result-object v4

    .line 447
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 448
    .line 449
    .line 450
    move-result-object v4

    .line 451
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 452
    .line 453
    .line 454
    move-result v5

    .line 455
    if-eqz v5, :cond_25

    .line 456
    .line 457
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v5

    .line 461
    check-cast v5, Ljava/lang/Integer;

    .line 462
    .line 463
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 464
    .line 465
    .line 466
    move-result v6

    .line 467
    if-gez v6, :cond_24

    .line 468
    .line 469
    goto :goto_9

    .line 470
    :cond_24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 471
    .line 472
    .line 473
    move-result-object v6

    .line 474
    invoke-virtual {p1, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    goto :goto_b

    .line 478
    :cond_25
    add-int/lit8 p2, p2, 0x1

    .line 479
    .line 480
    goto :goto_a

    .line 481
    :cond_26
    invoke-virtual {p1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 482
    .line 483
    .line 484
    move-result-object p2

    .line 485
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 486
    .line 487
    .line 488
    move-result-object p2

    .line 489
    :cond_27
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 490
    .line 491
    .line 492
    move-result v4

    .line 493
    if-eqz v4, :cond_21

    .line 494
    .line 495
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v4

    .line 499
    check-cast v4, Ljava/lang/Integer;

    .line 500
    .line 501
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 502
    .line 503
    .line 504
    move-result v5

    .line 505
    if-ge v5, v0, :cond_27

    .line 506
    .line 507
    invoke-virtual {p1, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object p1

    .line 511
    check-cast p1, Ljava/lang/Integer;

    .line 512
    .line 513
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 514
    .line 515
    .line 516
    move-result p1

    .line 517
    iput v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    .line 518
    .line 519
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->t(I)I

    .line 520
    .line 521
    .line 522
    move-result p2

    .line 523
    iput p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->k:I

    .line 524
    .line 525
    goto :goto_e

    .line 526
    :cond_28
    if-ne p2, v6, :cond_30

    .line 527
    .line 528
    if-gez v0, :cond_29

    .line 529
    .line 530
    goto :goto_9

    .line 531
    :cond_29
    if-ne v4, v2, :cond_2a

    .line 532
    .line 533
    goto :goto_9

    .line 534
    :cond_2a
    new-instance p1, Ljava/util/TreeMap;

    .line 535
    .line 536
    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 537
    .line 538
    .line 539
    const/4 p2, 0x0

    .line 540
    :goto_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getItemCount()I

    .line 541
    .line 542
    .line 543
    move-result v4

    .line 544
    if-ge p2, v4, :cond_2e

    .line 545
    .line 546
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->v(I)Ljava/util/HashSet;

    .line 547
    .line 548
    .line 549
    move-result-object v4

    .line 550
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 551
    .line 552
    .line 553
    move-result-object v4

    .line 554
    :cond_2b
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 555
    .line 556
    .line 557
    move-result v5

    .line 558
    if-eqz v5, :cond_2d

    .line 559
    .line 560
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v5

    .line 564
    check-cast v5, Ljava/lang/Integer;

    .line 565
    .line 566
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 567
    .line 568
    .line 569
    move-result v6

    .line 570
    if-gez v6, :cond_2c

    .line 571
    .line 572
    goto/16 :goto_9

    .line 573
    .line 574
    :cond_2c
    invoke-virtual {p1, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result v6

    .line 578
    if-nez v6, :cond_2b

    .line 579
    .line 580
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 581
    .line 582
    .line 583
    move-result-object v6

    .line 584
    invoke-virtual {p1, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    goto :goto_d

    .line 588
    :cond_2d
    add-int/lit8 p2, p2, 0x1

    .line 589
    .line 590
    goto :goto_c

    .line 591
    :cond_2e
    invoke-virtual {p1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 592
    .line 593
    .line 594
    move-result-object p2

    .line 595
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 596
    .line 597
    .line 598
    move-result-object p2

    .line 599
    :cond_2f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 600
    .line 601
    .line 602
    move-result v4

    .line 603
    if-eqz v4, :cond_21

    .line 604
    .line 605
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v4

    .line 609
    check-cast v4, Ljava/lang/Integer;

    .line 610
    .line 611
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 612
    .line 613
    .line 614
    move-result v5

    .line 615
    if-le v5, v0, :cond_2f

    .line 616
    .line 617
    invoke-virtual {p1, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object p1

    .line 621
    check-cast p1, Ljava/lang/Integer;

    .line 622
    .line 623
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 624
    .line 625
    .line 626
    move-result p1

    .line 627
    iput v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    .line 628
    .line 629
    iput v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->k:I

    .line 630
    .line 631
    :cond_30
    :goto_e
    if-eq p1, v3, :cond_31

    .line 632
    .line 633
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 634
    .line 635
    .line 636
    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    .line 637
    .line 638
    return v2

    .line 639
    :cond_31
    :goto_f
    return v1

    .line 640
    :cond_32
    const v0, 0x1020037

    .line 641
    .line 642
    .line 643
    if-ne p1, v0, :cond_38

    .line 644
    .line 645
    if-eqz p2, :cond_38

    .line 646
    .line 647
    const-string p1, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    .line 648
    .line 649
    invoke-virtual {p2, p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 650
    .line 651
    .line 652
    move-result p1

    .line 653
    const-string v0, "android.view.accessibility.action.ARGUMENT_COLUMN_INT"

    .line 654
    .line 655
    invoke-virtual {p2, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 656
    .line 657
    .line 658
    move-result p2

    .line 659
    if-eq p1, v3, :cond_37

    .line 660
    .line 661
    if-ne p2, v3, :cond_33

    .line 662
    .line 663
    goto :goto_12

    .line 664
    :cond_33
    iget-object v0, p0, Landroidx/recyclerview/widget/x0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 665
    .line 666
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 667
    .line 668
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 669
    .line 670
    .line 671
    move-result v0

    .line 672
    const/4 v4, 0x0

    .line 673
    :goto_10
    if-ge v4, v0, :cond_36

    .line 674
    .line 675
    iget-object v5, p0, Landroidx/recyclerview/widget/x0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 676
    .line 677
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 678
    .line 679
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 680
    .line 681
    invoke-virtual {p0, v4, v6, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->z(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 682
    .line 683
    .line 684
    move-result v5

    .line 685
    iget-object v6, p0, Landroidx/recyclerview/widget/x0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 686
    .line 687
    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 688
    .line 689
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 690
    .line 691
    invoke-virtual {p0, v4, v7, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->y(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 692
    .line 693
    .line 694
    move-result v6

    .line 695
    iget v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 696
    .line 697
    if-ne v7, v2, :cond_34

    .line 698
    .line 699
    if-ne v5, p2, :cond_35

    .line 700
    .line 701
    if-ne v6, p1, :cond_35

    .line 702
    .line 703
    goto :goto_11

    .line 704
    :cond_34
    if-ne v5, p1, :cond_35

    .line 705
    .line 706
    if-ne v6, p2, :cond_35

    .line 707
    .line 708
    goto :goto_11

    .line 709
    :cond_35
    add-int/lit8 v4, v4, 0x1

    .line 710
    .line 711
    goto :goto_10

    .line 712
    :cond_36
    const/4 v4, -0x1

    .line 713
    :goto_11
    if-le v4, v3, :cond_37

    .line 714
    .line 715
    invoke-virtual {p0, v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 716
    .line 717
    .line 718
    return v2

    .line 719
    :cond_37
    :goto_12
    return v1

    .line 720
    :cond_38
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 721
    .line 722
    .line 723
    move-result p1

    .line 724
    return p1
.end method

.method public final r(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    .line 2
    .line 3
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    array-length v3, v0

    .line 9
    add-int/lit8 v4, v1, 0x1

    .line 10
    .line 11
    if-ne v3, v4, :cond_0

    .line 12
    .line 13
    array-length v3, v0

    .line 14
    sub-int/2addr v3, v2

    .line 15
    aget v3, v0, v3

    .line 16
    .line 17
    if-eq v3, p1, :cond_1

    .line 18
    .line 19
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 20
    .line 21
    new-array v0, v0, [I

    .line 22
    .line 23
    :cond_1
    const/4 v3, 0x0

    .line 24
    aput v3, v0, v3

    .line 25
    .line 26
    div-int v4, p1, v1

    .line 27
    .line 28
    rem-int/2addr p1, v1

    .line 29
    const/4 v5, 0x0

    .line 30
    :goto_0
    if-gt v2, v1, :cond_3

    .line 31
    .line 32
    add-int/2addr v3, p1

    .line 33
    if-lez v3, :cond_2

    .line 34
    .line 35
    sub-int v6, v1, v3

    .line 36
    .line 37
    if-ge v6, p1, :cond_2

    .line 38
    .line 39
    add-int/lit8 v6, v4, 0x1

    .line 40
    .line 41
    sub-int/2addr v3, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v6, v4

    .line 44
    :goto_1
    add-int/2addr v5, v6

    .line 45
    aput v5, v0, v2

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    .line 51
    .line 52
    return-void
.end method

.method public final s()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 11
    .line 12
    new-array v0, v0, [Landroid/view/View;

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public final scrollHorizontallyBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->D()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->s()V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final scrollVerticallyBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->D()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->s()V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/x0;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getPaddingLeft()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getPaddingRight()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/2addr v1, v0

    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getPaddingTop()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getPaddingBottom()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    add-int/2addr v2, v0

    .line 26
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    if-ne v0, v3, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    add-int/2addr p1, v2

    .line 36
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getMinimumHeight()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/x0;->chooseSize(III)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    .line 45
    .line 46
    array-length v0, p3

    .line 47
    sub-int/2addr v0, v3

    .line 48
    aget p3, p3, v0

    .line 49
    .line 50
    add-int/2addr p3, v1

    .line 51
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getMinimumWidth()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/x0;->chooseSize(III)I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    add-int/2addr p1, v1

    .line 65
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getMinimumWidth()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/x0;->chooseSize(III)I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    .line 74
    .line 75
    array-length v0, p1

    .line 76
    sub-int/2addr v0, v3

    .line 77
    aget p1, p1, v0

    .line 78
    .line 79
    add-int/2addr p1, v2

    .line 80
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getMinimumHeight()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/x0;->chooseSize(III)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    :goto_0
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/x0;->setMeasuredDimension(II)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final setStackFromEnd(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 9
    .line 10
    const-string v0, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public final supportsPredictiveItemAnimations()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->a:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final t(I)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/x0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 10
    .line 11
    invoke-virtual {p0, p1, v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->y(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/x0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 19
    .line 20
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 21
    .line 22
    invoke-virtual {p0, p1, v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->z(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    :goto_0
    return p1
.end method

.method public final u(I)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/x0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 11
    .line 12
    invoke-virtual {p0, p1, v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->y(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/x0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 20
    .line 21
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 22
    .line 23
    invoke-virtual {p0, p1, v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->z(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    :goto_0
    return p1
.end method

.method public final v(I)Ljava/util/HashSet;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->u(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->w(II)Ljava/util/HashSet;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final w(II)Ljava/util/HashSet;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/recyclerview/widget/x0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/e1;

    .line 9
    .line 10
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 11
    .line 12
    invoke-virtual {p0, p2, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->A(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    move v1, p1

    .line 17
    :goto_0
    add-int v2, p1, p2

    .line 18
    .line 19
    if-ge v1, v2, :cond_0

    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-object v0
.end method

.method public final x(II)I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    .line 13
    .line 14
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 15
    .line 16
    sub-int v2, v1, p1

    .line 17
    .line 18
    aget v2, v0, v2

    .line 19
    .line 20
    sub-int/2addr v1, p1

    .line 21
    sub-int/2addr v1, p2

    .line 22
    aget p1, v0, v1

    .line 23
    .line 24
    sub-int/2addr v2, p1

    .line 25
    return v2

    .line 26
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    .line 27
    .line 28
    add-int/2addr p2, p1

    .line 29
    aget p2, v0, p2

    .line 30
    .line 31
    aget p1, v0, p1

    .line 32
    .line 33
    sub-int/2addr p2, p1

    .line 34
    return p2
.end method

.method public final y(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 0

    .line 1
    iget-boolean p3, p3, Landroidx/recyclerview/widget/l1;->g:Z

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/app/c0;

    .line 6
    .line 7
    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 8
    .line 9
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/app/c0;->h(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/e1;->b(I)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    const/4 p3, -0x1

    .line 19
    if-ne p2, p3, :cond_1

    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string p3, "Cannot find span size for pre layout position. "

    .line 24
    .line 25
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p2, "GridLayoutManager"

    .line 36
    .line 37
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    return p1

    .line 42
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/app/c0;

    .line 43
    .line 44
    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 45
    .line 46
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/c0;->h(II)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    return p1
.end method

.method public final z(ILandroidx/recyclerview/widget/e1;Landroidx/recyclerview/widget/l1;)I
    .locals 1

    .line 1
    iget-boolean p3, p3, Landroidx/recyclerview/widget/l1;->g:Z

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/app/c0;

    .line 6
    .line 7
    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 8
    .line 9
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/app/c0;->i(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    .line 15
    .line 16
    const/4 v0, -0x1

    .line 17
    invoke-virtual {p3, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    if-eq p3, v0, :cond_1

    .line 22
    .line 23
    return p3

    .line 24
    :cond_1
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/e1;->b(I)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-ne p2, v0, :cond_2

    .line 29
    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p3, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    .line 33
    .line 34
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string p2, "GridLayoutManager"

    .line 45
    .line 46
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    return p1

    .line 51
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/app/c0;

    .line 52
    .line 53
    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 54
    .line 55
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/c0;->i(II)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    return p1
.end method
