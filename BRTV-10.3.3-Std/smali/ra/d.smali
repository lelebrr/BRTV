.class public final Lra/d;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lea/f0;


# direct methods
.method public synthetic constructor <init>(Lea/f0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lra/d;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lra/d;->b:Lea/f0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lra/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lra/d;->b:Lea/f0;

    .line 7
    .line 8
    iget-boolean v1, v0, Lea/f0;->c:Z

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    iget v1, v0, Lea/f0;->j:I

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    iget v1, v0, Lea/f0;->h:I

    .line 18
    .line 19
    iget v2, v0, Lea/f0;->i:I

    .line 20
    .line 21
    add-int/2addr v1, v2

    .line 22
    iput v1, v0, Lea/f0;->h:I

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput v1, v0, Lea/f0;->j:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    iput v1, v0, Lea/f0;->j:I

    .line 31
    .line 32
    :goto_0
    iget v1, v0, Lea/f0;->h:I

    .line 33
    .line 34
    mul-int/lit16 v1, v1, 0x3e8

    .line 35
    .line 36
    int-to-long v1, v1

    .line 37
    iget-wide v3, v0, Lea/f0;->d:J

    .line 38
    .line 39
    add-long/2addr v3, v1

    .line 40
    iput-wide v3, v0, Lea/f0;->d:J

    .line 41
    .line 42
    iget-wide v1, v0, Lea/f0;->g:J

    .line 43
    .line 44
    cmp-long v5, v3, v1

    .line 45
    .line 46
    if-lez v5, :cond_1

    .line 47
    .line 48
    iput-wide v1, v0, Lea/f0;->d:J

    .line 49
    .line 50
    :cond_1
    iget-wide v1, v0, Lea/f0;->d:J

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lea/f0;->b(J)V

    .line 53
    .line 54
    .line 55
    const-string v1, "mokfUHmEyg6dmgh2SoXWGJ6ECQRNntZD3A==\n"

    .line 56
    .line 57
    const-string v2, "/OhsJD/ruHk=\n"

    .line 58
    .line 59
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    const-string v1, "+/p+HQ==\n"

    .line 63
    .line 64
    const-string v2, "1tdTMFRAT/Q=\n"

    .line 65
    .line 66
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    iget-object v0, v0, Lea/f0;->e:Lea/u;

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    const-wide/16 v1, 0x64

    .line 75
    .line 76
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    .line 78
    .line 79
    :cond_2
    return-void

    .line 80
    :pswitch_0
    iget-object v0, p0, Lra/d;->b:Lea/f0;

    .line 81
    .line 82
    iget-boolean v1, v0, Lea/f0;->b:Z

    .line 83
    .line 84
    if-eqz v1, :cond_5

    .line 85
    .line 86
    iget v1, v0, Lea/f0;->j:I

    .line 87
    .line 88
    const/4 v2, 0x2

    .line 89
    if-ne v1, v2, :cond_3

    .line 90
    .line 91
    iget v1, v0, Lea/f0;->h:I

    .line 92
    .line 93
    iget v2, v0, Lea/f0;->i:I

    .line 94
    .line 95
    add-int/2addr v1, v2

    .line 96
    iput v1, v0, Lea/f0;->h:I

    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    iput v1, v0, Lea/f0;->j:I

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 103
    .line 104
    iput v1, v0, Lea/f0;->j:I

    .line 105
    .line 106
    :goto_1
    iget v1, v0, Lea/f0;->h:I

    .line 107
    .line 108
    mul-int/lit16 v1, v1, 0x3e8

    .line 109
    .line 110
    int-to-long v1, v1

    .line 111
    iget-wide v3, v0, Lea/f0;->d:J

    .line 112
    .line 113
    sub-long/2addr v3, v1

    .line 114
    iput-wide v3, v0, Lea/f0;->d:J

    .line 115
    .line 116
    const-wide/16 v1, 0x0

    .line 117
    .line 118
    cmp-long v5, v3, v1

    .line 119
    .line 120
    if-gez v5, :cond_4

    .line 121
    .line 122
    iput-wide v1, v0, Lea/f0;->d:J

    .line 123
    .line 124
    :cond_4
    const-string v1, "rs9fH/RGxG6yxEkU9ke2aanEElY=\n"

    .line 125
    .line 126
    const-string v2, "3Koodpoilhs=\n"

    .line 127
    .line 128
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    const-string v1, "1TLwEA==\n"

    .line 132
    .line 133
    const-string v2, "+B/dPQdc1Ws=\n"

    .line 134
    .line 135
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    iget-wide v1, v0, Lea/f0;->d:J

    .line 139
    .line 140
    invoke-virtual {v0, v1, v2}, Lea/f0;->b(J)V

    .line 141
    .line 142
    .line 143
    iget-object v0, v0, Lea/f0;->e:Lea/u;

    .line 144
    .line 145
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    .line 147
    .line 148
    const-wide/16 v1, 0x64

    .line 149
    .line 150
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    .line 152
    .line 153
    :cond_5
    return-void

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
