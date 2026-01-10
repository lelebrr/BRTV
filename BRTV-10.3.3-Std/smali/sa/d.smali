.class public final Lsa/d;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Landroid/view/View;

.field public f:Landroid/content/DialogInterface$OnClickListener;

.field public g:Landroid/content/DialogInterface$OnClickListener;

.field public h:Landroid/widget/Button;

.field public i:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsa/d;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lsa/e;
    .locals 7

    .line 1
    const-string v0, "EcmADqI/RD0TzpUAoy5p\n"

    .line 2
    .line 3
    const-string v1, "faj5YddLG1Q=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lsa/d;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/view/LayoutInflater;

    .line 16
    .line 17
    new-instance v2, Lsa/e;

    .line 18
    .line 19
    const v3, 0x7f130116

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    const v1, 0x7f0e0036

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    const/4 v3, -0x1

    .line 36
    const/4 v4, -0x2

    .line 37
    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0, v1}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lsa/d;->c:Ljava/lang/String;

    .line 44
    .line 45
    const/16 v4, 0x8

    .line 46
    .line 47
    const v5, 0x7f0b0352

    .line 48
    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroid/widget/Button;

    .line 57
    .line 58
    iput-object v1, p0, Lsa/d;->h:Landroid/widget/Button;

    .line 59
    .line 60
    iget-object v5, p0, Lsa/d;->c:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lsa/d;->h:Landroid/widget/Button;

    .line 66
    .line 67
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lsa/d;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 71
    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    iget-object v1, p0, Lsa/d;->h:Landroid/widget/Button;

    .line 75
    .line 76
    new-instance v5, Lsa/c;

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    invoke-direct {v5, p0, v2, v6}, Lsa/c;-><init>(Lsa/d;Lsa/e;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    :cond_1
    :goto_0
    iget-object v1, p0, Lsa/d;->d:Ljava/lang/String;

    .line 94
    .line 95
    const v5, 0x7f0b031a

    .line 96
    .line 97
    .line 98
    if-eqz v1, :cond_2

    .line 99
    .line 100
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Landroid/widget/Button;

    .line 105
    .line 106
    iput-object v1, p0, Lsa/d;->i:Landroid/widget/Button;

    .line 107
    .line 108
    iget-object v4, p0, Lsa/d;->d:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lsa/d;->i:Landroid/widget/Button;

    .line 114
    .line 115
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lsa/d;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 119
    .line 120
    if-eqz v1, :cond_3

    .line 121
    .line 122
    iget-object v1, p0, Lsa/d;->i:Landroid/widget/Button;

    .line 123
    .line 124
    new-instance v4, Lsa/c;

    .line 125
    .line 126
    const/4 v5, 0x1

    .line 127
    invoke-direct {v4, p0, v2, v5}, Lsa/c;-><init>(Lsa/d;Lsa/e;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    :cond_3
    :goto_1
    iget-object v1, p0, Lsa/d;->b:Ljava/lang/String;

    .line 142
    .line 143
    if-eqz v1, :cond_4

    .line 144
    .line 145
    const v1, 0x7f0b02ab

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, Landroid/widget/TextView;

    .line 153
    .line 154
    iget-object v3, p0, Lsa/d;->b:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_4
    iget-object v1, p0, Lsa/d;->e:Landroid/view/View;

    .line 161
    .line 162
    if-eqz v1, :cond_5

    .line 163
    .line 164
    const v1, 0x7f0b00eb

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    check-cast v4, Landroid/widget/LinearLayout;

    .line 172
    .line 173
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    check-cast v1, Landroid/widget/LinearLayout;

    .line 181
    .line 182
    iget-object v4, p0, Lsa/d;->e:Landroid/view/View;

    .line 183
    .line 184
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    .line 185
    .line 186
    invoke-direct {v5, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    .line 191
    .line 192
    :cond_5
    :goto_2
    iget-object v1, p0, Lsa/d;->e:Landroid/view/View;

    .line 193
    .line 194
    if-nez v1, :cond_6

    .line 195
    .line 196
    iput-object v0, p0, Lsa/d;->e:Landroid/view/View;

    .line 197
    .line 198
    :cond_6
    const v1, 0x7f0b0122

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    check-cast v1, Lcom/dinuscxj/progressbar/CircleProgressBar;

    .line 206
    .line 207
    const v1, 0x7f0b0121

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    check-cast v1, Landroid/widget/ImageView;

    .line 215
    .line 216
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 217
    .line 218
    .line 219
    return-object v2
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const p3, 0x7f0b031a

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x4

    .line 10
    if-ne p1, p3, :cond_0

    .line 11
    .line 12
    if-ne p2, v1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lsa/d;->i:Landroid/widget/Button;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 17
    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    const p3, 0x7f0b0352

    .line 21
    .line 22
    .line 23
    if-ne p1, p3, :cond_1

    .line 24
    .line 25
    if-ne p2, v1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lsa/d;->h:Landroid/widget/Button;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 30
    .line 31
    .line 32
    return v0

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    return p1
.end method
