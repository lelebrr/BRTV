.class final Lgo/Seq$RefMap;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgo/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RefMap"
.end annotation


# instance fields
.field private keys:[I

.field private live:I

.field private next:I

.field private objs:[Lgo/Seq$Ref;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lgo/Seq$RefMap;->next:I

    .line 6
    .line 7
    iput v0, p0, Lgo/Seq$RefMap;->live:I

    .line 8
    .line 9
    const/16 v0, 0x10

    .line 10
    .line 11
    new-array v1, v0, [I

    .line 12
    .line 13
    iput-object v1, p0, Lgo/Seq$RefMap;->keys:[I

    .line 14
    .line 15
    new-array v0, v0, [Lgo/Seq$Ref;

    .line 16
    .line 17
    iput-object v0, p0, Lgo/Seq$RefMap;->objs:[Lgo/Seq$Ref;

    .line 18
    .line 19
    return-void
.end method

.method private grow()V
    .locals 7

    .line 1
    iget v0, p0, Lgo/Seq$RefMap;->live:I

    .line 2
    .line 3
    invoke-static {v0}, Lgo/Seq$RefMap;->roundPow2(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    iget-object v1, p0, Lgo/Seq$RefMap;->keys:[I

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    if-le v0, v2, :cond_0

    .line 13
    .line 14
    array-length v0, v1

    .line 15
    mul-int/lit8 v0, v0, 0x2

    .line 16
    .line 17
    new-array v1, v0, [I

    .line 18
    .line 19
    iget-object v0, p0, Lgo/Seq$RefMap;->objs:[Lgo/Seq$Ref;

    .line 20
    .line 21
    array-length v0, v0

    .line 22
    mul-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    new-array v0, v0, [Lgo/Seq$Ref;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lgo/Seq$RefMap;->objs:[Lgo/Seq$Ref;

    .line 28
    .line 29
    :goto_0
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    :goto_1
    iget-object v5, p0, Lgo/Seq$RefMap;->keys:[I

    .line 33
    .line 34
    array-length v6, v5

    .line 35
    if-ge v3, v6, :cond_2

    .line 36
    .line 37
    iget-object v6, p0, Lgo/Seq$RefMap;->objs:[Lgo/Seq$Ref;

    .line 38
    .line 39
    aget-object v6, v6, v3

    .line 40
    .line 41
    if-eqz v6, :cond_1

    .line 42
    .line 43
    aget v5, v5, v3

    .line 44
    .line 45
    aput v5, v1, v4

    .line 46
    .line 47
    aput-object v6, v0, v4

    .line 48
    .line 49
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move v3, v4

    .line 55
    :goto_2
    array-length v5, v1

    .line 56
    if-ge v3, v5, :cond_3

    .line 57
    .line 58
    aput v2, v1, v3

    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    aput-object v5, v0, v3

    .line 62
    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    iput-object v1, p0, Lgo/Seq$RefMap;->keys:[I

    .line 67
    .line 68
    iput-object v0, p0, Lgo/Seq$RefMap;->objs:[Lgo/Seq$Ref;

    .line 69
    .line 70
    iput v4, p0, Lgo/Seq$RefMap;->next:I

    .line 71
    .line 72
    iget v0, p0, Lgo/Seq$RefMap;->live:I

    .line 73
    .line 74
    if-ne v0, v4, :cond_4

    .line 75
    .line 76
    return-void

    .line 77
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 78
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v2, "bad state: live="

    .line 82
    .line 83
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget v2, p0, Lgo/Seq$RefMap;->live:I

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v2, ", next="

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget v2, p0, Lgo/Seq$RefMap;->next:I

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v0
.end method

.method private static roundPow2(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    if-ge v0, p0, :cond_0

    .line 3
    .line 4
    mul-int/lit8 v0, v0, 0x2

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    return v0
.end method


# virtual methods
.method public get(I)Lgo/Seq$Ref;
    .locals 3

    .line 1
    iget-object v0, p0, Lgo/Seq$RefMap;->keys:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget v2, p0, Lgo/Seq$RefMap;->next:I

    .line 5
    .line 6
    invoke-static {v0, v1, v2, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-ltz p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lgo/Seq$RefMap;->objs:[Lgo/Seq$Ref;

    .line 13
    .line 14
    aget-object p1, v0, p1

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    return-object p1
.end method

.method public put(ILgo/Seq$Ref;)V
    .locals 4

    .line 1
    const-string v0, ")"

    .line 2
    .line 3
    if-eqz p2, :cond_5

    .line 4
    .line 5
    iget-object v1, p0, Lgo/Seq$RefMap;->keys:[I

    .line 6
    .line 7
    iget v2, p0, Lgo/Seq$RefMap;->next:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v1, v3, v2, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ltz v1, :cond_2

    .line 15
    .line 16
    iget-object v2, p0, Lgo/Seq$RefMap;->objs:[Lgo/Seq$Ref;

    .line 17
    .line 18
    aget-object v3, v2, v1

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    aput-object p2, v2, v1

    .line 23
    .line 24
    iget v3, p0, Lgo/Seq$RefMap;->live:I

    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    iput v3, p0, Lgo/Seq$RefMap;->live:I

    .line 29
    .line 30
    :cond_0
    aget-object v1, v2, v1

    .line 31
    .line 32
    if-ne v1, p2, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    .line 36
    .line 37
    const-string v1, "replacing an existing ref (with key "

    .line 38
    .line 39
    invoke-static {p1, v1, v0}, Lea/q;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p2

    .line 47
    :cond_2
    iget v0, p0, Lgo/Seq$RefMap;->next:I

    .line 48
    .line 49
    iget-object v2, p0, Lgo/Seq$RefMap;->keys:[I

    .line 50
    .line 51
    array-length v2, v2

    .line 52
    if-lt v0, v2, :cond_3

    .line 53
    .line 54
    invoke-direct {p0}, Lgo/Seq$RefMap;->grow()V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lgo/Seq$RefMap;->keys:[I

    .line 58
    .line 59
    iget v1, p0, Lgo/Seq$RefMap;->next:I

    .line 60
    .line 61
    invoke-static {v0, v3, v1, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    :cond_3
    not-int v0, v1

    .line 66
    iget v1, p0, Lgo/Seq$RefMap;->next:I

    .line 67
    .line 68
    if-ge v0, v1, :cond_4

    .line 69
    .line 70
    iget-object v2, p0, Lgo/Seq$RefMap;->keys:[I

    .line 71
    .line 72
    add-int/lit8 v3, v0, 0x1

    .line 73
    .line 74
    sub-int/2addr v1, v0

    .line 75
    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lgo/Seq$RefMap;->objs:[Lgo/Seq$Ref;

    .line 79
    .line 80
    iget v2, p0, Lgo/Seq$RefMap;->next:I

    .line 81
    .line 82
    sub-int/2addr v2, v0

    .line 83
    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    .line 85
    .line 86
    :cond_4
    iget-object v1, p0, Lgo/Seq$RefMap;->keys:[I

    .line 87
    .line 88
    aput p1, v1, v0

    .line 89
    .line 90
    iget-object p1, p0, Lgo/Seq$RefMap;->objs:[Lgo/Seq$Ref;

    .line 91
    .line 92
    aput-object p2, p1, v0

    .line 93
    .line 94
    iget p1, p0, Lgo/Seq$RefMap;->live:I

    .line 95
    .line 96
    add-int/lit8 p1, p1, 0x1

    .line 97
    .line 98
    iput p1, p0, Lgo/Seq$RefMap;->live:I

    .line 99
    .line 100
    iget p1, p0, Lgo/Seq$RefMap;->next:I

    .line 101
    .line 102
    add-int/lit8 p1, p1, 0x1

    .line 103
    .line 104
    iput p1, p0, Lgo/Seq$RefMap;->next:I

    .line 105
    .line 106
    return-void

    .line 107
    :cond_5
    new-instance p2, Ljava/lang/RuntimeException;

    .line 108
    .line 109
    const-string v1, "put a null ref (with key "

    .line 110
    .line 111
    invoke-static {p1, v1, v0}, Lea/q;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p2
.end method

.method public remove(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lgo/Seq$RefMap;->keys:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget v2, p0, Lgo/Seq$RefMap;->next:I

    .line 5
    .line 6
    invoke-static {v0, v1, v2, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-ltz p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lgo/Seq$RefMap;->objs:[Lgo/Seq$Ref;

    .line 13
    .line 14
    aget-object v1, v0, p1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    aput-object v1, v0, p1

    .line 20
    .line 21
    iget p1, p0, Lgo/Seq$RefMap;->live:I

    .line 22
    .line 23
    add-int/lit8 p1, p1, -0x1

    .line 24
    .line 25
    iput p1, p0, Lgo/Seq$RefMap;->live:I

    .line 26
    .line 27
    :cond_0
    return-void
.end method
