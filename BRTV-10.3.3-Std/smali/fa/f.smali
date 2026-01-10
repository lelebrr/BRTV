.class public final Lfa/f;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lfa/f;->a:I

    iput-object p3, p0, Lfa/f;->c:Ljava/lang/Object;

    iput p1, p0, Lfa/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lma/a;Lt3/d;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lfa/f;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfa/f;->c:Ljava/lang/Object;

    .line 3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput p2, p0, Lfa/f;->b:I

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget v0, p0, Lfa/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lfa/f;->b:I

    .line 7
    .line 8
    rem-int/lit8 p1, p1, 0x7

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const/16 p1, 0x15

    .line 20
    .line 21
    if-ne p2, p1, :cond_0

    .line 22
    .line 23
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 24
    .line 25
    const/16 p2, 0x69

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 28
    .line 29
    .line 30
    sget-object p1, Lea/d;->e:Lea/d;

    .line 31
    .line 32
    sput-object p1, Lka/m0;->F0:Lea/d;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    const/4 p1, 0x4

    .line 42
    if-ne p2, p1, :cond_1

    .line 43
    .line 44
    iget-object p1, p0, Lfa/f;->c:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Lma/a;

    .line 47
    .line 48
    iget-object p1, p1, Lma/a;->m:Lfa/n0;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-interface {p1}, Lfa/n0;->j()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x0

    .line 57
    :cond_2
    :goto_0
    return v0

    .line 58
    :pswitch_0
    iget-object v0, p0, Lfa/f;->c:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Lfa/g0;

    .line 61
    .line 62
    iget-object v1, v0, Lfa/g0;->d:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const/4 v2, 0x1

    .line 69
    sub-int/2addr v1, v2

    .line 70
    iget v3, p0, Lfa/f;->b:I

    .line 71
    .line 72
    if-ne v3, v1, :cond_3

    .line 73
    .line 74
    const/16 v1, 0x14

    .line 75
    .line 76
    if-ne p2, v1, :cond_3

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    iget-object v0, v0, Lfa/g0;->f:Lka/n;

    .line 80
    .line 81
    iget-object v0, v0, Lka/n;->b:Lka/r;

    .line 82
    .line 83
    invoke-virtual {v0, p1, p2, p3}, Lka/r;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    :goto_1
    return v2

    .line 88
    :pswitch_1
    const/4 v0, 0x1

    .line 89
    iget v1, p0, Lfa/f;->b:I

    .line 90
    .line 91
    if-nez v1, :cond_4

    .line 92
    .line 93
    const/16 v2, 0x13

    .line 94
    .line 95
    if-ne p2, v2, :cond_4

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    iget-object v2, p0, Lfa/f;->c:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v2, Lfa/d0;

    .line 101
    .line 102
    iget-object v3, v2, Lfa/d0;->d:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    sub-int/2addr v3, v0

    .line 109
    if-ne v1, v3, :cond_5

    .line 110
    .line 111
    const/16 v1, 0x14

    .line 112
    .line 113
    if-ne p2, v1, :cond_5

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    iget-object v0, v2, Lfa/d0;->f:Lka/n;

    .line 117
    .line 118
    iget-object v0, v0, Lka/n;->b:Lka/r;

    .line 119
    .line 120
    invoke-virtual {v0, p1, p2, p3}, Lka/r;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    :goto_2
    return v0

    .line 125
    :pswitch_2
    const/4 v0, 0x1

    .line 126
    iget v1, p0, Lfa/f;->b:I

    .line 127
    .line 128
    if-nez v1, :cond_6

    .line 129
    .line 130
    const/16 v2, 0x13

    .line 131
    .line 132
    if-ne p2, v2, :cond_6

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_6
    iget-object v2, p0, Lfa/f;->c:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v2, Lfa/k;

    .line 138
    .line 139
    invoke-virtual {v2}, Lfa/k;->getGroupCount()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    sub-int/2addr v3, v0

    .line 144
    if-ne v1, v3, :cond_8

    .line 145
    .line 146
    const/16 v3, 0x14

    .line 147
    .line 148
    if-ne p2, v3, :cond_8

    .line 149
    .line 150
    iget-object p1, v2, Lfa/k;->l:Ljava/util/HashMap;

    .line 151
    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-eqz p1, :cond_9

    .line 161
    .line 162
    iget-object p1, v2, Lfa/k;->l:Ljava/util/HashMap;

    .line 163
    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Ljava/lang/Boolean;

    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-nez p1, :cond_7

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_7
    const/4 v0, 0x0

    .line 182
    goto :goto_3

    .line 183
    :cond_8
    iget-object v0, v2, Lfa/k;->k:Lka/r;

    .line 184
    .line 185
    invoke-interface {v0, p1, p2, p3}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    :cond_9
    :goto_3
    return v0

    .line 190
    nop

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
