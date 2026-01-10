.class public Lsa/p;
.super Landroidx/fragment/app/m;
.source "MyApplication"


# static fields
.field public static final s0:Ljava/lang/String;


# instance fields
.field public k0:Ljava/lang/Runnable;

.field public l0:Ljava/lang/Runnable;

.field public m0:Landroid/widget/TextView;

.field public n0:Landroid/widget/Button;

.field public o0:Landroid/widget/Button;

.field public p0:Landroid/widget/Button;

.field public final q0:Landroid/os/Handler;

.field public r0:Lsa/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "9kK6\n"

    .line 2
    .line 3
    const-string v1, "mzHdNT00cyc=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lsa/p;->s0:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lsa/p;->q0:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/m;->B()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lsa/p;->o0:Landroid/widget/Button;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final R()Landroid/app/Dialog;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0e011e

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f0b025b

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/widget/Button;

    .line 25
    .line 26
    iput-object v1, p0, Lsa/p;->n0:Landroid/widget/Button;

    .line 27
    .line 28
    const v2, 0x7f120026

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v2}, Landroidx/fragment/app/s;->n(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lsa/p;->n0:Landroid/widget/Button;

    .line 39
    .line 40
    new-instance v2, Lsa/n;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-direct {v2, p0, v3}, Lsa/n;-><init>(Lsa/p;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    const v1, 0x7f0b03cf

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroid/widget/Button;

    .line 57
    .line 58
    iput-object v1, p0, Lsa/p;->p0:Landroid/widget/Button;

    .line 59
    .line 60
    const v2, 0x7f1201a4

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lsa/p;->p0:Landroid/widget/Button;

    .line 67
    .line 68
    new-instance v2, Lsa/n;

    .line 69
    .line 70
    const/4 v3, 0x1

    .line 71
    invoke-direct {v2, p0, v3}, Lsa/n;-><init>(Lsa/p;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    const v1, 0x7f0b0371

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Landroid/widget/Button;

    .line 85
    .line 86
    iput-object v1, p0, Lsa/p;->o0:Landroid/widget/Button;

    .line 87
    .line 88
    const v2, 0x7f120005

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v2}, Landroidx/fragment/app/s;->n(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lsa/p;->o0:Landroid/widget/Button;

    .line 99
    .line 100
    new-instance v2, Lsa/n;

    .line 101
    .line 102
    const/4 v3, 0x2

    .line 103
    invoke-direct {v2, p0, v3}, Lsa/n;-><init>(Lsa/p;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    const v1, 0x7f0b02ab

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Landroid/widget/TextView;

    .line 117
    .line 118
    iput-object v1, p0, Lsa/p;->m0:Landroid/widget/TextView;

    .line 119
    .line 120
    iget-object v1, p0, Landroidx/fragment/app/s;->g:Landroid/os/Bundle;

    .line 121
    .line 122
    sget-object v2, Lsa/p;->s0:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    if-eqz v1, :cond_0

    .line 129
    .line 130
    iget-object v2, p0, Lsa/p;->m0:Landroid/widget/TextView;

    .line 131
    .line 132
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    :cond_0
    const-string v1, "Yji1\n"

    .line 136
    .line 137
    const-string v2, "NnnyVZYEOIo=\n"

    .line 138
    .line 139
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    const-string v1, "9HqxNVpsm8zffZMrUGrP3e1ZlzRMbIjMtWeXM2tol92zeYEgFjfP\n"

    .line 143
    .line 144
    const-string v2, "mxTyRz8N76k=\n"

    .line 145
    .line 146
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    new-instance v1, Landroidx/appcompat/app/i;

    .line 150
    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/s;->K()Landroid/content/Context;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-direct {v1, v2}, Landroidx/appcompat/app/i;-><init>(Landroid/content/Context;)V

    .line 156
    .line 157
    .line 158
    iget-object v2, v1, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/app/e;

    .line 159
    .line 160
    iput-object v0, v2, Landroidx/appcompat/app/e;->i:Landroid/view/View;

    .line 161
    .line 162
    invoke-virtual {v1}, Landroidx/appcompat/app/i;->a()Landroidx/appcompat/app/j;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 171
    .line 172
    const/4 v3, 0x0

    .line 173
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    .line 178
    .line 179
    new-instance v1, Lsa/m;

    .line 180
    .line 181
    invoke-direct {v1, p0}, Lsa/m;-><init>(Lsa/p;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 185
    .line 186
    .line 187
    return-object v0
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/m;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lsa/p;->r0:Lsa/o;

    .line 5
    .line 6
    invoke-interface {p1}, Lsa/o;->onDismiss()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
