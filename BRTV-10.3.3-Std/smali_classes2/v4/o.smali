.class public abstract Lv4/o;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Lv4/b;

.field public final b:Ljava/lang/String;

.field public c:La1/b;

.field public final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lv4/a;->c(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lv4/o;->b:Ljava/lang/String;

    .line 8
    .line 9
    new-instance p1, Lv4/b;

    .line 10
    .line 11
    const-string v0, "MediaControlChannel"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {p1, v0, v1}, Lv4/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lv4/o;->a:Lv4/b;

    .line 18
    .line 19
    new-instance p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lv4/o;->d:Ljava/util/List;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(Lv4/n;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/o;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b()J
    .locals 4

    .line 1
    iget-object v0, p0, Lv4/o;->c:La1/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v1, p0, Lv4/o;->a:Lv4/b;

    .line 9
    .line 10
    iget-object v2, v1, Lv4/b;->a:Ljava/lang/String;

    .line 11
    .line 12
    const-string v3, "Attempt to generate requestId without a sink"

    .line 13
    .line 14
    invoke-virtual {v1, v3, v0}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    return-wide v0

    .line 24
    :cond_0
    iget-object v0, v0, La1/b;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    return-wide v0
.end method

.method public final c(JLjava/lang/String;)V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p3, v1, v2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    aput-object v3, v1, v4

    .line 10
    .line 11
    iget-object v3, p0, Lv4/o;->a:Lv4/b;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 17
    .line 18
    const-string v6, "user"

    .line 19
    .line 20
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    iget-object v6, v3, Lv4/b;->a:Ljava/lang/String;

    .line 25
    .line 26
    if-nez v5, :cond_0

    .line 27
    .line 28
    iget-boolean v5, v3, Lv4/b;->b:Z

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    invoke-static {v6, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    const-string v0, "Sending text message: %s to: %s"

    .line 39
    .line 40
    invoke-virtual {v3, v0, v1}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lv4/o;->c:La1/b;

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    new-array p1, v2, [Ljava/lang/Object;

    .line 52
    .line 53
    const-string p2, "Attempt to send text message without a sink"

    .line 54
    .line 55
    invoke-virtual {v3, p2, p1}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    iget-object v1, v0, La1/b;->b:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v1, Lp4/o;

    .line 66
    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    iget-object v3, p0, Lv4/o;->b:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v3}, Lv4/a;->c(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_3

    .line 79
    .line 80
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    const/high16 v6, 0x80000

    .line 85
    .line 86
    if-gt v5, v6, :cond_2

    .line 87
    .line 88
    invoke-static {}, Lc6/c;->c()Lc6/c;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    new-instance v5, Lp4/k;

    .line 93
    .line 94
    invoke-direct {v5, v1, v3, p3, v4}, Lp4/k;-><init>(Lp4/o;Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    iput-object v5, v2, Lc6/c;->c:Ljava/lang/Object;

    .line 98
    .line 99
    const/16 p3, 0x20d5

    .line 100
    .line 101
    iput p3, v2, Lc6/c;->a:I

    .line 102
    .line 103
    invoke-virtual {v2}, Lc6/c;->b()Lc6/c;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    invoke-virtual {v1, v4, p3}, Ly4/g;->c(ILc6/c;)Lw5/g;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    new-instance v1, Landroidx/recyclerview/widget/c;

    .line 112
    .line 113
    invoke-direct {v1, v0, p1, p2}, Landroidx/recyclerview/widget/c;-><init>(La1/b;J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    sget-object p1, Lw5/e;->a:La4/r;

    .line 120
    .line 121
    new-instance p2, Lw5/f;

    .line 122
    .line 123
    invoke-direct {p2, p1, v1}, Lw5/f;-><init>(La4/r;Lw5/b;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p3, Lw5/g;->b:Lk3/t;

    .line 127
    .line 128
    invoke-virtual {p1, p2}, Lk3/t;->h(Lw5/f;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3}, Lw5/g;->g()V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    .line 136
    .line 137
    sget-object p2, Lp4/o;->F:Lv4/b;

    .line 138
    .line 139
    iget-object p3, p2, Lv4/b;->a:Ljava/lang/String;

    .line 140
    .line 141
    const-string v0, "Message send failed. Message exceeds maximum size"

    .line 142
    .line 143
    invoke-virtual {p2, v0, p1}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 151
    .line 152
    const-string p2, "Message exceeds maximum size524288"

    .line 153
    .line 154
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p1

    .line 158
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 159
    .line 160
    const-string p2, "The message payload cannot be null or empty"

    .line 161
    .line 162
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p1

    .line 166
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 167
    .line 168
    const-string p2, "Device is not connected"

    .line 169
    .line 170
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p1
.end method
