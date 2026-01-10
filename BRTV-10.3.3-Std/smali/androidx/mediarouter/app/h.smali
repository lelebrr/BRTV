.class public final Landroidx/mediarouter/app/h;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Landroidx/mediarouter/app/u;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/app/h;->a:Landroidx/mediarouter/app/u;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/h;->a:Landroidx/mediarouter/app/u;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Landroidx/mediarouter/app/u;->G:Ljava/util/HashSet;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    new-instance v1, Landroidx/mediarouter/app/o;

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-direct {v1, v3, v0}, Landroidx/mediarouter/app/o;-><init>(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v3, v0, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    :goto_0
    iget-object v6, v0, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 38
    .line 39
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-ge v4, v6, :cond_3

    .line 44
    .line 45
    iget-object v6, v0, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 46
    .line 47
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    add-int v7, v3, v4

    .line 52
    .line 53
    iget-object v8, v0, Landroidx/mediarouter/app/u;->E:Landroidx/mediarouter/app/t;

    .line 54
    .line 55
    invoke-virtual {v8, v7}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    check-cast v7, Lq1/s0;

    .line 60
    .line 61
    iget-object v8, v0, Landroidx/mediarouter/app/u;->G:Ljava/util/HashSet;

    .line 62
    .line 63
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-eqz v7, :cond_1

    .line 68
    .line 69
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    .line 70
    .line 71
    const/4 v8, 0x0

    .line 72
    const/high16 v9, 0x3f800000    # 1.0f

    .line 73
    .line 74
    invoke-direct {v7, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 75
    .line 76
    .line 77
    iget v8, v0, Landroidx/mediarouter/app/u;->i0:I

    .line 78
    .line 79
    int-to-long v8, v8

    .line 80
    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 87
    .line 88
    .line 89
    if-nez v5, :cond_0

    .line 90
    .line 91
    invoke-virtual {v7, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 92
    .line 93
    .line 94
    const/4 v5, 0x1

    .line 95
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->clearAnimation()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 99
    .line 100
    .line 101
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {v0, v2}, Landroidx/mediarouter/app/u;->m(Z)V

    .line 105
    .line 106
    .line 107
    :cond_3
    return-void
.end method
