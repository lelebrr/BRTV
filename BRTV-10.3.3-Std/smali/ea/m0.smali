.class public final Lea/m0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/lifecycle/e0;


# instance fields
.field public final synthetic a:Lorg/bitspark/android/Spark;


# direct methods
.method public constructor <init>(Lorg/bitspark/android/Spark;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lea/m0;->a:Lorg/bitspark/android/Spark;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 2
    .line 3
    iget-object p1, p0, Lea/m0;->a:Lorg/bitspark/android/Spark;

    .line 4
    .line 5
    iget-object v0, p1, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 6
    .line 7
    iget-object v0, v0, Lta/a;->l:Landroidx/lifecycle/d0;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/lifecycle/d0;->d()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 14
    .line 15
    iget-object v1, p1, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 16
    .line 17
    iget-object v1, v1, Lta/a;->m:Landroidx/lifecycle/d0;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/lifecycle/d0;->d()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getTime()Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3}, Lorg/bitspark/android/utils/m;->a(Ljava/lang/Long;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v5, "Qg==\n"

    .line 45
    .line 46
    const-string v6, "b4JsQSt+SDg=\n"

    .line 47
    .line 48
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getEndTime()Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-static {v5}, Lorg/bitspark/android/utils/m;->a(Ljava/lang/Long;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {v3, v4}, Lea/q;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iget-object v4, p1, Lorg/bitspark/android/Spark;->t1:Landroid/widget/TextView;

    .line 75
    .line 76
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    iget-object v2, p1, Lorg/bitspark/android/Spark;->s1:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getEndTime()Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 89
    .line 90
    .line 91
    move-result-wide v2

    .line 92
    invoke-virtual {v0}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getTime()Ljava/lang/Long;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 97
    .line 98
    .line 99
    move-result-wide v4

    .line 100
    sub-long/2addr v2, v4

    .line 101
    iget-object v4, p1, Lorg/bitspark/android/Spark;->r1:Landroid/widget/ProgressBar;

    .line 102
    .line 103
    invoke-virtual {v0}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getTime()Ljava/lang/Long;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-static {v5}, Lorg/bitspark/android/utils/m;->j(Ljava/lang/Long;)J

    .line 108
    .line 109
    .line 110
    move-result-wide v5

    .line 111
    long-to-int v6, v5

    .line 112
    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 113
    .line 114
    .line 115
    iget-object v4, p1, Lorg/bitspark/android/Spark;->r1:Landroid/widget/ProgressBar;

    .line 116
    .line 117
    long-to-int v3, v2

    .line 118
    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getTime()Ljava/lang/Long;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iget-object v2, p1, Lorg/bitspark/android/Spark;->q0:La3/c;

    .line 126
    .line 127
    if-eqz v2, :cond_0

    .line 128
    .line 129
    sget-object v3, Lka/m0;->E0:Landroidx/mediarouter/app/c;

    .line 130
    .line 131
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    .line 133
    .line 134
    :cond_0
    new-instance v2, La3/c;

    .line 135
    .line 136
    const/16 v3, 0xe

    .line 137
    .line 138
    invoke-direct {v2, p1, v3, v0}, La3/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    iput-object v2, p1, Lorg/bitspark/android/Spark;->q0:La3/c;

    .line 142
    .line 143
    sget-object v0, Lka/m0;->E0:Landroidx/mediarouter/app/c;

    .line 144
    .line 145
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    .line 147
    .line 148
    if-eqz v1, :cond_1

    .line 149
    .line 150
    invoke-virtual {v1}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v1}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getTime()Ljava/lang/Long;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-static {v2}, Lorg/bitspark/android/utils/m;->a(Ljava/lang/Long;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v4, "og==\n"

    .line 168
    .line 169
    const-string v5, "jxnAhLT0tqg=\n"

    .line 170
    .line 171
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getEndTime()Ljava/lang/Long;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-static {v1}, Lorg/bitspark/android/utils/m;->a(Ljava/lang/Long;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-static {v2, v1}, Lea/q;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    iget-object v2, p1, Lorg/bitspark/android/Spark;->v1:Landroid/widget/TextView;

    .line 198
    .line 199
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    .line 201
    .line 202
    iget-object p1, p1, Lorg/bitspark/android/Spark;->u1:Landroid/widget/TextView;

    .line 203
    .line 204
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p1}, Lorg/bitspark/android/Spark;->s0()V

    .line 209
    .line 210
    .line 211
    goto :goto_0

    .line 212
    :cond_2
    invoke-virtual {p1}, Lorg/bitspark/android/Spark;->r0()V

    .line 213
    .line 214
    .line 215
    :goto_0
    return-void
.end method
