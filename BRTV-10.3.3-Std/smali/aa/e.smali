.class public final Laa/e;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Laa/a;


# static fields
.field public static final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _availablePermits:I

.field public final a:I

.field public final b:Laa/c;

.field private volatile deqIdx:J

.field private volatile enqIdx:J

.field private volatile head:Ljava/lang/Object;

.field private volatile tail:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "head"

    .line 2
    .line 3
    const-class v1, Laa/e;

    .line 4
    .line 5
    const-class v2, Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Laa/e;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    const-string v0, "deqIdx"

    .line 14
    .line 15
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Laa/e;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 20
    .line 21
    const-string v0, "tail"

    .line 22
    .line 23
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Laa/e;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 28
    .line 29
    const-string v0, "enqIdx"

    .line 30
    .line 31
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Laa/e;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 36
    .line 37
    const-string v0, "_availablePermits"

    .line 38
    .line 39
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Laa/e;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>(II)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Laa/e;->a:I

    .line 5
    .line 6
    if-lez p1, :cond_1

    .line 7
    .line 8
    if-ltz p2, :cond_0

    .line 9
    .line 10
    if-gt p2, p1, :cond_0

    .line 11
    .line 12
    new-instance v0, Laa/g;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-direct {v0, v2, v3, v4, v1}, Laa/g;-><init>(JLaa/g;I)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Laa/e;->head:Ljava/lang/Object;

    .line 22
    .line 23
    iput-object v0, p0, Laa/e;->tail:Ljava/lang/Object;

    .line 24
    .line 25
    sub-int/2addr p1, p2

    .line 26
    iput p1, p0, Laa/e;->_availablePermits:I

    .line 27
    .line 28
    new-instance p1, Laa/c;

    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    invoke-direct {p1, p2, p0}, Laa/c;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Laa/e;->b:Laa/c;

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    const-string p2, "The number of acquired permits should be in 0.."

    .line 38
    .line 39
    invoke-static {p1, p2}, La/e;->n(ILjava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p2

    .line 53
    :cond_1
    const-string p2, "Semaphore should have at least 1 permit, but had "

    .line 54
    .line 55
    invoke-static {p1, p2}, La/e;->n(ILjava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p2
.end method


# virtual methods
.method public final a(Lt9/e;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Laa/e;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    check-cast v3, Laa/g;

    .line 12
    .line 13
    sget-object v4, Laa/e;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 14
    .line 15
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    sget-object v6, Laa/b;->i:Laa/b;

    .line 20
    .line 21
    sget v7, Laa/f;->f:I

    .line 22
    .line 23
    int-to-long v7, v7

    .line 24
    div-long v7, v4, v7

    .line 25
    .line 26
    :goto_0
    invoke-static {v3, v7, v8, v6}, Lx9/a;->b(Laa/g;JLi9/p;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v9

    .line 30
    sget-object v10, Lx9/a;->b:Lu7/b;

    .line 31
    .line 32
    if-ne v9, v10, :cond_0

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_0
    invoke-static {v9}, Lx9/a;->c(Ljava/lang/Object;)Lx9/s;

    .line 36
    .line 37
    .line 38
    move-result-object v10

    .line 39
    :cond_1
    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v11

    .line 43
    check-cast v11, Lx9/s;

    .line 44
    .line 45
    iget-wide v12, v11, Lx9/s;->c:J

    .line 46
    .line 47
    iget-wide v14, v10, Lx9/s;->c:J

    .line 48
    .line 49
    cmp-long v16, v12, v14

    .line 50
    .line 51
    if-ltz v16, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    invoke-virtual {v10}, Lx9/s;->f()Z

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    if-nez v12, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {v2, v0, v11, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v12

    .line 65
    if-eqz v12, :cond_b

    .line 66
    .line 67
    invoke-virtual {v11}, Lx9/s;->c()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_4

    .line 72
    .line 73
    invoke-virtual {v11}, Lx9/c;->b()V

    .line 74
    .line 75
    .line 76
    :cond_4
    :goto_2
    invoke-static {v9}, Lx9/a;->c(Ljava/lang/Object;)Lx9/s;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    move-object v12, v2

    .line 81
    check-cast v12, Laa/g;

    .line 82
    .line 83
    sget v2, Laa/f;->f:I

    .line 84
    .line 85
    int-to-long v2, v2

    .line 86
    rem-long/2addr v4, v2

    .line 87
    long-to-int v13, v4

    .line 88
    iget-object v14, v12, Laa/g;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 89
    .line 90
    :cond_5
    const/4 v2, 0x0

    .line 91
    invoke-virtual {v14, v13, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    const/4 v3, 0x1

    .line 96
    if-eqz v2, :cond_8

    .line 97
    .line 98
    :cond_6
    sget-object v2, Lt9/e;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 99
    .line 100
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    const v5, 0x1fffffff

    .line 105
    .line 106
    .line 107
    and-int v6, v4, v5

    .line 108
    .line 109
    if-ne v6, v5, :cond_7

    .line 110
    .line 111
    shr-int/lit8 v5, v4, 0x1d

    .line 112
    .line 113
    shl-int/lit8 v5, v5, 0x1d

    .line 114
    .line 115
    add-int/2addr v5, v13

    .line 116
    invoke-virtual {v2, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_6

    .line 121
    .line 122
    invoke-virtual {v1, v12}, Lt9/e;->q(Lt9/b1;)V

    .line 123
    .line 124
    .line 125
    return v3

    .line 126
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 127
    .line 128
    const-string v2, "invokeOnCancellation should be called at most once"

    .line 129
    .line 130
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v1

    .line 134
    :cond_8
    invoke-virtual {v14, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    if-eqz v2, :cond_5

    .line 139
    .line 140
    sget-object v2, Laa/f;->b:Lu7/b;

    .line 141
    .line 142
    sget-object v4, Laa/f;->c:Lu7/b;

    .line 143
    .line 144
    :cond_9
    invoke-virtual {v14, v13, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-eqz v5, :cond_a

    .line 149
    .line 150
    sget-object v2, Lw8/l;->a:Lw8/l;

    .line 151
    .line 152
    iget v4, v1, Lt9/a0;->c:I

    .line 153
    .line 154
    iget-object v5, v0, Laa/e;->b:Laa/c;

    .line 155
    .line 156
    invoke-virtual {v1, v2, v4, v5}, Lt9/e;->u(Ljava/lang/Object;ILi9/l;)V

    .line 157
    .line 158
    .line 159
    return v3

    .line 160
    :cond_a
    invoke-virtual {v14, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    if-eq v5, v2, :cond_9

    .line 165
    .line 166
    const/4 v1, 0x0

    .line 167
    return v1

    .line 168
    :cond_b
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v12

    .line 172
    if-eq v12, v11, :cond_3

    .line 173
    .line 174
    invoke-virtual {v10}, Lx9/s;->c()Z

    .line 175
    .line 176
    .line 177
    move-result v11

    .line 178
    if-eqz v11, :cond_1

    .line 179
    .line 180
    invoke-virtual {v10}, Lx9/c;->b()V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_1
.end method

.method public final b()V
    .locals 15

    .line 1
    :cond_0
    sget-object v0, Laa/e;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, p0, Laa/e;->a:I

    .line 8
    .line 9
    if-lt v1, v2, :cond_2

    .line 10
    .line 11
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-le v1, v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, "The number of released permits cannot be greater than "

    .line 29
    .line 30
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_2
    if-ltz v1, :cond_3

    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    sget-object v0, Laa/e;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Laa/g;

    .line 58
    .line 59
    sget-object v2, Laa/e;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 60
    .line 61
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    sget v4, Laa/f;->f:I

    .line 66
    .line 67
    int-to-long v4, v4

    .line 68
    div-long v4, v2, v4

    .line 69
    .line 70
    sget-object v6, Laa/d;->i:Laa/d;

    .line 71
    .line 72
    :goto_1
    invoke-static {v1, v4, v5, v6}, Lx9/a;->b(Laa/g;JLi9/p;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    sget-object v8, Lx9/a;->b:Lu7/b;

    .line 77
    .line 78
    if-ne v7, v8, :cond_4

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_4
    invoke-static {v7}, Lx9/a;->c(Ljava/lang/Object;)Lx9/s;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    :cond_5
    :goto_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    check-cast v9, Lx9/s;

    .line 90
    .line 91
    iget-wide v10, v9, Lx9/s;->c:J

    .line 92
    .line 93
    iget-wide v12, v8, Lx9/s;->c:J

    .line 94
    .line 95
    cmp-long v14, v10, v12

    .line 96
    .line 97
    if-ltz v14, :cond_6

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_6
    invoke-virtual {v8}, Lx9/s;->f()Z

    .line 101
    .line 102
    .line 103
    move-result v10

    .line 104
    if-nez v10, :cond_7

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_7
    invoke-virtual {v0, p0, v9, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    if-eqz v10, :cond_16

    .line 112
    .line 113
    invoke-virtual {v9}, Lx9/s;->c()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_8

    .line 118
    .line 119
    invoke-virtual {v9}, Lx9/c;->b()V

    .line 120
    .line 121
    .line 122
    :cond_8
    :goto_3
    invoke-static {v7}, Lx9/a;->c(Ljava/lang/Object;)Lx9/s;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Laa/g;

    .line 127
    .line 128
    sget-object v1, Lx9/c;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 129
    .line 130
    const/4 v6, 0x0

    .line 131
    invoke-virtual {v1, v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iget-wide v7, v0, Lx9/s;->c:J

    .line 135
    .line 136
    const/4 v1, 0x0

    .line 137
    cmp-long v9, v7, v4

    .line 138
    .line 139
    if-lez v9, :cond_9

    .line 140
    .line 141
    goto/16 :goto_9

    .line 142
    .line 143
    :cond_9
    sget v4, Laa/f;->f:I

    .line 144
    .line 145
    int-to-long v4, v4

    .line 146
    rem-long/2addr v2, v4

    .line 147
    long-to-int v3, v2

    .line 148
    sget-object v2, Laa/f;->b:Lu7/b;

    .line 149
    .line 150
    iget-object v0, v0, Laa/g;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 151
    .line 152
    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    const/4 v4, 0x1

    .line 157
    if-nez v2, :cond_e

    .line 158
    .line 159
    sget v2, Laa/f;->a:I

    .line 160
    .line 161
    const/4 v5, 0x0

    .line 162
    :goto_4
    if-ge v5, v2, :cond_b

    .line 163
    .line 164
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    sget-object v7, Laa/f;->c:Lu7/b;

    .line 169
    .line 170
    if-ne v6, v7, :cond_a

    .line 171
    .line 172
    :goto_5
    const/4 v1, 0x1

    .line 173
    goto :goto_9

    .line 174
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_b
    sget-object v5, Laa/f;->b:Lu7/b;

    .line 178
    .line 179
    sget-object v7, Laa/f;->d:Lu7/b;

    .line 180
    .line 181
    :cond_c
    invoke-virtual {v0, v3, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_d

    .line 186
    .line 187
    const/4 v1, 0x1

    .line 188
    goto :goto_6

    .line 189
    :cond_d
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    if-eq v2, v5, :cond_c

    .line 194
    .line 195
    :goto_6
    xor-int/2addr v1, v4

    .line 196
    goto :goto_9

    .line 197
    :cond_e
    sget-object v0, Laa/f;->e:Lu7/b;

    .line 198
    .line 199
    if-ne v2, v0, :cond_f

    .line 200
    .line 201
    goto :goto_9

    .line 202
    :cond_f
    instance-of v0, v2, Lt9/d;

    .line 203
    .line 204
    if-eqz v0, :cond_15

    .line 205
    .line 206
    check-cast v2, Lt9/d;

    .line 207
    .line 208
    sget-object v0, Lw8/l;->a:Lw8/l;

    .line 209
    .line 210
    check-cast v2, Lt9/e;

    .line 211
    .line 212
    :goto_7
    sget-object v3, Lt9/e;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 213
    .line 214
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    instance-of v7, v5, Lt9/b1;

    .line 219
    .line 220
    sget-object v8, Lt9/u;->a:Lu7/b;

    .line 221
    .line 222
    if-eqz v7, :cond_13

    .line 223
    .line 224
    move-object v7, v5

    .line 225
    check-cast v7, Lt9/b1;

    .line 226
    .line 227
    iget v9, v2, Lt9/a0;->c:I

    .line 228
    .line 229
    iget-object v10, p0, Laa/e;->b:Laa/c;

    .line 230
    .line 231
    invoke-static {v7, v0, v9, v10}, Lt9/e;->v(Lt9/b1;Ljava/lang/Object;ILi9/l;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    :cond_10
    invoke-virtual {v3, v2, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v9

    .line 239
    if-eqz v9, :cond_12

    .line 240
    .line 241
    invoke-virtual {v2}, Lt9/e;->r()Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-nez v0, :cond_11

    .line 246
    .line 247
    invoke-virtual {v2}, Lt9/e;->k()V

    .line 248
    .line 249
    .line 250
    :cond_11
    move-object v6, v8

    .line 251
    goto :goto_8

    .line 252
    :cond_12
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v9

    .line 256
    if-eq v9, v5, :cond_10

    .line 257
    .line 258
    goto :goto_7

    .line 259
    :cond_13
    instance-of v0, v5, Lt9/j;

    .line 260
    .line 261
    :goto_8
    if-eqz v6, :cond_14

    .line 262
    .line 263
    iget v0, v2, Lt9/a0;->c:I

    .line 264
    .line 265
    invoke-virtual {v2, v0}, Lt9/e;->l(I)V

    .line 266
    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_14
    :goto_9
    if-eqz v1, :cond_0

    .line 270
    .line 271
    return-void

    .line 272
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 273
    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    const-string v3, "unexpected: "

    .line 277
    .line 278
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw v0

    .line 296
    :cond_16
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v10

    .line 300
    if-eq v10, v9, :cond_7

    .line 301
    .line 302
    invoke-virtual {v8}, Lx9/s;->c()Z

    .line 303
    .line 304
    .line 305
    move-result v9

    .line 306
    if-eqz v9, :cond_5

    .line 307
    .line 308
    invoke-virtual {v8}, Lx9/c;->b()V

    .line 309
    .line 310
    .line 311
    goto/16 :goto_2
.end method
