.class public final Landroidx/mediarouter/app/t;
.super Landroid/widget/ArrayAdapter;
.source "MyApplication"


# instance fields
.field public final a:F

.field public final synthetic b:Landroidx/mediarouter/app/u;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/u;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/t;->b:Landroidx/mediarouter/app/u;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Lo9/d;->m(Landroid/content/Context;)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Landroidx/mediarouter/app/t;->a:F

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 1
    const v0, 0x7f0b02f7

    .line 2
    .line 3
    .line 4
    const v1, 0x7f0b049d

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iget-object v3, p0, Landroidx/mediarouter/app/t;->b:Landroidx/mediarouter/app/u;

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    const p2, 0x7f0e00d0

    .line 13
    .line 14
    .line 15
    invoke-static {p3, p2, p3, v2}, La/e;->i(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Landroid/widget/LinearLayout;

    .line 28
    .line 29
    iget v5, v3, Landroidx/mediarouter/app/u;->N:I

    .line 30
    .line 31
    invoke-static {v5, v4}, Landroidx/mediarouter/app/u;->q(ILandroid/view/View;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    iget v6, v3, Landroidx/mediarouter/app/u;->M:I

    .line 43
    .line 44
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 45
    .line 46
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lq1/s0;

    .line 56
    .line 57
    if-eqz p1, :cond_7

    .line 58
    .line 59
    iget-boolean v4, p1, Lq1/s0;->g:Z

    .line 60
    .line 61
    const v5, 0x7f0b02ec

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 71
    .line 72
    .line 73
    iget-object v6, p1, Lq1/s0;->d:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    const v5, 0x7f0b02f8

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    check-cast v5, Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 86
    .line 87
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    iget-object v6, v3, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 92
    .line 93
    invoke-static {p3, v2}, Lo9/d;->l(Landroid/content/Context;I)I

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    const/16 v8, 0xff

    .line 102
    .line 103
    if-eq v7, v8, :cond_1

    .line 104
    .line 105
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    check-cast v6, Ljava/lang/Integer;

    .line 110
    .line 111
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    invoke-static {p3, v6}, Lf0/a;->f(II)I

    .line 116
    .line 117
    .line 118
    move-result p3

    .line 119
    :cond_1
    invoke-virtual {v5, p3, p3}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->a(II)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iget-object p3, v3, Landroidx/mediarouter/app/u;->Q:Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-virtual {p3, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    xor-int/lit8 p3, v4, 0x1

    .line 131
    .line 132
    invoke-virtual {v5, p3}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->b(Z)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 136
    .line 137
    .line 138
    const/4 p3, 0x1

    .line 139
    if-eqz v4, :cond_4

    .line 140
    .line 141
    iget-boolean v6, v3, Landroidx/mediarouter/app/u;->x:Z

    .line 142
    .line 143
    if-eqz v6, :cond_3

    .line 144
    .line 145
    invoke-virtual {p1}, Lq1/s0;->e()Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-eqz v6, :cond_2

    .line 150
    .line 151
    invoke-static {}, Lq1/u0;->g()Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-nez v6, :cond_2

    .line 156
    .line 157
    const/4 v6, 0x0

    .line 158
    goto :goto_1

    .line 159
    :cond_2
    iget v6, p1, Lq1/s0;->o:I

    .line 160
    .line 161
    :goto_1
    if-ne v6, p3, :cond_3

    .line 162
    .line 163
    iget v6, p1, Lq1/s0;->q:I

    .line 164
    .line 165
    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 166
    .line 167
    .line 168
    iget v6, p1, Lq1/s0;->p:I

    .line 169
    .line 170
    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 171
    .line 172
    .line 173
    iget-object v6, v3, Landroidx/mediarouter/app/u;->K:Landroidx/mediarouter/app/s;

    .line 174
    .line 175
    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_3
    const/16 v6, 0x64

    .line 180
    .line 181
    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 188
    .line 189
    .line 190
    :cond_4
    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    check-cast v0, Landroid/widget/ImageView;

    .line 195
    .line 196
    if-eqz v4, :cond_5

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_5
    const/high16 v4, 0x437f0000    # 255.0f

    .line 200
    .line 201
    iget v5, p0, Landroidx/mediarouter/app/t;->a:F

    .line 202
    .line 203
    mul-float v5, v5, v4

    .line 204
    .line 205
    float-to-int v8, v5

    .line 206
    :goto_3
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    check-cast v0, Landroid/widget/LinearLayout;

    .line 214
    .line 215
    iget-object v1, v3, Landroidx/mediarouter/app/u;->I:Ljava/util/HashSet;

    .line 216
    .line 217
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-eqz v1, :cond_6

    .line 222
    .line 223
    const/4 v2, 0x4

    .line 224
    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .line 226
    .line 227
    iget-object v0, v3, Landroidx/mediarouter/app/u;->G:Ljava/util/HashSet;

    .line 228
    .line 229
    if-eqz v0, :cond_7

    .line 230
    .line 231
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    if-eqz p1, :cond_7

    .line 236
    .line 237
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    .line 238
    .line 239
    const/4 v0, 0x0

    .line 240
    invoke-direct {p1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 241
    .line 242
    .line 243
    const-wide/16 v0, 0x0

    .line 244
    .line 245
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 258
    .line 259
    .line 260
    :cond_7
    return-object p2
.end method

.method public final isEnabled(I)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method
