.class public final Lz9/a;
.super Ljava/lang/Thread;
.source "MyApplication"


# static fields
.field public static final i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final a:Lz9/l;

.field public final b:Lj9/n;

.field public c:I

.field public d:J

.field public e:J

.field public f:I

.field public g:Z

.field public final synthetic h:Lz9/b;

.field private volatile indexInArray:I

.field private volatile nextParkedWorker:Ljava/lang/Object;

.field private volatile workerCtl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lz9/a;

    .line 2
    .line 3
    const-string v1, "workerCtl"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lz9/a;->i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lz9/b;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz9/a;->h:Lz9/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lz9/l;

    .line 11
    .line 12
    invoke-direct {p1}, Lz9/l;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lz9/a;->a:Lz9/l;

    .line 16
    .line 17
    new-instance p1, Lj9/n;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lz9/a;->b:Lj9/n;

    .line 23
    .line 24
    const/4 p1, 0x4

    .line 25
    iput p1, p0, Lz9/a;->c:I

    .line 26
    .line 27
    sget-object p1, Lz9/b;->k:Lu7/b;

    .line 28
    .line 29
    iput-object p1, p0, Lz9/a;->nextParkedWorker:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object p1, Lm9/e;->a:Lm9/d;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    sget-object p1, Lm9/e;->b:Lm9/a;

    .line 37
    .line 38
    invoke-virtual {p1}, Lm9/a;->a()Ljava/util/Random;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput p1, p0, Lz9/a;->f:I

    .line 47
    .line 48
    invoke-virtual {p0, p2}, Lz9/a;->f(I)V

    .line 49
    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final a(Z)Lz9/h;
    .locals 11

    .line 1
    iget v0, p0, Lz9/a;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lz9/a;->a:Lz9/l;

    .line 6
    .line 7
    iget-object v4, p0, Lz9/a;->h:Lz9/b;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lz9/b;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 14
    .line 15
    :cond_1
    iget-object v6, p0, Lz9/a;->h:Lz9/b;

    .line 16
    .line 17
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v7

    .line 21
    const-wide v9, 0x7ffffc0000000000L

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    and-long/2addr v9, v7

    .line 27
    const/16 v5, 0x2a

    .line 28
    .line 29
    shr-long/2addr v9, v5

    .line 30
    long-to-int v5, v9

    .line 31
    if-nez v5, :cond_a

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    :goto_0
    sget-object p1, Lz9/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 37
    .line 38
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lz9/h;

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-object v5, v0, Lz9/h;->b:Landroidx/leanback/widget/o;

    .line 48
    .line 49
    iget v5, v5, Landroidx/leanback/widget/o;->a:I

    .line 50
    .line 51
    if-ne v5, v1, :cond_5

    .line 52
    .line 53
    :cond_3
    invoke-virtual {p1, v3, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_4

    .line 58
    .line 59
    move-object v2, v0

    .line 60
    goto :goto_2

    .line 61
    :cond_4
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    if-eq v5, v0, :cond_3

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    :goto_1
    sget-object p1, Lz9/l;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 69
    .line 70
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    sget-object v0, Lz9/l;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 75
    .line 76
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    :cond_6
    if-eq p1, v0, :cond_8

    .line 81
    .line 82
    sget-object v5, Lz9/l;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 83
    .line 84
    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-nez v5, :cond_7

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_7
    add-int/lit8 v0, v0, -0x1

    .line 92
    .line 93
    invoke-virtual {v3, v0, v1}, Lz9/l;->c(IZ)Lz9/h;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    if-eqz v5, :cond_6

    .line 98
    .line 99
    move-object v2, v5

    .line 100
    :cond_8
    :goto_2
    if-nez v2, :cond_9

    .line 101
    .line 102
    iget-object p1, v4, Lz9/b;->f:Lz9/e;

    .line 103
    .line 104
    invoke-virtual {p1}, Lx9/k;->d()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    move-object v2, p1

    .line 109
    check-cast v2, Lz9/h;

    .line 110
    .line 111
    if-nez v2, :cond_9

    .line 112
    .line 113
    invoke-virtual {p0, v1}, Lz9/a;->i(I)Lz9/h;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    :cond_9
    return-object v2

    .line 118
    :cond_a
    const-wide v9, 0x40000000000L

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    sub-long v9, v7, v9

    .line 124
    .line 125
    sget-object v5, Lz9/b;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 126
    .line 127
    invoke-virtual/range {v5 .. v10}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz v5, :cond_1

    .line 132
    .line 133
    iput v1, p0, Lz9/a;->c:I

    .line 134
    .line 135
    :goto_3
    if-eqz p1, :cond_f

    .line 136
    .line 137
    iget p1, v4, Lz9/b;->a:I

    .line 138
    .line 139
    mul-int/lit8 p1, p1, 0x2

    .line 140
    .line 141
    invoke-virtual {p0, p1}, Lz9/a;->d(I)I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-nez p1, :cond_b

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_b
    const/4 v1, 0x0

    .line 149
    :goto_4
    if-eqz v1, :cond_c

    .line 150
    .line 151
    invoke-virtual {p0}, Lz9/a;->e()Lz9/h;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-eqz p1, :cond_c

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    sget-object p1, Lz9/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 162
    .line 163
    invoke-virtual {p1, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Lz9/h;

    .line 168
    .line 169
    if-nez p1, :cond_d

    .line 170
    .line 171
    invoke-virtual {v3}, Lz9/l;->b()Lz9/h;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    :cond_d
    if-eqz p1, :cond_e

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_e
    if-nez v1, :cond_10

    .line 179
    .line 180
    invoke-virtual {p0}, Lz9/a;->e()Lz9/h;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    if-eqz p1, :cond_10

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_f
    invoke-virtual {p0}, Lz9/a;->e()Lz9/h;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    if-eqz p1, :cond_10

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_10
    const/4 p1, 0x3

    .line 195
    invoke-virtual {p0, p1}, Lz9/a;->i(I)Lz9/h;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    :goto_5
    return-object p1
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lz9/a;->indexInArray:I

    .line 2
    .line 3
    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lz9/a;->nextParkedWorker:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d(I)I
    .locals 3

    .line 1
    iget v0, p0, Lz9/a;->f:I

    .line 2
    .line 3
    shl-int/lit8 v1, v0, 0xd

    .line 4
    .line 5
    xor-int/2addr v0, v1

    .line 6
    shr-int/lit8 v1, v0, 0x11

    .line 7
    .line 8
    xor-int/2addr v0, v1

    .line 9
    shl-int/lit8 v1, v0, 0x5

    .line 10
    .line 11
    xor-int/2addr v0, v1

    .line 12
    iput v0, p0, Lz9/a;->f:I

    .line 13
    .line 14
    add-int/lit8 v1, p1, -0x1

    .line 15
    .line 16
    and-int v2, v1, p1

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    and-int p1, v0, v1

    .line 21
    .line 22
    return p1

    .line 23
    :cond_0
    const v1, 0x7fffffff

    .line 24
    .line 25
    .line 26
    and-int/2addr v0, v1

    .line 27
    rem-int/2addr v0, p1

    .line 28
    return v0
.end method

.method public final e()Lz9/h;
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lz9/a;->d(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lz9/a;->h:Lz9/b;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, v1, Lz9/b;->e:Lz9/e;

    .line 11
    .line 12
    invoke-virtual {v0}, Lx9/k;->d()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lz9/h;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    iget-object v0, v1, Lz9/b;->f:Lz9/e;

    .line 22
    .line 23
    invoke-virtual {v0}, Lx9/k;->d()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lz9/h;

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    iget-object v0, v1, Lz9/b;->f:Lz9/e;

    .line 31
    .line 32
    invoke-virtual {v0}, Lx9/k;->d()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lz9/h;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_2
    iget-object v0, v1, Lz9/b;->e:Lz9/e;

    .line 42
    .line 43
    invoke-virtual {v0}, Lx9/k;->d()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lz9/h;

    .line 48
    .line 49
    return-object v0
.end method

.method public final f(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lz9/a;->h:Lz9/b;

    .line 7
    .line 8
    iget-object v1, v1, Lz9/b;->d:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "-worker-"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const-string v1, "TERMINATED"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iput p1, p0, Lz9/a;->indexInArray:I

    .line 38
    .line 39
    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz9/a;->nextParkedWorker:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public final h(I)Z
    .locals 6

    .line 1
    iget v0, p0, Lz9/a;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-eqz v1, :cond_1

    .line 9
    .line 10
    sget-object v2, Lz9/b;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 11
    .line 12
    const-wide v3, 0x40000000000L

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    iget-object v5, p0, Lz9/a;->h:Lz9/b;

    .line 18
    .line 19
    invoke-virtual {v2, v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 20
    .line 21
    .line 22
    :cond_1
    if-eq v0, p1, :cond_2

    .line 23
    .line 24
    iput p1, p0, Lz9/a;->c:I

    .line 25
    .line 26
    :cond_2
    return v1
.end method

.method public final i(I)Lz9/h;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lz9/b;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 6
    .line 7
    iget-object v3, v0, Lz9/a;->h:Lz9/b;

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    const-wide/32 v6, 0x1fffff

    .line 14
    .line 15
    .line 16
    and-long/2addr v4, v6

    .line 17
    long-to-int v2, v4

    .line 18
    const/4 v4, 0x2

    .line 19
    const/4 v5, 0x0

    .line 20
    if-ge v2, v4, :cond_0

    .line 21
    .line 22
    return-object v5

    .line 23
    :cond_0
    invoke-virtual {v0, v2}, Lz9/a;->d(I)I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    const/4 v10, 0x0

    .line 28
    const-wide v11, 0x7fffffffffffffffL

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    :goto_0
    if-ge v10, v2, :cond_10

    .line 34
    .line 35
    const/4 v15, 0x1

    .line 36
    add-int/2addr v6, v15

    .line 37
    if-le v6, v2, :cond_1

    .line 38
    .line 39
    const/4 v6, 0x1

    .line 40
    :cond_1
    iget-object v4, v3, Lz9/b;->g:Lx9/q;

    .line 41
    .line 42
    invoke-virtual {v4, v6}, Lx9/q;->b(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lz9/a;

    .line 47
    .line 48
    if-eqz v4, :cond_e

    .line 49
    .line 50
    if-eq v4, v0, :cond_e

    .line 51
    .line 52
    const/4 v7, 0x3

    .line 53
    iget-object v4, v4, Lz9/a;->a:Lz9/l;

    .line 54
    .line 55
    if-ne v1, v7, :cond_2

    .line 56
    .line 57
    invoke-virtual {v4}, Lz9/l;->b()Lz9/h;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    sget-object v7, Lz9/l;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 66
    .line 67
    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    sget-object v8, Lz9/l;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 72
    .line 73
    invoke-virtual {v8, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-ne v1, v15, :cond_3

    .line 78
    .line 79
    const/4 v9, 0x1

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    const/4 v9, 0x0

    .line 82
    :goto_1
    if-eq v7, v8, :cond_4

    .line 83
    .line 84
    if-eqz v9, :cond_5

    .line 85
    .line 86
    sget-object v13, Lz9/l;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 87
    .line 88
    invoke-virtual {v13, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    if-nez v13, :cond_5

    .line 93
    .line 94
    :cond_4
    move-object v7, v5

    .line 95
    goto :goto_2

    .line 96
    :cond_5
    add-int/lit8 v13, v7, 0x1

    .line 97
    .line 98
    invoke-virtual {v4, v7, v9}, Lz9/l;->c(IZ)Lz9/h;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    if-nez v7, :cond_6

    .line 103
    .line 104
    move v7, v13

    .line 105
    goto :goto_1

    .line 106
    :cond_6
    :goto_2
    iget-object v13, v0, Lz9/a;->b:Lj9/n;

    .line 107
    .line 108
    if-eqz v7, :cond_7

    .line 109
    .line 110
    iput-object v7, v13, Lj9/n;->a:Ljava/lang/Object;

    .line 111
    .line 112
    move/from16 v19, v6

    .line 113
    .line 114
    :goto_3
    const-wide/16 v6, -0x1

    .line 115
    .line 116
    :goto_4
    const-wide/16 v8, -0x1

    .line 117
    .line 118
    goto :goto_8

    .line 119
    :cond_7
    :goto_5
    sget-object v7, Lz9/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 120
    .line 121
    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v14

    .line 125
    check-cast v14, Lz9/h;

    .line 126
    .line 127
    const-wide/16 v18, -0x2

    .line 128
    .line 129
    if-nez v14, :cond_8

    .line 130
    .line 131
    :goto_6
    move-wide/from16 v21, v18

    .line 132
    .line 133
    move/from16 v19, v6

    .line 134
    .line 135
    move-wide/from16 v6, v21

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_8
    iget-object v8, v14, Lz9/h;->b:Landroidx/leanback/widget/o;

    .line 139
    .line 140
    iget v8, v8, Landroidx/leanback/widget/o;->a:I

    .line 141
    .line 142
    if-ne v8, v15, :cond_9

    .line 143
    .line 144
    const/4 v8, 0x1

    .line 145
    goto :goto_7

    .line 146
    :cond_9
    const/4 v8, 0x2

    .line 147
    :goto_7
    and-int/2addr v8, v1

    .line 148
    if-nez v8, :cond_a

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_a
    sget-object v8, Lz9/j;->f:Lz9/f;

    .line 152
    .line 153
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 157
    .line 158
    .line 159
    move-result-wide v8

    .line 160
    move/from16 v19, v6

    .line 161
    .line 162
    iget-wide v5, v14, Lz9/h;->a:J

    .line 163
    .line 164
    sub-long/2addr v8, v5

    .line 165
    sget-wide v5, Lz9/j;->b:J

    .line 166
    .line 167
    cmp-long v20, v8, v5

    .line 168
    .line 169
    if-gez v20, :cond_b

    .line 170
    .line 171
    sub-long v4, v5, v8

    .line 172
    .line 173
    move-wide v6, v4

    .line 174
    const/4 v5, 0x0

    .line 175
    goto :goto_4

    .line 176
    :cond_b
    const/4 v5, 0x0

    .line 177
    invoke-virtual {v7, v4, v14, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    if-eqz v6, :cond_d

    .line 182
    .line 183
    iput-object v14, v13, Lj9/n;->a:Ljava/lang/Object;

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :goto_8
    cmp-long v4, v6, v8

    .line 187
    .line 188
    if-nez v4, :cond_c

    .line 189
    .line 190
    iget-object v1, v13, Lj9/n;->a:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v1, Lz9/h;

    .line 193
    .line 194
    iput-object v5, v13, Lj9/n;->a:Ljava/lang/Object;

    .line 195
    .line 196
    return-object v1

    .line 197
    :cond_c
    const-wide/16 v16, 0x0

    .line 198
    .line 199
    cmp-long v4, v6, v16

    .line 200
    .line 201
    if-lez v4, :cond_f

    .line 202
    .line 203
    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 204
    .line 205
    .line 206
    move-result-wide v11

    .line 207
    goto :goto_9

    .line 208
    :cond_d
    const-wide/16 v8, -0x1

    .line 209
    .line 210
    const-wide/16 v16, 0x0

    .line 211
    .line 212
    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    if-eq v5, v14, :cond_b

    .line 217
    .line 218
    move/from16 v6, v19

    .line 219
    .line 220
    const/4 v5, 0x0

    .line 221
    goto :goto_5

    .line 222
    :cond_e
    move/from16 v19, v6

    .line 223
    .line 224
    :cond_f
    :goto_9
    add-int/lit8 v10, v10, 0x1

    .line 225
    .line 226
    move/from16 v6, v19

    .line 227
    .line 228
    const/4 v4, 0x2

    .line 229
    const/4 v5, 0x0

    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    :cond_10
    const-wide v4, 0x7fffffffffffffffL

    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    const-wide/16 v16, 0x0

    .line 238
    .line 239
    cmp-long v1, v11, v4

    .line 240
    .line 241
    if-eqz v1, :cond_11

    .line 242
    .line 243
    goto :goto_a

    .line 244
    :cond_11
    move-wide/from16 v11, v16

    .line 245
    .line 246
    :goto_a
    iput-wide v11, v0, Lz9/a;->e:J

    .line 247
    .line 248
    const/4 v1, 0x0

    .line 249
    return-object v1
.end method

.method public final run()V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 5
    :cond_1
    :goto_1
    iget-object v3, v1, Lz9/a;->h:Lz9/b;

    .line 6
    .line 7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v4, Lz9/b;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 11
    .line 12
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x5

    .line 17
    if-eqz v3, :cond_3

    .line 18
    .line 19
    :cond_2
    const/4 v2, 0x5

    .line 20
    goto/16 :goto_a

    .line 21
    .line 22
    :cond_3
    iget v3, v1, Lz9/a;->c:I

    .line 23
    .line 24
    if-eq v3, v4, :cond_2

    .line 25
    .line 26
    iget-boolean v3, v1, Lz9/a;->g:Z

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Lz9/a;->a(Z)Lz9/h;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/4 v5, 0x3

    .line 33
    const-wide/32 v6, -0x200000

    .line 34
    .line 35
    .line 36
    const-wide/16 v8, 0x0

    .line 37
    .line 38
    if-eqz v3, :cond_a

    .line 39
    .line 40
    iput-wide v8, v1, Lz9/a;->e:J

    .line 41
    .line 42
    iget-object v0, v3, Lz9/h;->b:Landroidx/leanback/widget/o;

    .line 43
    .line 44
    iget v10, v0, Landroidx/leanback/widget/o;->a:I

    .line 45
    .line 46
    iput-wide v8, v1, Lz9/a;->d:J

    .line 47
    .line 48
    iget v0, v1, Lz9/a;->c:I

    .line 49
    .line 50
    const/4 v8, 0x2

    .line 51
    if-ne v0, v5, :cond_4

    .line 52
    .line 53
    iput v8, v1, Lz9/a;->c:I

    .line 54
    .line 55
    :cond_4
    iget-object v5, v1, Lz9/a;->h:Lz9/b;

    .line 56
    .line 57
    if-nez v10, :cond_5

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_5
    invoke-virtual {v1, v8}, Lz9/a;->h(I)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_8

    .line 65
    .line 66
    invoke-virtual {v5}, Lz9/b;->e()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_6

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_6
    sget-object v0, Lz9/b;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 74
    .line 75
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v8

    .line 79
    invoke-virtual {v5, v8, v9}, Lz9/b;->d(J)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_7

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_7
    invoke-virtual {v5}, Lz9/b;->e()Z

    .line 87
    .line 88
    .line 89
    :cond_8
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    :try_start_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    move-object v3, v0

    .line 98
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-interface {v8, v0, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    :goto_3
    if-nez v10, :cond_9

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_9
    sget-object v0, Lz9/b;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 113
    .line 114
    invoke-virtual {v0, v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 115
    .line 116
    .line 117
    iget v0, v1, Lz9/a;->c:I

    .line 118
    .line 119
    if-eq v0, v4, :cond_0

    .line 120
    .line 121
    const/4 v0, 0x4

    .line 122
    iput v0, v1, Lz9/a;->c:I

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_a
    iput-boolean v2, v1, Lz9/a;->g:Z

    .line 126
    .line 127
    iget-wide v10, v1, Lz9/a;->e:J

    .line 128
    .line 129
    const/4 v3, 0x1

    .line 130
    cmp-long v12, v10, v8

    .line 131
    .line 132
    if-eqz v12, :cond_c

    .line 133
    .line 134
    if-nez v0, :cond_b

    .line 135
    .line 136
    const/4 v0, 0x1

    .line 137
    goto/16 :goto_1

    .line 138
    .line 139
    :cond_b
    invoke-virtual {v1, v5}, Lz9/a;->h(I)Z

    .line 140
    .line 141
    .line 142
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 143
    .line 144
    .line 145
    iget-wide v3, v1, Lz9/a;->e:J

    .line 146
    .line 147
    invoke-static {v3, v4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 148
    .line 149
    .line 150
    iput-wide v8, v1, Lz9/a;->e:J

    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_c
    iget-object v10, v1, Lz9/a;->nextParkedWorker:Ljava/lang/Object;

    .line 155
    .line 156
    sget-object v11, Lz9/b;->k:Lu7/b;

    .line 157
    .line 158
    if-eq v10, v11, :cond_d

    .line 159
    .line 160
    const/4 v10, 0x1

    .line 161
    goto :goto_4

    .line 162
    :cond_d
    const/4 v10, 0x0

    .line 163
    :goto_4
    const-wide/32 v12, 0x1fffff

    .line 164
    .line 165
    .line 166
    if-nez v10, :cond_f

    .line 167
    .line 168
    iget-object v10, v1, Lz9/a;->h:Lz9/b;

    .line 169
    .line 170
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    iget-object v3, v1, Lz9/a;->nextParkedWorker:Ljava/lang/Object;

    .line 174
    .line 175
    if-eq v3, v11, :cond_e

    .line 176
    .line 177
    goto/16 :goto_1

    .line 178
    .line 179
    :cond_e
    sget-object v14, Lz9/b;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 180
    .line 181
    invoke-virtual {v14, v10}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 182
    .line 183
    .line 184
    move-result-wide v16

    .line 185
    and-long v3, v16, v12

    .line 186
    .line 187
    long-to-int v4, v3

    .line 188
    const-wide/32 v8, 0x200000

    .line 189
    .line 190
    .line 191
    add-long v8, v16, v8

    .line 192
    .line 193
    and-long/2addr v8, v6

    .line 194
    iget v3, v1, Lz9/a;->indexInArray:I

    .line 195
    .line 196
    iget-object v5, v10, Lz9/b;->g:Lx9/q;

    .line 197
    .line 198
    invoke-virtual {v5, v4}, Lx9/q;->b(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    iput-object v4, v1, Lz9/a;->nextParkedWorker:Ljava/lang/Object;

    .line 203
    .line 204
    int-to-long v3, v3

    .line 205
    or-long v18, v8, v3

    .line 206
    .line 207
    move-object v15, v10

    .line 208
    invoke-virtual/range {v14 .. v19}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-eqz v3, :cond_e

    .line 213
    .line 214
    goto/16 :goto_1

    .line 215
    .line 216
    :cond_f
    sget-object v6, Lz9/a;->i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 217
    .line 218
    const/4 v7, -0x1

    .line 219
    invoke-virtual {v6, v1, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 220
    .line 221
    .line 222
    :goto_5
    iget-object v6, v1, Lz9/a;->nextParkedWorker:Ljava/lang/Object;

    .line 223
    .line 224
    sget-object v10, Lz9/b;->k:Lu7/b;

    .line 225
    .line 226
    if-eq v6, v10, :cond_1

    .line 227
    .line 228
    sget-object v6, Lz9/a;->i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 229
    .line 230
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 231
    .line 232
    .line 233
    move-result v10

    .line 234
    if-ne v10, v7, :cond_1

    .line 235
    .line 236
    iget-object v10, v1, Lz9/a;->h:Lz9/b;

    .line 237
    .line 238
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    sget-object v11, Lz9/b;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 242
    .line 243
    invoke-virtual {v11, v10}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 244
    .line 245
    .line 246
    move-result v10

    .line 247
    if-eqz v10, :cond_10

    .line 248
    .line 249
    goto/16 :goto_1

    .line 250
    .line 251
    :cond_10
    iget v10, v1, Lz9/a;->c:I

    .line 252
    .line 253
    if-ne v10, v4, :cond_11

    .line 254
    .line 255
    goto/16 :goto_1

    .line 256
    .line 257
    :cond_11
    invoke-virtual {v1, v5}, Lz9/a;->h(I)Z

    .line 258
    .line 259
    .line 260
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 261
    .line 262
    .line 263
    iget-wide v14, v1, Lz9/a;->d:J

    .line 264
    .line 265
    cmp-long v10, v14, v8

    .line 266
    .line 267
    if-nez v10, :cond_12

    .line 268
    .line 269
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 270
    .line 271
    .line 272
    move-result-wide v14

    .line 273
    iget-object v10, v1, Lz9/a;->h:Lz9/b;

    .line 274
    .line 275
    iget-wide v4, v10, Lz9/b;->c:J

    .line 276
    .line 277
    add-long/2addr v14, v4

    .line 278
    iput-wide v14, v1, Lz9/a;->d:J

    .line 279
    .line 280
    :cond_12
    iget-object v4, v1, Lz9/a;->h:Lz9/b;

    .line 281
    .line 282
    iget-wide v4, v4, Lz9/b;->c:J

    .line 283
    .line 284
    invoke-static {v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 285
    .line 286
    .line 287
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 288
    .line 289
    .line 290
    move-result-wide v4

    .line 291
    iget-wide v14, v1, Lz9/a;->d:J

    .line 292
    .line 293
    sub-long/2addr v4, v14

    .line 294
    cmp-long v10, v4, v8

    .line 295
    .line 296
    if-ltz v10, :cond_18

    .line 297
    .line 298
    iput-wide v8, v1, Lz9/a;->d:J

    .line 299
    .line 300
    iget-object v4, v1, Lz9/a;->h:Lz9/b;

    .line 301
    .line 302
    iget-object v5, v4, Lz9/b;->g:Lx9/q;

    .line 303
    .line 304
    monitor-enter v5

    .line 305
    :try_start_1
    invoke-virtual {v11, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 306
    .line 307
    .line 308
    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 309
    if-eqz v10, :cond_13

    .line 310
    .line 311
    const/4 v10, 0x1

    .line 312
    goto :goto_6

    .line 313
    :cond_13
    const/4 v10, 0x0

    .line 314
    :goto_6
    if-eqz v10, :cond_14

    .line 315
    .line 316
    monitor-exit v5

    .line 317
    goto :goto_9

    .line 318
    :cond_14
    :try_start_2
    sget-object v10, Lz9/b;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 319
    .line 320
    invoke-virtual {v10, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 321
    .line 322
    .line 323
    move-result-wide v14

    .line 324
    and-long/2addr v14, v12

    .line 325
    long-to-int v11, v14

    .line 326
    iget v14, v4, Lz9/b;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 327
    .line 328
    if-gt v11, v14, :cond_15

    .line 329
    .line 330
    monitor-exit v5

    .line 331
    goto :goto_9

    .line 332
    :cond_15
    :try_start_3
    invoke-virtual {v6, v1, v7, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 333
    .line 334
    .line 335
    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 336
    if-nez v6, :cond_16

    .line 337
    .line 338
    monitor-exit v5

    .line 339
    goto :goto_9

    .line 340
    :cond_16
    :try_start_4
    iget v6, v1, Lz9/a;->indexInArray:I

    .line 341
    .line 342
    invoke-virtual {v1, v2}, Lz9/a;->f(I)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v4, v1, v6, v2}, Lz9/b;->c(Lz9/a;II)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v10, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    .line 349
    .line 350
    .line 351
    move-result-wide v10

    .line 352
    and-long/2addr v10, v12

    .line 353
    long-to-int v11, v10

    .line 354
    if-eq v11, v6, :cond_17

    .line 355
    .line 356
    iget-object v10, v4, Lz9/b;->g:Lx9/q;

    .line 357
    .line 358
    invoke-virtual {v10, v11}, Lx9/q;->b(I)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v10

    .line 362
    invoke-static {v10}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    check-cast v10, Lz9/a;

    .line 366
    .line 367
    iget-object v14, v4, Lz9/b;->g:Lx9/q;

    .line 368
    .line 369
    invoke-virtual {v14, v6, v10}, Lx9/q;->c(ILz9/a;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v10, v6}, Lz9/a;->f(I)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v4, v10, v11, v6}, Lz9/b;->c(Lz9/a;II)V

    .line 376
    .line 377
    .line 378
    goto :goto_7

    .line 379
    :catchall_1
    move-exception v0

    .line 380
    goto :goto_8

    .line 381
    :cond_17
    :goto_7
    iget-object v4, v4, Lz9/b;->g:Lx9/q;

    .line 382
    .line 383
    const/4 v6, 0x0

    .line 384
    invoke-virtual {v4, v11, v6}, Lx9/q;->c(ILz9/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 385
    .line 386
    .line 387
    monitor-exit v5

    .line 388
    const/4 v4, 0x5

    .line 389
    iput v4, v1, Lz9/a;->c:I

    .line 390
    .line 391
    goto :goto_9

    .line 392
    :goto_8
    monitor-exit v5

    .line 393
    throw v0

    .line 394
    :cond_18
    :goto_9
    const/4 v4, 0x5

    .line 395
    const/4 v5, 0x3

    .line 396
    goto/16 :goto_5

    .line 397
    .line 398
    :goto_a
    invoke-virtual {v1, v2}, Lz9/a;->h(I)Z

    .line 399
    .line 400
    .line 401
    return-void
.end method
