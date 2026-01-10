.class public final Landroidx/mediarouter/app/n0;
.super Landroidx/mediarouter/app/h0;
.source "MyApplication"


# instance fields
.field public final e:Landroid/view/View;

.field public final f:Landroid/widget/ImageView;

.field public final g:Landroid/widget/ProgressBar;

.field public final h:Landroid/widget/TextView;

.field public final i:Landroid/widget/RelativeLayout;

.field public final j:Landroid/widget/CheckBox;

.field public final k:F

.field public final l:I

.field public final m:Landroidx/mediarouter/app/g0;

.field public final synthetic n:Landroidx/mediarouter/app/o0;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/o0;Landroid/view/View;)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/n0;->n:Landroidx/mediarouter/app/o0;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/mediarouter/app/o0;->j:Landroidx/mediarouter/app/q0;

    .line 4
    .line 5
    const v1, 0x7f0b02ca

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/widget/ImageButton;

    .line 13
    .line 14
    const v2, 0x7f0b02d0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 22
    .line 23
    invoke-direct {p0, v0, p2, v1, v2}, Landroidx/mediarouter/app/h0;-><init>(Landroidx/mediarouter/app/q0;Landroid/view/View;Landroid/widget/ImageButton;Landroidx/mediarouter/app/MediaRouteVolumeSlider;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Landroidx/mediarouter/app/g0;

    .line 27
    .line 28
    const/4 v1, 0x4

    .line 29
    invoke-direct {v0, v1, p0}, Landroidx/mediarouter/app/g0;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Landroidx/mediarouter/app/n0;->m:Landroidx/mediarouter/app/g0;

    .line 33
    .line 34
    iput-object p2, p0, Landroidx/mediarouter/app/n0;->e:Landroid/view/View;

    .line 35
    .line 36
    const v0, 0x7f0b02cb

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/widget/ImageView;

    .line 44
    .line 45
    iput-object v0, p0, Landroidx/mediarouter/app/n0;->f:Landroid/widget/ImageView;

    .line 46
    .line 47
    const v0, 0x7f0b02cd

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/widget/ProgressBar;

    .line 55
    .line 56
    iput-object v0, p0, Landroidx/mediarouter/app/n0;->g:Landroid/widget/ProgressBar;

    .line 57
    .line 58
    const v1, 0x7f0b02cc

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Landroid/widget/TextView;

    .line 66
    .line 67
    iput-object v1, p0, Landroidx/mediarouter/app/n0;->h:Landroid/widget/TextView;

    .line 68
    .line 69
    const v1, 0x7f0b02cf

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 77
    .line 78
    iput-object v1, p0, Landroidx/mediarouter/app/n0;->i:Landroid/widget/RelativeLayout;

    .line 79
    .line 80
    const v1, 0x7f0b02bd

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    check-cast p2, Landroid/widget/CheckBox;

    .line 88
    .line 89
    iput-object p2, p0, Landroidx/mediarouter/app/n0;->j:Landroid/widget/CheckBox;

    .line 90
    .line 91
    iget-object p1, p1, Landroidx/mediarouter/app/o0;->j:Landroidx/mediarouter/app/q0;

    .line 92
    .line 93
    iget-object v1, p1, Landroidx/mediarouter/app/q0;->m:Landroid/content/Context;

    .line 94
    .line 95
    const v2, 0x7f08025f

    .line 96
    .line 97
    .line 98
    invoke-static {v1, v2}, Lcom/bumptech/glide/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v2}, Ln5/d;->W(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-static {v1}, Lo9/d;->t(Landroid/content/Context;)Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_0

    .line 111
    .line 112
    const v3, 0x7f0602b9

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v3}, Lu7/d;->i(Landroid/content/Context;I)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-static {v2, v1}, Lg0/a;->g(Landroid/graphics/drawable/Drawable;I)V

    .line 120
    .line 121
    .line 122
    :cond_0
    invoke-virtual {p2, v2}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    .line 124
    .line 125
    iget-object p2, p1, Landroidx/mediarouter/app/q0;->m:Landroid/content/Context;

    .line 126
    .line 127
    invoke-static {p2, v0}, Lo9/d;->C(Landroid/content/Context;Landroid/widget/ProgressBar;)V

    .line 128
    .line 129
    .line 130
    iget-object p2, p1, Landroidx/mediarouter/app/q0;->m:Landroid/content/Context;

    .line 131
    .line 132
    invoke-static {p2}, Lo9/d;->m(Landroid/content/Context;)F

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    iput p2, p0, Landroidx/mediarouter/app/n0;->k:F

    .line 137
    .line 138
    iget-object p1, p1, Landroidx/mediarouter/app/q0;->m:Landroid/content/Context;

    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    new-instance v0, Landroid/util/TypedValue;

    .line 149
    .line 150
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 151
    .line 152
    .line 153
    const v1, 0x7f0702b8

    .line 154
    .line 155
    .line 156
    const/4 v2, 0x1

    .line 157
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, p2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    float-to-int p1, p1

    .line 165
    iput p1, p0, Landroidx/mediarouter/app/n0;->l:I

    .line 166
    .line 167
    return-void
.end method


# virtual methods
.method public final d(Lq1/s0;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lq1/s0;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/n0;->n:Landroidx/mediarouter/app/o0;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/mediarouter/app/o0;->j:Landroidx/mediarouter/app/q0;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/mediarouter/app/q0;->h:Lq1/s0;

    .line 14
    .line 15
    invoke-virtual {v0}, Lq1/s0;->a()Lq1/p0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, v0, Lq1/p0;->x:Lp/e;

    .line 22
    .line 23
    iget-object p1, p1, Lq1/s0;->c:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lq1/z;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget p1, p1, Lq1/z;->b:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x4

    .line 37
    :goto_0
    const/4 v0, 0x3

    .line 38
    if-ne p1, v0, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/4 v1, 0x0

    .line 42
    :goto_1
    return v1
.end method

.method public final e(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/n0;->j:Landroid/widget/CheckBox;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Landroidx/mediarouter/app/n0;->e:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/mediarouter/app/n0;->f:Landroid/widget/ImageView;

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroidx/mediarouter/app/n0;->g:Landroid/widget/ProgressBar;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    if-eqz p2, :cond_2

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget v1, p0, Landroidx/mediarouter/app/n0;->l:I

    .line 33
    .line 34
    :cond_1
    iget-object p1, p0, Landroidx/mediarouter/app/n0;->n:Landroidx/mediarouter/app/o0;

    .line 35
    .line 36
    iget-object p2, p0, Landroidx/mediarouter/app/n0;->i:Landroid/widget/RelativeLayout;

    .line 37
    .line 38
    invoke-virtual {p1, v1, p2}, Landroidx/mediarouter/app/o0;->a(ILandroid/view/View;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method
