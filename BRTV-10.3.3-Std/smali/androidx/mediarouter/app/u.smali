.class public final Landroidx/mediarouter/app/u;
.super Landroidx/appcompat/app/j;
.source "MyApplication"


# static fields
.field public static final p0:I


# instance fields
.field public A:Landroid/widget/RelativeLayout;

.field public B:Landroid/widget/LinearLayout;

.field public C:Landroid/view/View;

.field public D:Landroidx/mediarouter/app/OverlayListView;

.field public E:Landroidx/mediarouter/app/t;

.field public F:Ljava/util/ArrayList;

.field public G:Ljava/util/HashSet;

.field public H:Ljava/util/HashSet;

.field public I:Ljava/util/HashSet;

.field public J:Landroid/widget/SeekBar;

.field public K:Landroidx/mediarouter/app/s;

.field public L:Lq1/s0;

.field public M:I

.field public N:I

.field public O:I

.field public final P:I

.field public Q:Ljava/util/HashMap;

.field public R:Landroid/support/v4/media/session/MediaControllerCompat;

.field public final S:Landroidx/mediarouter/app/r;

.field public T:Landroid/support/v4/media/session/PlaybackStateCompat;

.field public U:Landroid/support/v4/media/MediaDescriptionCompat;

.field public V:Landroidx/mediarouter/app/q;

.field public W:Landroid/graphics/Bitmap;

.field public X:Landroid/net/Uri;

.field public Y:Z

.field public Z:Landroid/graphics/Bitmap;

.field public b0:I

.field public c0:Z

.field public d0:Z

.field public e0:Z

.field public final f:Lq1/u0;

.field public f0:Z

.field public final g:Landroidx/mediarouter/app/i0;

.field public g0:Z

.field public final h:Lq1/s0;

.field public h0:I

.field public final i:Landroid/content/Context;

.field public i0:I

.field public j:Z

.field public j0:I

.field public k:Z

.field public k0:Landroid/view/animation/Interpolator;

.field public l:I

.field public final l0:Landroid/view/animation/Interpolator;

.field public m:Landroid/widget/Button;

.field public final m0:Landroid/view/animation/Interpolator;

.field public n:Landroid/widget/Button;

.field public final n0:Landroid/view/accessibility/AccessibilityManager;

.field public o:Landroid/widget/ImageButton;

.field public final o0:Landroidx/mediarouter/app/i;

.field public p:Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

.field public q:Landroid/widget/FrameLayout;

.field public r:Landroid/widget/LinearLayout;

.field public s:Landroid/widget/FrameLayout;

.field public t:Landroid/widget/ImageView;

.field public u:Landroid/widget/TextView;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/widget/TextView;

.field public final x:Z

.field public final y:Z

