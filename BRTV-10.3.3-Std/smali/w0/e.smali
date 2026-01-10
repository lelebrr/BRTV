.class public abstract Lw0/e;
.super La2/a;
.source "MyApplication"


# static fields
.field public static final i:Z = true

.field public static final j:Ljava/lang/ref/ReferenceQueue;

.field public static final k:Lcom/google/android/material/internal/c0;


# instance fields
.field public final b:Ls4/h;

.field public c:Z

.field public final d:Landroid/view/View;

.field public e:Z

.field public final f:Landroid/view/Choreographer;

.field public final g:La1/a;

.field public final h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lw0/e;->j:Ljava/lang/ref/ReferenceQueue;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/material/internal/c0;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Lcom/google/android/material/internal/c0;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lw0/e;->k:Lcom/google/android/material/internal/c0;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILandroid/view/View;)V
    .locals 1

    .line 1
    if-nez p1, :cond_2

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ls4/h;

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    invoke-direct {p1, v0, p0}, Ls4/h;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lw0/e;->b:Ls4/h;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lw0/e;->c:Z

    .line 16
    .line 17
    new-array p1, p2, [Lw0/f;

    .line 18
    .line 19
    iput-object p3, p0, Lw0/e;->d:Landroid/view/View;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    sget-boolean p1, Lw0/e;->i:Z

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lw0/e;->f:Landroid/view/Choreographer;

    .line 36
    .line 37
    new-instance p1, La1/a;

    .line 38
    .line 39
    const/4 p2, 0x1

    .line 40
    invoke-direct {p1, p2, p0}, La1/a;-><init>(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lw0/e;->g:La1/a;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lw0/e;->g:La1/a;

    .line 48
    .line 49
    new-instance p1, Landroid/os/Handler;

    .line 50
    .line 51
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lw0/e;->h:Landroid/os/Handler;

    .line 59
    .line 60
    :goto_0
    return-void

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string p2, "DataBinding must be created in view\'s UI Thread"

    .line 64
    .line 65
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    const-string p2, "The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent"

    .line 72
    .line 73
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1
.end method

.method public static Q(Landroid/view/View;[Ljava/lang/Object;Landroid/util/SparseIntArray;Z)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    const v1, 0x7f0b0102

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lw0/e;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v1, v0

    .line 15
    :goto_0
    if-eqz v1, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    instance-of v2, v1, Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    move-object v0, v1

    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    :cond_2
    const/4 v1, 0x0

    .line 30
    if-eqz p3, :cond_7

    .line 31
    .line 32
    if-eqz v0, :cond_7

    .line 33
    .line 34
    const-string p3, "layout"

    .line 35
    .line 36
    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    if-eqz p3, :cond_7

    .line 41
    .line 42
    const/16 p3, 0x5f

    .line 43
    .line 44
    invoke-virtual {v0, p3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    if-lez p3, :cond_9

    .line 49
    .line 50
    add-int/lit8 p3, p3, 0x1

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-ne v2, p3, :cond_3

    .line 57
    .line 58
    goto :goto_4

    .line 59
    :cond_3
    move v3, p3

    .line 60
    :goto_1
    if-ge v3, v2, :cond_5

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_4

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    const/4 v3, 0x0

    .line 81
    :goto_2
    if-ge p3, v2, :cond_6

    .line 82
    .line 83
    mul-int/lit8 v3, v3, 0xa

    .line 84
    .line 85
    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    add-int/lit8 v4, v4, -0x30

    .line 90
    .line 91
    add-int/2addr v3, v4

    .line 92
    add-int/lit8 p3, p3, 0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_6
    aget-object p3, p1, v3

    .line 96
    .line 97
    if-nez p3, :cond_a

    .line 98
    .line 99
    aput-object p0, p1, v3

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_7
    if-eqz v0, :cond_9

    .line 103
    .line 104
    const-string p3, "binding_"

    .line 105
    .line 106
    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    if-eqz p3, :cond_9

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 113
    .line 114
    .line 115
    move-result p3

    .line 116
    const/16 v2, 0x8

    .line 117
    .line 118
    const/4 v3, 0x0

    .line 119
    :goto_3
    if-ge v2, p3, :cond_8

    .line 120
    .line 121
    mul-int/lit8 v3, v3, 0xa

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    add-int/lit8 v4, v4, -0x30

    .line 128
    .line 129
    add-int/2addr v3, v4

    .line 130
    add-int/lit8 v2, v2, 0x1

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_8
    aget-object p3, p1, v3

    .line 134
    .line 135
    if-nez p3, :cond_a

    .line 136
    .line 137
    aput-object p0, p1, v3

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_9
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 141
    .line 142
    .line 143
    move-result p3

    .line 144
    if-lez p3, :cond_a

    .line 145
    .line 146
    if-eqz p2, :cond_a

    .line 147
    .line 148
    const/4 v0, -0x1

    .line 149
    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 150
    .line 151
    .line 152
    move-result p3

    .line 153
    if-ltz p3, :cond_a

    .line 154
    .line 155
    aget-object v0, p1, p3

    .line 156
    .line 157
    if-nez v0, :cond_a

    .line 158
    .line 159
    aput-object p0, p1, p3

    .line 160
    .line 161
    :cond_a
    :goto_5
    instance-of p3, p0, Landroid/view/ViewGroup;

    .line 162
    .line 163
    if-eqz p3, :cond_b

    .line 164
    .line 165
    check-cast p0, Landroid/view/ViewGroup;

    .line 166
    .line 167
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 168
    .line 169
    .line 170
    move-result p3

    .line 171
    const/4 v0, 0x0

    .line 172
    :goto_6
    if-ge v0, p3, :cond_b

    .line 173
    .line 174
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-static {v2, p1, p2, v1}, Lw0/e;->Q(Landroid/view/View;[Ljava/lang/Object;Landroid/util/SparseIntArray;Z)V

    .line 179
    .line 180
    .line 181
    add-int/lit8 v0, v0, 0x1

    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_b
    return-void
.end method

.method public static R(Landroid/view/View;ILandroid/util/SparseIntArray;)[Ljava/lang/Object;
    .locals 1

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p0, p1, p2, v0}, Lw0/e;->Q(Landroid/view/View;[Ljava/lang/Object;Landroid/util/SparseIntArray;Z)V

    .line 5
    .line 6
    .line 7
    return-object p1
.end method


# virtual methods
.method public abstract O()V
.end method

.method public abstract P()Z
.end method

.method public final S()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lw0/e;->c:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lw0/e;->c:Z

    .line 12
    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    sget-boolean v0, Lw0/e;->i:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lw0/e;->f:Landroid/view/Choreographer;

    .line 19
    .line 20
    iget-object v1, p0, Lw0/e;->g:La1/a;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lw0/e;->h:Landroid/os/Handler;

    .line 27
    .line 28
    iget-object v1, p0, Lw0/e;->b:Ls4/h;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw v0
.end method

.method public final T(Landroid/view/View;)V
    .locals 1

    .line 1
    const v0, 0x7f0b0102

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
