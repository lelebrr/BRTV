.class public final Lo7/e;
.super Ll7/r;
.source "MyApplication"


# instance fields
.field public final a:Lo7/l;

.field public final b:Lo7/l;

.field public final c:Ln7/m;

.field public final synthetic d:Lo7/c;


# direct methods
.method public constructor <init>(Lo7/c;Ll7/k;Ljava/lang/reflect/Type;Ll7/r;Ljava/lang/reflect/Type;Ll7/r;Ln7/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo7/e;->d:Lo7/c;

    .line 5
    .line 6
    new-instance p1, Lo7/l;

    .line 7
    .line 8
    invoke-direct {p1, p2, p4, p3}, Lo7/l;-><init>(Ll7/k;Ll7/r;Ljava/lang/reflect/Type;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lo7/e;->a:Lo7/l;

    .line 12
    .line 13
    new-instance p1, Lo7/l;

    .line 14
    .line 15
    invoke-direct {p1, p2, p6, p5}, Lo7/l;-><init>(Ll7/k;Ll7/r;Ljava/lang/reflect/Type;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lo7/e;->b:Lo7/l;

    .line 19
    .line 20
    iput-object p7, p0, Lo7/e;->c:Ln7/m;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lt7/a;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lt7/a;->u()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lt7/a;->q()V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    iget-object v2, p0, Lo7/e;->c:Ln7/m;

    .line 16
    .line 17
    invoke-interface {v2}, Ln7/m;->o()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/util/Map;

    .line 22
    .line 23
    iget-object v3, p0, Lo7/e;->b:Lo7/l;

    .line 24
    .line 25
    iget-object v4, p0, Lo7/e;->a:Lo7/l;

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    iget-object v3, v3, Lo7/l;->b:Ll7/r;

    .line 29
    .line 30
    iget-object v4, v4, Lo7/l;->b:Ll7/r;

    .line 31
    .line 32
    const-string v6, "duplicate key: "

    .line 33
    .line 34
    if-ne v0, v5, :cond_3

    .line 35
    .line 36
    invoke-virtual {p1}, Lt7/a;->a()V

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {p1}, Lt7/a;->h()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1}, Lt7/a;->a()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, p1}, Ll7/r;->a(Lt7/a;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v3, p1}, Ll7/r;->a(Lt7/a;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-nez v1, :cond_1

    .line 61
    .line 62
    invoke-virtual {p1}, Lt7/a;->e()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-instance p1, Ll7/n;

    .line 67
    .line 68
    invoke-static {v0, v6}, Lea/q;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_2
    invoke-virtual {p1}, Lt7/a;->e()V

    .line 77
    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_3
    invoke-virtual {p1}, Lt7/a;->b()V

    .line 81
    .line 82
    .line 83
    :goto_1
    invoke-virtual {p1}, Lt7/a;->h()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_9

    .line 88
    .line 89
    sget-object v0, Lq/b;->b:Lq/b;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    iget v0, p1, Lt7/a;->h:I

    .line 95
    .line 96
    if-nez v0, :cond_4

    .line 97
    .line 98
    invoke-virtual {p1}, Lt7/a;->d()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    :cond_4
    const/16 v5, 0xd

    .line 103
    .line 104
    if-ne v0, v5, :cond_5

    .line 105
    .line 106
    iput v1, p1, Lt7/a;->h:I

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    const/16 v5, 0xc

    .line 110
    .line 111
    if-ne v0, v5, :cond_6

    .line 112
    .line 113
    const/16 v0, 0x8

    .line 114
    .line 115
    iput v0, p1, Lt7/a;->h:I

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_6
    const/16 v5, 0xe

    .line 119
    .line 120
    if-ne v0, v5, :cond_8

    .line 121
    .line 122
    const/16 v0, 0xa

    .line 123
    .line 124
    iput v0, p1, Lt7/a;->h:I

    .line 125
    .line 126
    :goto_2
    invoke-virtual {v4, p1}, Ll7/r;->a(Lt7/a;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v3, p1}, Ll7/r;->a(Lt7/a;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    if-nez v5, :cond_7

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_7
    new-instance p1, Ll7/n;

    .line 142
    .line 143
    invoke-static {v0, v6}, Lea/q;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p1

    .line 151
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 152
    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v2, "Expected a name but was "

    .line 156
    .line 157
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Lt7/a;->u()I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    invoke-static {v2}, Lea/q;->r(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Lt7/a;->j()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw v0

    .line 186
    :cond_9
    invoke-virtual {p1}, Lt7/a;->f()V

    .line 187
    .line 188
    .line 189
    :goto_3
    move-object p1, v2

    .line 190
    :goto_4
    return-object p1
.end method

.method public final b(Lt7/b;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Ljava/util/Map;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lt7/b;->i()Lt7/b;

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object v0, p0, Lo7/e;->d:Lo7/c;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lo7/e;->b:Lo7/l;

    .line 15
    .line 16
    invoke-virtual {p1}, Lt7/b;->c()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/util/Map$Entry;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {p1, v2}, Lt7/b;->g(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, p1, v1}, Lo7/l;->b(Lt7/b;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p1}, Lt7/b;->f()V

    .line 59
    .line 60
    .line 61
    :goto_1
    return-void
.end method