.field public z:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "MediaRouteCtrlDialog"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    const-wide/16 v1, 0x1e

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    long-to-int v1, v0

    .line 16
    sput v1, Landroidx/mediarouter/app/u;->p0:I

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lo9/d;->g(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-static {p1}, Lo9/d;->h(Landroid/view/ContextThemeWrapper;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-direct {p0, p1, v1}, Landroidx/appcompat/app/j;-><init>(Landroid/view/ContextThemeWrapper;I)V

    .line 11
    .line 12
    .line 13
    iput-boolean v0, p0, Landroidx/mediarouter/app/u;->x:Z

    .line 14
    .line 15
    new-instance v0, Landroidx/mediarouter/app/i;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1, p0}, Landroidx/mediarouter/app/i;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/mediarouter/app/u;->o0:Landroidx/mediarouter/app/i;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Landroidx/mediarouter/app/u;->i:Landroid/content/Context;

    .line 28
    .line 29
    new-instance v1, Landroidx/mediarouter/app/r;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Landroidx/mediarouter/app/r;-><init>(Landroidx/mediarouter/app/u;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Landroidx/mediarouter/app/u;->S:Landroidx/mediarouter/app/r;

    .line 35
    .line 36
    invoke-static {v0}, Lq1/u0;->d(Landroid/content/Context;)Lq1/u0;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Landroidx/mediarouter/app/u;->f:Lq1/u0;

    .line 41
    .line 42
    invoke-static {}, Lq1/u0;->g()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iput-boolean v1, p0, Landroidx/mediarouter/app/u;->y:Z

    .line 47
    .line 48
    new-instance v1, Landroidx/mediarouter/app/i0;

    .line 49
    .line 50
    const/4 v2, 0x3

    .line 51
    invoke-direct {v1, p0, v2}, Landroidx/mediarouter/app/i0;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Landroidx/mediarouter/app/u;->g:Landroidx/mediarouter/app/i0;

    .line 55
    .line 56
    invoke-static {}, Lq1/u0;->f()Lq1/s0;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iput-object v1, p0, Landroidx/mediarouter/app/u;->h:Lq1/s0;

    .line 61
    .line 62
    invoke-static {}, Lq1/u0;->e()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p0, v1}, Landroidx/mediarouter/app/u;->r(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const v2, 0x7f0702b2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    iput v1, p0, Landroidx/mediarouter/app/u;->P:I

    .line 81
    .line 82
    const-string v1, "accessibility"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 89
    .line 90
    iput-object v0, p0, Landroidx/mediarouter/app/u;->n0:Landroid/view/accessibility/AccessibilityManager;

    .line 91
    .line 92
    const v0, 0x7f0d0008

    .line 93
    .line 94
    .line 95
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, p0, Landroidx/mediarouter/app/u;->l0:Landroid/view/animation/Interpolator;

    .line 100
    .line 101
    const v0, 0x7f0d0007

    .line 102
    .line 103
    .line 104
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iput-object p1, p0, Landroidx/mediarouter/app/u;->m0:Landroid/view/animation/Interpolator;

    .line 109
    .line 110
    return-void
.end method

.method public static q(ILandroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final j(ILandroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    .line 7
    new-instance v1, Landroidx/mediarouter/app/m;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v0, p1, v2, p2}, Landroidx/mediarouter/app/m;-><init>(IIILandroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iget p1, p0, Landroidx/mediarouter/app/u;->h0:I

    .line 14
    .line 15
    int-to-long v2, p1

    .line 16
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroidx/mediarouter/app/u;->k0:Landroid/view/animation/Interpolator;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/u;->U:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/mediarouter/app/u;->T:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public final l(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    iget-object v3, p0, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x1

    .line 16
    if-ge v2, v3, :cond_1

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    add-int v5, v0, v2

    .line 25
    .line 26
    iget-object v6, p0, Landroidx/mediarouter/app/u;->E:Landroidx/mediarouter/app/t;

    .line 27
    .line 28
    invoke-virtual {v6, v5}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Lq1/s0;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object v6, p0, Landroidx/mediarouter/app/u;->G:Ljava/util/HashSet;

    .line 37
    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    const v5, 0x7f0b049d

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Landroid/widget/LinearLayout;

    .line 55
    .line 56
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    new-instance v5, Landroid/view/animation/AnimationSet;

    .line 60
    .line 61
    invoke-direct {v5, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 62
    .line 63
    .line 64
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    .line 65
    .line 66
    const/high16 v7, 0x3f800000    # 1.0f

    .line 67
    .line 68
    invoke-direct {v6, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 69
    .line 70
    .line 71
    const-wide/16 v7, 0x0

    .line 72
    .line 73
    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 77
    .line 78
    .line 79
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    .line 80
    .line 81
    const/4 v9, 0x0

    .line 82
    invoke-direct {v6, v9, v9, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 98
    .line 99
    .line 100
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 104
    .line 105
    iget-object v0, v0, Landroidx/mediarouter/app/OverlayListView;->a:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_3

    .line 116
    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Landroidx/mediarouter/app/r0;

    .line 122
    .line 123
    iput-boolean v4, v2, Landroidx/mediarouter/app/r0;->j:Z

    .line 124
    .line 125
    iput-boolean v4, v2, Landroidx/mediarouter/app/r0;->k:Z

    .line 126
    .line 127
    iget-object v2, v2, Landroidx/mediarouter/app/r0;->l:La7/f;

    .line 128
    .line 129
    if-eqz v2, :cond_2

    .line 130
    .line 131
    iget-object v3, v2, La7/f;->c:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v3, Landroidx/mediarouter/app/u;

    .line 134
    .line 135
    iget-object v5, v3, Landroidx/mediarouter/app/u;->I:Ljava/util/HashSet;

    .line 136
    .line 137
    iget-object v2, v2, La7/f;->b:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v2, Lq1/s0;

    .line 140
    .line 141
    invoke-virtual {v5, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    iget-object v2, v3, Landroidx/mediarouter/app/u;->E:Landroidx/mediarouter/app/t;

    .line 145
    .line 146
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_3
    if-nez p1, :cond_4

    .line 151
    .line 152
    invoke-virtual {p0, v1}, Landroidx/mediarouter/app/u;->m(Z)V

    .line 153
    .line 154
    .line 155
    :cond_4
    return-void
.end method

.method public final m(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/mediarouter/app/u;->G:Ljava/util/HashSet;

    .line 3
    .line 4
    iput-object v0, p0, Landroidx/mediarouter/app/u;->H:Ljava/util/HashSet;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/mediarouter/app/u;->f0:Z

    .line 8
    .line 9
    iget-boolean v1, p0, Landroidx/mediarouter/app/u;->g0:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iput-boolean v0, p0, Landroidx/mediarouter/app/u;->g0:Z

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/u;->v(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final n(II)I
    .locals 2

    .line 1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    .line 3
    if-lt p1, p2, :cond_0

    .line 4
    .line 5
    iget v1, p0, Landroidx/mediarouter/app/u;->l:I

    .line 6
    .line 7
    int-to-float v1, v1

    .line 8
    int-to-float p2, p2

    .line 9
    mul-float v1, v1, p2

    .line 10
    .line 11
    int-to-float p1, p1

    .line 12
    div-float/2addr v1, p1

    .line 13
    add-float/2addr v1, v0

    .line 14
    float-to-int p1, v1

    .line 15
    return p1

    .line 16
    :cond_0
    iget p1, p0, Landroidx/mediarouter/app/u;->l:I

    .line 17
    .line 18
    int-to-float p1, p1

    .line 19
    const/high16 p2, 0x41100000    # 9.0f

    .line 20
    .line 21
    mul-float p1, p1, p2

    .line 22
    .line 23
    const/high16 p2, 0x41800000    # 16.0f

    .line 24
    .line 25
    div-float/2addr p1, p2

    .line 26
    add-float/2addr p1, v0

    .line 27
    float-to-int p1, p1

    .line 28
    return p1
.end method

.method public final o(Z)I
    .locals 2

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/mediarouter/app/u;->B:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    goto :goto_2

    .line 14
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/mediarouter/app/u;->z:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Landroidx/mediarouter/app/u;->z:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    add-int/2addr v1, v0

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/mediarouter/app/u;->A:Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/2addr v1, v0

    .line 36
    :cond_2
    iget-object v0, p0, Landroidx/mediarouter/app/u;->B:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/mediarouter/app/u;->B:Landroid/widget/LinearLayout;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    add-int/2addr v0, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    move v0, v1

    .line 53
    :goto_1
    if-eqz p1, :cond_4

    .line 54
    .line 55
    iget-object p1, p0, Landroidx/mediarouter/app/u;->B:Landroid/widget/LinearLayout;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_4

    .line 62
    .line 63
    iget-object p1, p0, Landroidx/mediarouter/app/u;->C:Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    add-int/2addr p1, v0

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    move p1, v0

    .line 72
    :goto_2
    return p1
.end method

.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/mediarouter/app/u;->k:Z

    .line 6
    .line 7
    sget-object v0, Lq1/l0;->c:Lq1/l0;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    iget-object v2, p0, Landroidx/mediarouter/app/u;->f:Lq1/u0;

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/mediarouter/app/u;->g:Landroidx/mediarouter/app/i0;

    .line 13
    .line 14
    invoke-virtual {v2, v0, v3, v1}, Lq1/u0;->a(Lq1/l0;Lq1/m0;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lq1/u0;->e()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/u;->r(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/j;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x106000d

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 12
    .line 13
    .line 14
    const p1, 0x7f0e00cf

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/i0;->setContentView(I)V

    .line 18
    .line 19
    .line 20
    const p1, 0x102001b

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/16 v0, 0x8

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Landroidx/mediarouter/app/p;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Landroidx/mediarouter/app/p;-><init>(Landroidx/mediarouter/app/u;)V

    .line 35
    .line 36
    .line 37
    const v1, 0x7f0b02e8

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroid/widget/FrameLayout;

    .line 45
    .line 46
    iput-object v1, p0, Landroidx/mediarouter/app/u;->q:Landroid/widget/FrameLayout;

    .line 47
    .line 48
    new-instance v2, Landroidx/mediarouter/app/k;

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-direct {v2, p0, v3}, Landroidx/mediarouter/app/k;-><init>(Landroidx/mediarouter/app/u;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    const v1, 0x7f0b02e7

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Landroid/widget/LinearLayout;

    .line 65
    .line 66
    iput-object v1, p0, Landroidx/mediarouter/app/u;->r:Landroid/widget/LinearLayout;

    .line 67
    .line 68
    new-instance v2, Landroidx/mediarouter/app/j;

    .line 69
    .line 70
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Landroidx/mediarouter/app/u;->i:Landroid/content/Context;

    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    const v3, 0x7f04013d

    .line 80
    .line 81
    .line 82
    invoke-static {v1, v2, v3}, Lo9/d;->r(Landroid/content/Context;II)I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    const v5, 0x1010031

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v2, v5}, Lo9/d;->r(Landroid/content/Context;II)I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    invoke-static {v4, v5}, Lf0/a;->c(II)D

    .line 94
    .line 95
    .line 96
    move-result-wide v5

    .line 97
    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    .line 98
    .line 99
    cmpg-double v9, v5, v7

    .line 100
    .line 101
    if-gez v9, :cond_0

    .line 102
    .line 103
    const v4, 0x7f040125

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v2, v4}, Lo9/d;->r(Landroid/content/Context;II)I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    :cond_0
    const v5, 0x102001a

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    check-cast v5, Landroid/widget/Button;

    .line 118
    .line 119
    iput-object v5, p0, Landroidx/mediarouter/app/u;->m:Landroid/widget/Button;

    .line 120
    .line 121
    const v6, 0x7f120165

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 125
    .line 126
    .line 127
    iget-object v5, p0, Landroidx/mediarouter/app/u;->m:Landroid/widget/Button;

    .line 128
    .line 129
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    .line 131
    .line 132
    iget-object v5, p0, Landroidx/mediarouter/app/u;->m:Landroid/widget/Button;

    .line 133
    .line 134
    invoke-virtual {v5, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    .line 136
    .line 137
    const v5, 0x1020019

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    check-cast v5, Landroid/widget/Button;

    .line 145
    .line 146
    iput-object v5, p0, Landroidx/mediarouter/app/u;->n:Landroid/widget/Button;

    .line 147
    .line 148
    const v6, 0x7f12016c

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 152
    .line 153
    .line 154
    iget-object v5, p0, Landroidx/mediarouter/app/u;->n:Landroid/widget/Button;

    .line 155
    .line 156
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    .line 158
    .line 159
    iget-object v4, p0, Landroidx/mediarouter/app/u;->n:Landroid/widget/Button;

    .line 160
    .line 161
    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    .line 163
    .line 164
    const v4, 0x7f0b02ec

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    check-cast v4, Landroid/widget/TextView;

    .line 172
    .line 173
    iput-object v4, p0, Landroidx/mediarouter/app/u;->w:Landroid/widget/TextView;

    .line 174
    .line 175
    const v4, 0x7f0b02df

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    check-cast v4, Landroid/widget/ImageButton;

    .line 183
    .line 184
    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    .line 186
    .line 187
    const v4, 0x7f0b02e5

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    check-cast v4, Landroid/widget/FrameLayout;

    .line 195
    .line 196
    const v4, 0x7f0b02e6

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    check-cast v4, Landroid/widget/FrameLayout;

    .line 204
    .line 205
    iput-object v4, p0, Landroidx/mediarouter/app/u;->s:Landroid/widget/FrameLayout;

    .line 206
    .line 207
    new-instance v4, Landroidx/mediarouter/app/k;

    .line 208
    .line 209
    const/4 v5, 0x2

    .line 210
    invoke-direct {v4, p0, v5}, Landroidx/mediarouter/app/k;-><init>(Landroidx/mediarouter/app/u;I)V

    .line 211
    .line 212
    .line 213
    const v5, 0x7f0b02bc

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    check-cast v5, Landroid/widget/ImageView;

    .line 221
    .line 222
    iput-object v5, p0, Landroidx/mediarouter/app/u;->t:Landroid/widget/ImageView;

    .line 223
    .line 224
    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    .line 226
    .line 227
    const v5, 0x7f0b02e4

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    .line 236
    .line 237
    const v4, 0x7f0b02eb

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    check-cast v4, Landroid/widget/LinearLayout;

    .line 245
    .line 246
    iput-object v4, p0, Landroidx/mediarouter/app/u;->z:Landroid/widget/LinearLayout;

    .line 247
    .line 248
    const v4, 0x7f0b02e0

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    iput-object v4, p0, Landroidx/mediarouter/app/u;->C:Landroid/view/View;

    .line 256
    .line 257
    const v4, 0x7f0b02f3

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    check-cast v4, Landroid/widget/RelativeLayout;

    .line 265
    .line 266
    iput-object v4, p0, Landroidx/mediarouter/app/u;->A:Landroid/widget/RelativeLayout;

    .line 267
    .line 268
    const v4, 0x7f0b02e3

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    check-cast v4, Landroid/widget/TextView;

    .line 276
    .line 277
    iput-object v4, p0, Landroidx/mediarouter/app/u;->u:Landroid/widget/TextView;

    .line 278
    .line 279
    const v4, 0x7f0b02e2

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    check-cast v4, Landroid/widget/TextView;

    .line 287
    .line 288
    iput-object v4, p0, Landroidx/mediarouter/app/u;->v:Landroid/widget/TextView;

    .line 289
    .line 290
    const v4, 0x7f0b02e1

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    check-cast v4, Landroid/widget/ImageButton;

    .line 298
    .line 299
    iput-object v4, p0, Landroidx/mediarouter/app/u;->o:Landroid/widget/ImageButton;

    .line 300
    .line 301
    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    .line 303
    .line 304
    const p1, 0x7f0b02f5

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    check-cast p1, Landroid/widget/LinearLayout;

    .line 312
    .line 313
    iput-object p1, p0, Landroidx/mediarouter/app/u;->B:Landroid/widget/LinearLayout;

    .line 314
    .line 315
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 316
    .line 317
    .line 318
    const p1, 0x7f0b02f8

    .line 319
    .line 320
    .line 321
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    check-cast p1, Landroid/widget/SeekBar;

    .line 326
    .line 327
    iput-object p1, p0, Landroidx/mediarouter/app/u;->J:Landroid/widget/SeekBar;

    .line 328
    .line 329
    iget-object v0, p0, Landroidx/mediarouter/app/u;->h:Lq1/s0;

    .line 330
    .line 331
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    new-instance p1, Landroidx/mediarouter/app/s;

    .line 335
    .line 336
    invoke-direct {p1, p0}, Landroidx/mediarouter/app/s;-><init>(Landroidx/mediarouter/app/u;)V

    .line 337
    .line 338
    .line 339
    iput-object p1, p0, Landroidx/mediarouter/app/u;->K:Landroidx/mediarouter/app/s;

    .line 340
    .line 341
    iget-object v4, p0, Landroidx/mediarouter/app/u;->J:Landroid/widget/SeekBar;

    .line 342
    .line 343
    invoke-virtual {v4, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 344
    .line 345
    .line 346
    const p1, 0x7f0b02f6

    .line 347
    .line 348
    .line 349
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    check-cast p1, Landroidx/mediarouter/app/OverlayListView;

    .line 354
    .line 355
    iput-object p1, p0, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 356
    .line 357
    new-instance p1, Ljava/util/ArrayList;

    .line 358
    .line 359
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .line 361
    .line 362
    iput-object p1, p0, Landroidx/mediarouter/app/u;->F:Ljava/util/ArrayList;

    .line 363
    .line 364
    new-instance p1, Landroidx/mediarouter/app/t;

    .line 365
    .line 366
    iget-object v4, p0, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 367
    .line 368
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    iget-object v5, p0, Landroidx/mediarouter/app/u;->F:Ljava/util/ArrayList;

    .line 373
    .line 374
    invoke-direct {p1, p0, v4, v5}, Landroidx/mediarouter/app/t;-><init>(Landroidx/mediarouter/app/u;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 375
    .line 376
    .line 377
    iput-object p1, p0, Landroidx/mediarouter/app/u;->E:Landroidx/mediarouter/app/t;

    .line 378
    .line 379
    iget-object v4, p0, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 380
    .line 381
    invoke-virtual {v4, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 382
    .line 383
    .line 384
    new-instance p1, Ljava/util/HashSet;

    .line 385
    .line 386
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 387
    .line 388
    .line 389
    iput-object p1, p0, Landroidx/mediarouter/app/u;->I:Ljava/util/HashSet;

    .line 390
    .line 391
    iget-object p1, p0, Landroidx/mediarouter/app/u;->z:Landroid/widget/LinearLayout;

    .line 392
    .line 393
    iget-object v4, p0, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 394
    .line 395
    invoke-virtual {p0}, Landroidx/mediarouter/app/u;->p()Z

    .line 396
    .line 397
    .line 398
    move-result v5

    .line 399
    invoke-static {v1, v2, v3}, Lo9/d;->r(Landroid/content/Context;II)I

    .line 400
    .line 401
    .line 402
    move-result v3

    .line 403
    const v6, 0x7f04013f

    .line 404
    .line 405
    .line 406
    invoke-static {v1, v2, v6}, Lo9/d;->r(Landroid/content/Context;II)I

    .line 407
    .line 408
    .line 409
    move-result v6

    .line 410
    if-eqz v5, :cond_1

    .line 411
    .line 412
    invoke-static {v1, v2}, Lo9/d;->l(Landroid/content/Context;I)I

    .line 413
    .line 414
    .line 415
    move-result v5

    .line 416
    const/high16 v7, -0x22000000

    .line 417
    .line 418
    if-ne v5, v7, :cond_1

    .line 419
    .line 420
    const/4 v5, -0x1

    .line 421
    move v6, v3

    .line 422
    const/4 v3, -0x1

    .line 423
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 427
    .line 428
    .line 429
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 430
    .line 431
    .line 432
    move-result-object v3

    .line 433
    invoke-virtual {p1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 437
    .line 438
    .line 439
    move-result-object p1

    .line 440
    invoke-virtual {v4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    iget-object p1, p0, Landroidx/mediarouter/app/u;->J:Landroid/widget/SeekBar;

    .line 444
    .line 445
    check-cast p1, Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 446
    .line 447
    iget-object v3, p0, Landroidx/mediarouter/app/u;->z:Landroid/widget/LinearLayout;

    .line 448
    .line 449
    invoke-static {v1, v2}, Lo9/d;->l(Landroid/content/Context;I)I

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    .line 454
    .line 455
    .line 456
    move-result v4

    .line 457
    const/16 v5, 0xff

    .line 458
    .line 459
    if-eq v4, v5, :cond_2

    .line 460
    .line 461
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    check-cast v3, Ljava/lang/Integer;

    .line 466
    .line 467
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    invoke-static {v2, v3}, Lf0/a;->f(II)I

    .line 472
    .line 473
    .line 474
    move-result v2

    .line 475
    :cond_2
    invoke-virtual {p1, v2, v2}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->a(II)V

    .line 476
    .line 477
    .line 478
    new-instance p1, Ljava/util/HashMap;

    .line 479
    .line 480
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 481
    .line 482
    .line 483
    iput-object p1, p0, Landroidx/mediarouter/app/u;->Q:Ljava/util/HashMap;

    .line 484
    .line 485
    iget-object v2, p0, Landroidx/mediarouter/app/u;->J:Landroid/widget/SeekBar;

    .line 486
    .line 487
    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    const p1, 0x7f0b02e9

    .line 491
    .line 492
    .line 493
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 494
    .line 495
    .line 496
    move-result-object p1

    .line 497
    check-cast p1, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

    .line 498
    .line 499
    iput-object p1, p0, Landroidx/mediarouter/app/u;->p:Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

    .line 500
    .line 501
    new-instance v0, Landroidx/mediarouter/app/k;

    .line 502
    .line 503
    const/4 v2, 0x0

    .line 504
    invoke-direct {v0, p0, v2}, Landroidx/mediarouter/app/k;-><init>(Landroidx/mediarouter/app/u;I)V

    .line 505
    .line 506
    .line 507
    iput-object v0, p1, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->i:Landroid/view/View$OnClickListener;

    .line 508
    .line 509
    iget-boolean p1, p0, Landroidx/mediarouter/app/u;->e0:Z

    .line 510
    .line 511
    if-eqz p1, :cond_3

    .line 512
    .line 513
    iget-object p1, p0, Landroidx/mediarouter/app/u;->l0:Landroid/view/animation/Interpolator;

    .line 514
    .line 515
    goto :goto_0

    .line 516
    :cond_3
    iget-object p1, p0, Landroidx/mediarouter/app/u;->m0:Landroid/view/animation/Interpolator;

    .line 517
    .line 518
    :goto_0
    iput-object p1, p0, Landroidx/mediarouter/app/u;->k0:Landroid/view/animation/Interpolator;

    .line 519
    .line 520
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 521
    .line 522
    .line 523
    move-result-object p1

    .line 524
    const v0, 0x7f0c004c

    .line 525
    .line 526
    .line 527
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 528
    .line 529
    .line 530
    move-result p1

    .line 531
    iput p1, p0, Landroidx/mediarouter/app/u;->h0:I

    .line 532
    .line 533
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 534
    .line 535
    .line 536
    move-result-object p1

    .line 537
    const v0, 0x7f0c004d

    .line 538
    .line 539
    .line 540
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 541
    .line 542
    .line 543
    move-result p1

    .line 544
    iput p1, p0, Landroidx/mediarouter/app/u;->i0:I

    .line 545
    .line 546
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 547
    .line 548
    .line 549
    move-result-object p1

    .line 550
    const v0, 0x7f0c004e

    .line 551
    .line 552
    .line 553
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 554
    .line 555
    .line 556
    move-result p1

    .line 557
    iput p1, p0, Landroidx/mediarouter/app/u;->j0:I

    .line 558
    .line 559
    const/4 p1, 0x1

    .line 560
    iput-boolean p1, p0, Landroidx/mediarouter/app/u;->j:Z

    .line 561
    .line 562
    invoke-virtual {p0}, Landroidx/mediarouter/app/u;->u()V

    .line 563
    .line 564
    .line 565
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/u;->f:Lq1/u0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/mediarouter/app/u;->g:Landroidx/mediarouter/app/i0;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lq1/u0;->h(Lq1/m0;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/u;->r(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Landroidx/mediarouter/app/u;->k:Z

    .line 14
    .line 15
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v1, 0x18

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/j;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_1
    :goto_0
    iget-boolean p2, p0, Landroidx/mediarouter/app/u;->y:Z

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-nez p2, :cond_2

    .line 19
    .line 20
    iget-boolean p2, p0, Landroidx/mediarouter/app/u;->e0:Z

    .line 21
    .line 22
    if-nez p2, :cond_4

    .line 23
    .line 24
    :cond_2
    if-ne p1, v0, :cond_3

    .line 25
    .line 26
    const/4 p1, -0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_3
    const/4 p1, 0x1

    .line 29
    :goto_1
    iget-object p2, p0, Landroidx/mediarouter/app/u;->h:Lq1/s0;

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Lq1/s0;->k(I)V

    .line 32
    .line 33
    .line 34
    :cond_4
    return v1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x18

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/j;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 16
    return p1
.end method

.method public final p()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/u;->h:Lq1/s0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq1/s0;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lq1/s0;->v:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-le v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    return v1
.end method

.method public final r(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/u;->R:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/mediarouter/app/u;->S:Landroidx/mediarouter/app/r;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 9
    .line 10
    .line 11
    iput-object v2, p0, Landroidx/mediarouter/app/u;->R:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 12
    .line 13
    :cond_0
    if-nez p1, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget-boolean v0, p0, Landroidx/mediarouter/app/u;->k:Z

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    .line 22
    .line 23
    iget-object v3, p0, Landroidx/mediarouter/app/u;->i:Landroid/content/Context;

    .line 24
    .line 25
    invoke-direct {v0, v3, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroidx/mediarouter/app/u;->R:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Landroidx/mediarouter/app/u;->R:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :goto_0
    iput-object v2, p0, Landroidx/mediarouter/app/u;->U:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 47
    .line 48
    iget-object p1, p0, Landroidx/mediarouter/app/u;->R:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Landroidx/mediarouter/app/u;->T:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/mediarouter/app/u;->t()V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/u;->s(Z)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final s(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/u;->L:Lq1/s0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Landroidx/mediarouter/app/u;->c0:Z

    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/mediarouter/app/u;->d0:Z

    .line 9
    .line 10
    or-int/2addr p1, v0

    .line 11
    iput-boolean p1, p0, Landroidx/mediarouter/app/u;->d0:Z

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Landroidx/mediarouter/app/u;->c0:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Landroidx/mediarouter/app/u;->d0:Z

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/mediarouter/app/u;->h:Lq1/s0;

    .line 20
    .line 21
    invoke-virtual {v2}, Lq1/s0;->g()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1e

    .line 26
    .line 27
    invoke-virtual {v2}, Lq1/s0;->d()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    goto/16 :goto_12

    .line 34
    .line 35
    :cond_1
    iget-boolean v3, p0, Landroidx/mediarouter/app/u;->j:Z

    .line 36
    .line 37
    if-nez v3, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    iget-object v3, p0, Landroidx/mediarouter/app/u;->w:Landroid/widget/TextView;

    .line 41
    .line 42
    iget-object v4, v2, Lq1/s0;->d:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    iget-object v3, p0, Landroidx/mediarouter/app/u;->m:Landroid/widget/Button;

    .line 48
    .line 49
    iget-boolean v4, v2, Lq1/s0;->j:Z

    .line 50
    .line 51
    const/16 v5, 0x8

    .line 52
    .line 53
    if-eqz v4, :cond_3

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const/16 v4, 0x8

    .line 58
    .line 59
    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    iget-boolean v3, p0, Landroidx/mediarouter/app/u;->Y:Z

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    if-eqz v3, :cond_5

    .line 66
    .line 67
    iget-object v3, p0, Landroidx/mediarouter/app/u;->Z:Landroid/graphics/Bitmap;

    .line 68
    .line 69
    if-eqz v3, :cond_4

    .line 70
    .line 71
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_4

    .line 76
    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v6, "Can\'t set artwork image with recycled bitmap: "

    .line 80
    .line 81
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v6, p0, Landroidx/mediarouter/app/u;->Z:Landroid/graphics/Bitmap;

    .line 85
    .line 86
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    const-string v6, "MediaRouteCtrlDialog"

    .line 94
    .line 95
    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    iget-object v3, p0, Landroidx/mediarouter/app/u;->t:Landroid/widget/ImageView;

    .line 100
    .line 101
    iget-object v6, p0, Landroidx/mediarouter/app/u;->Z:Landroid/graphics/Bitmap;

    .line 102
    .line 103
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    .line 105
    .line 106
    iget-object v3, p0, Landroidx/mediarouter/app/u;->t:Landroid/widget/ImageView;

    .line 107
    .line 108
    iget v6, p0, Landroidx/mediarouter/app/u;->b0:I

    .line 109
    .line 110
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 111
    .line 112
    .line 113
    :goto_1
    iput-boolean v0, p0, Landroidx/mediarouter/app/u;->Y:Z

    .line 114
    .line 115
    iput-object v4, p0, Landroidx/mediarouter/app/u;->Z:Landroid/graphics/Bitmap;

    .line 116
    .line 117
    iput v0, p0, Landroidx/mediarouter/app/u;->b0:I

    .line 118
    .line 119
    :cond_5
    iget-boolean v3, p0, Landroidx/mediarouter/app/u;->y:Z

    .line 120
    .line 121
    if-nez v3, :cond_7

    .line 122
    .line 123
    invoke-virtual {p0}, Landroidx/mediarouter/app/u;->p()Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_7

    .line 128
    .line 129
    iget-object v3, p0, Landroidx/mediarouter/app/u;->B:Landroid/widget/LinearLayout;

    .line 130
    .line 131
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    iput-boolean v1, p0, Landroidx/mediarouter/app/u;->e0:Z

    .line 135
    .line 136
    iget-object v3, p0, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 137
    .line 138
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    iget-boolean v3, p0, Landroidx/mediarouter/app/u;->e0:Z

    .line 142
    .line 143
    if-eqz v3, :cond_6

    .line 144
    .line 145
    iget-object v3, p0, Landroidx/mediarouter/app/u;->l0:Landroid/view/animation/Interpolator;

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_6
    iget-object v3, p0, Landroidx/mediarouter/app/u;->m0:Landroid/view/animation/Interpolator;

    .line 149
    .line 150
    :goto_2
    iput-object v3, p0, Landroidx/mediarouter/app/u;->k0:Landroid/view/animation/Interpolator;

    .line 151
    .line 152
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/u;->v(Z)V

    .line 153
    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_7
    iget-boolean v6, p0, Landroidx/mediarouter/app/u;->e0:Z

    .line 157
    .line 158
    if-eqz v6, :cond_8

    .line 159
    .line 160
    if-eqz v3, :cond_b

    .line 161
    .line 162
    :cond_8
    iget-boolean v3, p0, Landroidx/mediarouter/app/u;->x:Z

    .line 163
    .line 164
    if-eqz v3, :cond_b

    .line 165
    .line 166
    invoke-virtual {v2}, Lq1/s0;->e()Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-eqz v3, :cond_9

    .line 171
    .line 172
    invoke-static {}, Lq1/u0;->g()Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-nez v3, :cond_9

    .line 177
    .line 178
    const/4 v3, 0x0

    .line 179
    goto :goto_3

    .line 180
    :cond_9
    iget v3, v2, Lq1/s0;->o:I

    .line 181
    .line 182
    :goto_3
    if-ne v3, v1, :cond_b

    .line 183
    .line 184
    iget-object v3, p0, Landroidx/mediarouter/app/u;->B:Landroid/widget/LinearLayout;

    .line 185
    .line 186
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-ne v3, v5, :cond_c

    .line 191
    .line 192
    iget-object v3, p0, Landroidx/mediarouter/app/u;->B:Landroid/widget/LinearLayout;

    .line 193
    .line 194
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    iget-object v3, p0, Landroidx/mediarouter/app/u;->J:Landroid/widget/SeekBar;

    .line 198
    .line 199
    iget v6, v2, Lq1/s0;->q:I

    .line 200
    .line 201
    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 202
    .line 203
    .line 204
    iget-object v3, p0, Landroidx/mediarouter/app/u;->J:Landroid/widget/SeekBar;

    .line 205
    .line 206
    iget v6, v2, Lq1/s0;->p:I

    .line 207
    .line 208
    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 209
    .line 210
    .line 211
    iget-object v3, p0, Landroidx/mediarouter/app/u;->p:Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

    .line 212
    .line 213
    invoke-virtual {p0}, Landroidx/mediarouter/app/u;->p()Z

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    if-eqz v6, :cond_a

    .line 218
    .line 219
    const/4 v6, 0x0

    .line 220
    goto :goto_4

    .line 221
    :cond_a
    const/16 v6, 0x8

    .line 222
    .line 223
    :goto_4
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 224
    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_b
    iget-object v3, p0, Landroidx/mediarouter/app/u;->B:Landroid/widget/LinearLayout;

    .line 228
    .line 229
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 230
    .line 231
    .line 232
    :cond_c
    :goto_5
    invoke-virtual {p0}, Landroidx/mediarouter/app/u;->k()Z

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    if-eqz v3, :cond_1d

    .line 237
    .line 238
    iget-object v3, p0, Landroidx/mediarouter/app/u;->U:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 239
    .line 240
    if-nez v3, :cond_d

    .line 241
    .line 242
    move-object v3, v4

    .line 243
    goto :goto_6

    .line 244
    :cond_d
    invoke-virtual {v3}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    :goto_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    iget-object v7, p0, Landroidx/mediarouter/app/u;->U:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 253
    .line 254
    if-nez v7, :cond_e

    .line 255
    .line 256
    goto :goto_7

    .line 257
    :cond_e
    invoke-virtual {v7}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    :goto_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 262
    .line 263
    .line 264
    move-result v7

    .line 265
    iget v2, v2, Lq1/s0;->r:I

    .line 266
    .line 267
    const/4 v8, -0x1

    .line 268
    if-eq v2, v8, :cond_10

    .line 269
    .line 270
    iget-object v2, p0, Landroidx/mediarouter/app/u;->u:Landroid/widget/TextView;

    .line 271
    .line 272
    const v3, 0x7f120162

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 276
    .line 277
    .line 278
    :goto_8
    const/4 v2, 0x1

    .line 279
    :cond_f
    const/4 v3, 0x0

    .line 280
    goto :goto_b

    .line 281
    :cond_10
    iget-object v2, p0, Landroidx/mediarouter/app/u;->T:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 282
    .line 283
    if-eqz v2, :cond_14

    .line 284
    .line 285
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    if-nez v2, :cond_11

    .line 290
    .line 291
    goto :goto_a

    .line 292
    :cond_11
    if-eqz v6, :cond_12

    .line 293
    .line 294
    if-eqz v7, :cond_12

    .line 295
    .line 296
    iget-object v2, p0, Landroidx/mediarouter/app/u;->u:Landroid/widget/TextView;

    .line 297
    .line 298
    const v3, 0x7f120167

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 302
    .line 303
    .line 304
    goto :goto_8

    .line 305
    :cond_12
    if-nez v6, :cond_13

    .line 306
    .line 307
    iget-object v2, p0, Landroidx/mediarouter/app/u;->u:Landroid/widget/TextView;

    .line 308
    .line 309
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    .line 311
    .line 312
    const/4 v2, 0x1

    .line 313
    goto :goto_9

    .line 314
    :cond_13
    const/4 v2, 0x0

    .line 315
    :goto_9
    if-nez v7, :cond_f

    .line 316
    .line 317
    iget-object v3, p0, Landroidx/mediarouter/app/u;->v:Landroid/widget/TextView;

    .line 318
    .line 319
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    .line 321
    .line 322
    const/4 v3, 0x1

    .line 323
    goto :goto_b

    .line 324
    :cond_14
    :goto_a
    iget-object v2, p0, Landroidx/mediarouter/app/u;->u:Landroid/widget/TextView;

    .line 325
    .line 326
    const v3, 0x7f120168

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 330
    .line 331
    .line 332
    goto :goto_8

    .line 333
    :goto_b
    iget-object v4, p0, Landroidx/mediarouter/app/u;->u:Landroid/widget/TextView;

    .line 334
    .line 335
    if-eqz v2, :cond_15

    .line 336
    .line 337
    const/4 v2, 0x0

    .line 338
    goto :goto_c

    .line 339
    :cond_15
    const/16 v2, 0x8

    .line 340
    .line 341
    :goto_c
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 342
    .line 343
    .line 344
    iget-object v2, p0, Landroidx/mediarouter/app/u;->v:Landroid/widget/TextView;

    .line 345
    .line 346
    if-eqz v3, :cond_16

    .line 347
    .line 348
    const/4 v3, 0x0

    .line 349
    goto :goto_d

    .line 350
    :cond_16
    const/16 v3, 0x8

    .line 351
    .line 352
    :goto_d
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 353
    .line 354
    .line 355
    iget-object v2, p0, Landroidx/mediarouter/app/u;->T:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 356
    .line 357
    if-eqz v2, :cond_1d

    .line 358
    .line 359
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    const/4 v3, 0x6

    .line 364
    if-eq v2, v3, :cond_18

    .line 365
    .line 366
    iget-object v2, p0, Landroidx/mediarouter/app/u;->T:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 367
    .line 368
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    const/4 v3, 0x3

    .line 373
    if-ne v2, v3, :cond_17

    .line 374
    .line 375
    goto :goto_e

    .line 376
    :cond_17
    const/4 v2, 0x0

    .line 377
    goto :goto_f

    .line 378
    :cond_18
    :goto_e
    const/4 v2, 0x1

    .line 379
    :goto_f
    iget-object v3, p0, Landroidx/mediarouter/app/u;->o:Landroid/widget/ImageButton;

    .line 380
    .line 381
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    const-wide/16 v6, 0x0

    .line 386
    .line 387
    if-eqz v2, :cond_19

    .line 388
    .line 389
    iget-object v4, p0, Landroidx/mediarouter/app/u;->T:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 390
    .line 391
    invoke-virtual {v4}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    .line 392
    .line 393
    .line 394
    move-result-wide v8

    .line 395
    const-wide/16 v10, 0x202

    .line 396
    .line 397
    and-long/2addr v8, v10

    .line 398
    cmp-long v4, v8, v6

    .line 399
    .line 400
    if-eqz v4, :cond_19

    .line 401
    .line 402
    const v2, 0x7f040376

    .line 403
    .line 404
    .line 405
    const v4, 0x7f120169

    .line 406
    .line 407
    .line 408
    goto :goto_10

    .line 409
    :cond_19
    if-eqz v2, :cond_1a

    .line 410
    .line 411
    iget-object v4, p0, Landroidx/mediarouter/app/u;->T:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 412
    .line 413
    invoke-virtual {v4}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    .line 414
    .line 415
    .line 416
    move-result-wide v8

    .line 417
    const-wide/16 v10, 0x1

    .line 418
    .line 419
    and-long/2addr v8, v10

    .line 420
    cmp-long v4, v8, v6

    .line 421
    .line 422
    if-eqz v4, :cond_1a

    .line 423
    .line 424
    const v2, 0x7f04037a

    .line 425
    .line 426
    .line 427
    const v4, 0x7f12016b

    .line 428
    .line 429
    .line 430
    goto :goto_10

    .line 431
    :cond_1a
    if-nez v2, :cond_1b

    .line 432
    .line 433
    iget-object v2, p0, Landroidx/mediarouter/app/u;->T:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 434
    .line 435
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    .line 436
    .line 437
    .line 438
    move-result-wide v8

    .line 439
    const-wide/16 v10, 0x204

    .line 440
    .line 441
    and-long/2addr v8, v10

    .line 442
    cmp-long v2, v8, v6

    .line 443
    .line 444
    if-eqz v2, :cond_1b

    .line 445
    .line 446
    const v2, 0x7f040377

    .line 447
    .line 448
    .line 449
    const v4, 0x7f12016a

    .line 450
    .line 451
    .line 452
    goto :goto_10

    .line 453
    :cond_1b
    const/4 v1, 0x0

    .line 454
    const/4 v2, 0x0

    .line 455
    const/4 v4, 0x0

    .line 456
    :goto_10
    iget-object v6, p0, Landroidx/mediarouter/app/u;->o:Landroid/widget/ImageButton;

    .line 457
    .line 458
    if-eqz v1, :cond_1c

    .line 459
    .line 460
    goto :goto_11

    .line 461
    :cond_1c
    const/16 v0, 0x8

    .line 462
    .line 463
    :goto_11
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 464
    .line 465
    .line 466
    if-eqz v1, :cond_1d

    .line 467
    .line 468
    iget-object v0, p0, Landroidx/mediarouter/app/u;->o:Landroid/widget/ImageButton;

    .line 469
    .line 470
    invoke-static {v3, v2}, Lo9/d;->s(Landroid/content/Context;I)I

    .line 471
    .line 472
    .line 473
    move-result v1

    .line 474
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 475
    .line 476
    .line 477
    iget-object v0, p0, Landroidx/mediarouter/app/u;->o:Landroid/widget/ImageButton;

    .line 478
    .line 479
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 488
    .line 489
    .line 490
    :cond_1d
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/u;->v(Z)V

    .line 491
    .line 492
    .line 493
    return-void

    .line 494
    :cond_1e
    :goto_12
    invoke-virtual {p0}, Landroidx/appcompat/app/i0;->dismiss()V

    .line 495
    .line 496
    .line 497
    return-void
.end method

.method public final t()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/u;->U:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    iget-object v2, p0, Landroidx/mediarouter/app/u;->U:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_1
    iget-object v2, p0, Landroidx/mediarouter/app/u;->V:Landroidx/mediarouter/app/q;

    .line 22
    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    iget-object v3, p0, Landroidx/mediarouter/app/u;->W:Landroid/graphics/Bitmap;

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    iget-object v3, v2, Landroidx/mediarouter/app/q;->a:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    :goto_2
    if-nez v2, :cond_3

    .line 31
    .line 32
    iget-object v2, p0, Landroidx/mediarouter/app/u;->X:Landroid/net/Uri;

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    iget-object v2, v2, Landroidx/mediarouter/app/q;->b:Landroid/net/Uri;

    .line 36
    .line 37
    :goto_3
    if-eq v3, v0, :cond_4

    .line 38
    .line 39
    goto :goto_4

    .line 40
    :cond_4
    if-nez v3, :cond_9

    .line 41
    .line 42
    if-eqz v2, :cond_5

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    goto :goto_5

    .line 51
    :cond_5
    if-nez v2, :cond_6

    .line 52
    .line 53
    if-nez v1, :cond_6

    .line 54
    .line 55
    goto :goto_5

    .line 56
    :cond_6
    :goto_4
    invoke-virtual {p0}, Landroidx/mediarouter/app/u;->p()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_7

    .line 61
    .line 62
    iget-boolean v0, p0, Landroidx/mediarouter/app/u;->y:Z

    .line 63
    .line 64
    if-nez v0, :cond_7

    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_7
    iget-object v0, p0, Landroidx/mediarouter/app/u;->V:Landroidx/mediarouter/app/q;

    .line 68
    .line 69
    if-eqz v0, :cond_8

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 73
    .line 74
    .line 75
    :cond_8
    new-instance v0, Landroidx/mediarouter/app/q;

    .line 76
    .line 77
    invoke-direct {v0, p0}, Landroidx/mediarouter/app/q;-><init>(Landroidx/mediarouter/app/u;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Landroidx/mediarouter/app/u;->V:Landroidx/mediarouter/app/q;

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    new-array v1, v1, [Ljava/lang/Void;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 86
    .line 87
    .line 88
    :cond_9
    :goto_5
    return-void
.end method

.method public final u()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/u;->i:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Ln5/d;->v(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, -0x2

    .line 12
    invoke-virtual {v2, v1, v3}, Landroid/view/Window;->setLayout(II)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    sub-int/2addr v1, v3

    .line 28
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    sub-int/2addr v1, v2

    .line 33
    iput v1, p0, Landroidx/mediarouter/app/u;->l:I

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const v1, 0x7f0702b0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iput v1, p0, Landroidx/mediarouter/app/u;->M:I

    .line 47
    .line 48
    const v1, 0x7f0702af

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iput v1, p0, Landroidx/mediarouter/app/u;->N:I

    .line 56
    .line 57
    const v1, 0x7f0702b1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput v0, p0, Landroidx/mediarouter/app/u;->O:I

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Landroidx/mediarouter/app/u;->W:Landroid/graphics/Bitmap;

    .line 68
    .line 69
    iput-object v0, p0, Landroidx/mediarouter/app/u;->X:Landroid/net/Uri;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/mediarouter/app/u;->t()V

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/u;->s(Z)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final v(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/u;->s:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/mediarouter/app/u;->s:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Landroidx/mediarouter/app/l;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Landroidx/mediarouter/app/l;-><init>(Landroidx/mediarouter/app/u;Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final w(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/u;->C:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/mediarouter/app/u;->B:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/16 v3, 0x8

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v1, 0x8

    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroidx/mediarouter/app/u;->z:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/mediarouter/app/u;->B:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-ne v1, v3, :cond_1

    .line 32
    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    const/16 v2, 0x8

    .line 36
    .line 37
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
