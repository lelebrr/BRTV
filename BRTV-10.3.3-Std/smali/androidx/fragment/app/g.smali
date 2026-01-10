.class public final Landroidx/fragment/app/g;
.super Landroidx/appcompat/app/c0;
.source "MyApplication"


# instance fields
.field public c:Z

.field public d:Z

.field public e:La7/f;


# virtual methods
.method public final n(Landroid/content/Context;)La7/f;
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/g;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/fragment/app/g;->e:La7/f;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/c0;->a:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroidx/fragment/app/v0;

    .line 11
    .line 12
    iget v1, v0, Landroidx/fragment/app/v0;->a:I

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    :goto_0
    iget-boolean v2, p0, Landroidx/fragment/app/g;->c:Z

    .line 22
    .line 23
    iget-object v0, v0, Landroidx/fragment/app/v0;->c:Landroidx/fragment/app/s;

    .line 24
    .line 25
    iget-object v4, v0, Landroidx/fragment/app/s;->I:Landroidx/fragment/app/p;

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    if-nez v4, :cond_2

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    iget v6, v4, Landroidx/fragment/app/p;->f:I

    .line 33
    .line 34
    :goto_1
    if-eqz v2, :cond_6

    .line 35
    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    if-nez v4, :cond_3

    .line 39
    .line 40
    :goto_2
    const/4 v2, 0x0

    .line 41
    goto :goto_3

    .line 42
    :cond_3
    iget v2, v4, Landroidx/fragment/app/p;->d:I

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_4
    if-nez v4, :cond_5

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_5
    iget v2, v4, Landroidx/fragment/app/p;->e:I

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_6
    if-eqz v1, :cond_8

    .line 52
    .line 53
    if-nez v4, :cond_7

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_7
    iget v2, v4, Landroidx/fragment/app/p;->b:I

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_8
    if-nez v4, :cond_9

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_9
    iget v2, v4, Landroidx/fragment/app/p;->c:I

    .line 63
    .line 64
    :goto_3
    invoke-virtual {v0, v5, v5, v5, v5}, Landroidx/fragment/app/s;->N(IIII)V

    .line 65
    .line 66
    .line 67
    iget-object v4, v0, Landroidx/fragment/app/s;->E:Landroid/view/ViewGroup;

    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    if-eqz v4, :cond_a

    .line 71
    .line 72
    const v7, 0x7f0b047e

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    if-eqz v4, :cond_a

    .line 80
    .line 81
    iget-object v4, v0, Landroidx/fragment/app/s;->E:Landroid/view/ViewGroup;

    .line 82
    .line 83
    invoke-virtual {v4, v7, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_a
    iget-object v0, v0, Landroidx/fragment/app/s;->E:Landroid/view/ViewGroup;

    .line 87
    .line 88
    if-eqz v0, :cond_b

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_b

    .line 95
    .line 96
    goto/16 :goto_7

    .line 97
    .line 98
    :cond_b
    if-nez v2, :cond_12

    .line 99
    .line 100
    if-eqz v6, :cond_12

    .line 101
    .line 102
    const/16 v0, 0x1001

    .line 103
    .line 104
    if-eq v6, v0, :cond_10

    .line 105
    .line 106
    const/16 v0, 0x1003

    .line 107
    .line 108
    if-eq v6, v0, :cond_e

    .line 109
    .line 110
    const/16 v0, 0x2002

    .line 111
    .line 112
    if-eq v6, v0, :cond_c

    .line 113
    .line 114
    const/4 v0, -0x1

    .line 115
    const/4 v2, -0x1

    .line 116
    goto :goto_5

    .line 117
    :cond_c
    if-eqz v1, :cond_d

    .line 118
    .line 119
    const v0, 0x7f020005

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_d
    const v0, 0x7f020006

    .line 124
    .line 125
    .line 126
    :goto_4
    move v2, v0

    .line 127
    goto :goto_5

    .line 128
    :cond_e
    if-eqz v1, :cond_f

    .line 129
    .line 130
    const v0, 0x7f020007

    .line 131
    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_f
    const v0, 0x7f020008

    .line 135
    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_10
    if-eqz v1, :cond_11

    .line 139
    .line 140
    const v0, 0x7f020009

    .line 141
    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_11
    const v0, 0x7f02000a

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_12
    :goto_5
    if-eqz v2, :cond_15

    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const-string v1, "anim"

    .line 159
    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_13

    .line 165
    .line 166
    :try_start_0
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    if-eqz v1, :cond_15

    .line 171
    .line 172
    new-instance v4, La7/f;

    .line 173
    .line 174
    const/4 v6, 0x2

    .line 175
    invoke-direct {v4, v6, v1}, La7/f;-><init>(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    .line 177
    .line 178
    :goto_6
    move-object v5, v4

    .line 179
    goto :goto_7

    .line 180
    :catch_0
    move-exception p1

    .line 181
    throw p1

    .line 182
    :catch_1
    :cond_13
    :try_start_1
    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    if-eqz v1, :cond_15

    .line 187
    .line 188
    new-instance v4, La7/f;

    .line 189
    .line 190
    invoke-direct {v4, v1}, La7/f;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 191
    .line 192
    .line 193
    goto :goto_6

    .line 194
    :catch_2
    move-exception v1

    .line 195
    if-nez v0, :cond_14

    .line 196
    .line 197
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    if-eqz p1, :cond_15

    .line 202
    .line 203
    new-instance v5, La7/f;

    .line 204
    .line 205
    const/4 v0, 0x2

    .line 206
    invoke-direct {v5, v0, p1}, La7/f;-><init>(ILjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    goto :goto_7

    .line 210
    :cond_14
    throw v1

    .line 211
    :cond_15
    :goto_7
    iput-object v5, p0, Landroidx/fragment/app/g;->e:La7/f;

    .line 212
    .line 213
    iput-boolean v3, p0, Landroidx/fragment/app/g;->d:Z

    .line 214
    .line 215
    return-object v5
.end method
