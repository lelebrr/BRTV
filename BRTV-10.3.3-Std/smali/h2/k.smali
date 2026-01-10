.class public final Lh2/k;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Lm2/i;

.field public final b:Ljava/util/ArrayList;

.field public final c:I

.field public final d:Lm2/i;

.field public final e:Ln2/h;

.field public final f:Lc2/d;

.field public final g:Z


# direct methods
.method public constructor <init>(Lm2/i;Ljava/util/ArrayList;ILm2/i;Ln2/h;Lc2/d;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh2/k;->a:Lm2/i;

    .line 5
    .line 6
    iput-object p2, p0, Lh2/k;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput p3, p0, Lh2/k;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lh2/k;->d:Lm2/i;

    .line 11
    .line 12
    iput-object p5, p0, Lh2/k;->e:Ln2/h;

    .line 13
    .line 14
    iput-object p6, p0, Lh2/k;->f:Lc2/d;

    .line 15
    .line 16
    iput-boolean p7, p0, Lh2/k;->g:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lm2/i;Lh2/i;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lm2/i;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lh2/k;->a:Lm2/i;

    .line 4
    .line 5
    iget-object v2, v1, Lm2/i;->a:Landroid/content/Context;

    .line 6
    .line 7
    const-string v3, "Interceptor \'"

    .line 8
    .line 9
    if-ne v0, v2, :cond_4

    .line 10
    .line 11
    sget-object v0, Lm2/k;->b:Lm2/k;

    .line 12
    .line 13
    iget-object v2, p1, Lm2/i;->b:Ljava/lang/Object;

    .line 14
    .line 15
    if-eq v2, v0, :cond_3

    .line 16
    .line 17
    iget-object v0, p1, Lm2/i;->c:Lo2/a;

    .line 18
    .line 19
    iget-object v2, v1, Lm2/i;->c:Lo2/a;

    .line 20
    .line 21
    if-ne v0, v2, :cond_2

    .line 22
    .line 23
    iget-object v0, p1, Lm2/i;->u:Landroidx/lifecycle/p;

    .line 24
    .line 25
    iget-object v2, v1, Lm2/i;->u:Landroidx/lifecycle/p;

    .line 26
    .line 27
    if-ne v0, v2, :cond_1

    .line 28
    .line 29
    iget-object v0, v1, Lm2/i;->v:Ln2/i;

    .line 30
    .line 31
    iget-object p1, p1, Lm2/i;->v:Ln2/i;

    .line 32
    .line 33
    if-ne p1, v0, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p2, "\' cannot modify the request\'s size resolver. Use `Interceptor.Chain.withSize` instead."

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p2

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p2, "\' cannot modify the request\'s lifecycle."

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p2

    .line 90
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p2, "\' cannot modify the request\'s target."

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p2

    .line 117
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string p2, "\' cannot set the request\'s data to null."

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p2

    .line 144
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string p2, "\' cannot modify the request\'s context."

    .line 153
    .line 154
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p2
.end method

.method public final b(Lm2/i;Lc9/c;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p2, Lh2/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lh2/j;

    .line 7
    .line 8
    iget v1, v0, Lh2/j;->e:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lh2/j;->e:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lh2/j;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lh2/j;-><init>(Lh2/k;Lc9/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lh2/j;->c:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lb9/a;->a:Lb9/a;

    .line 28
    .line 29
    iget v2, v0, Lh2/j;->e:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget-object p1, v0, Lh2/j;->b:Lh2/i;

    .line 37
    .line 38
    iget-object v0, v0, Lh2/j;->a:Lh2/k;

    .line 39
    .line 40
    invoke-static {p2}, Lo9/d;->I(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    invoke-static {p2}, Lo9/d;->I(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object v6, p0, Lh2/k;->b:Ljava/util/ArrayList;

    .line 56
    .line 57
    iget p2, p0, Lh2/k;->c:I

    .line 58
    .line 59
    if-lez p2, :cond_3

    .line 60
    .line 61
    add-int/lit8 v2, p2, -0x1

    .line 62
    .line 63
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lh2/i;

    .line 68
    .line 69
    invoke-virtual {p0, p1, v2}, Lh2/k;->a(Lm2/i;Lh2/i;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lh2/i;

    .line 77
    .line 78
    add-int/lit8 v7, p2, 0x1

    .line 79
    .line 80
    new-instance p2, Lh2/k;

    .line 81
    .line 82
    iget-object v5, p0, Lh2/k;->a:Lm2/i;

    .line 83
    .line 84
    iget-object v10, p0, Lh2/k;->f:Lc2/d;

    .line 85
    .line 86
    iget-object v9, p0, Lh2/k;->e:Ln2/h;

    .line 87
    .line 88
    iget-boolean v11, p0, Lh2/k;->g:Z

    .line 89
    .line 90
    move-object v4, p2

    .line 91
    move-object v8, p1

    .line 92
    invoke-direct/range {v4 .. v11}, Lh2/k;-><init>(Lm2/i;Ljava/util/ArrayList;ILm2/i;Ln2/h;Lc2/d;Z)V

    .line 93
    .line 94
    .line 95
    iput-object p0, v0, Lh2/j;->a:Lh2/k;

    .line 96
    .line 97
    iput-object v2, v0, Lh2/j;->b:Lh2/i;

    .line 98
    .line 99
    iput v3, v0, Lh2/j;->e:I

    .line 100
    .line 101
    invoke-virtual {v2, p2, v0}, Lh2/i;->d(Lh2/k;Lc9/c;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    if-ne p2, v1, :cond_4

    .line 106
    .line 107
    return-object v1

    .line 108
    :cond_4
    move-object v0, p0

    .line 109
    move-object p1, v2

    .line 110
    :goto_1
    check-cast p2, Lm2/j;

    .line 111
    .line 112
    invoke-virtual {p2}, Lm2/j;->b()Lm2/i;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1, p1}, Lh2/k;->a(Lm2/i;Lh2/i;)V

    .line 117
    .line 118
    .line 119
    return-object p2
.end method
