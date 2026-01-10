.class public final Lo7/b;
.super Ll7/r;
.source "MyApplication"


# static fields
.field public static final d:Lo7/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo7/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lo7/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lo7/b;->d:Lo7/a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 10

    const/4 v0, 0x3

    iput v0, p0, Lo7/b;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo7/b;->c:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo7/b;->b:Ljava/lang/Object;

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 5
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    new-instance v4, Lo7/o;

    invoke-direct {v4, v3}, Lo7/o;-><init>(Ljava/lang/reflect/Field;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Enum;

    .line 8
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 9
    const-class v6, Lm7/b;

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lm7/b;

    if-eqz v3, :cond_1

    .line 10
    invoke-interface {v3}, Lm7/b;->value()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-interface {v3}, Lm7/b;->alternate()[Ljava/lang/String;

    move-result-object v3

    array-length v6, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v3, v7

    .line 12
    iget-object v9, p0, Lo7/b;->c:Ljava/lang/Object;

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    .line 13
    :cond_1
    iget-object v3, p0, Lo7/b;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v3, p0, Lo7/b;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 15
    :goto_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public constructor <init>(Ll7/k;Ljava/lang/reflect/Type;Ll7/r;Ln7/m;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lo7/b;->a:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lo7/l;

    invoke-direct {v0, p1, p3, p2}, Lo7/l;-><init>(Ll7/k;Ll7/r;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lo7/b;->b:Ljava/lang/Object;

    .line 18
    iput-object p4, p0, Lo7/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ll7/k;Ll7/r;Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo7/b;->a:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lo7/l;

    invoke-direct {v0, p1, p2, p3}, Lo7/l;-><init>(Ll7/k;Ll7/r;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lo7/b;->b:Ljava/lang/Object;

    .line 21
    iput-object p3, p0, Lo7/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo7/m;Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lo7/b;->a:I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lo7/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lo7/b;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lt7/a;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lo7/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lt7/a;->u()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x9

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lt7/a;->q()V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lo7/b;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {p1}, Lt7/a;->s()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/Enum;

    .line 32
    .line 33
    :goto_0
    return-object p1

    .line 34
    :pswitch_0
    iget-object v0, p0, Lo7/b;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lo7/m;

    .line 37
    .line 38
    iget-object v0, v0, Lo7/m;->c:Ll7/r;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ll7/r;->a(Lt7/a;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lo7/b;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Ljava/lang/Class;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    new-instance v1, Ll7/n;

    .line 58
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v3, "Expected a "

    .line 62
    .line 63
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v0, " but was "

    .line 74
    .line 75
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v1

    .line 97
    :cond_2
    :goto_1
    return-object p1

    .line 98
    :pswitch_1
    invoke-virtual {p1}, Lt7/a;->u()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    const/16 v1, 0x9

    .line 103
    .line 104
    if-ne v0, v1, :cond_3

    .line 105
    .line 106
    invoke-virtual {p1}, Lt7/a;->q()V

    .line 107
    .line 108
    .line 109
    const/4 p1, 0x0

    .line 110
    goto :goto_3

    .line 111
    :cond_3
    iget-object v0, p0, Lo7/b;->c:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v0, Ln7/m;

    .line 114
    .line 115
    invoke-interface {v0}, Ln7/m;->o()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Ljava/util/Collection;

    .line 120
    .line 121
    invoke-virtual {p1}, Lt7/a;->a()V

    .line 122
    .line 123
    .line 124
    :goto_2
    invoke-virtual {p1}, Lt7/a;->h()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_4

    .line 129
    .line 130
    iget-object v1, p0, Lo7/b;->b:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v1, Lo7/l;

    .line 133
    .line 134
    iget-object v1, v1, Lo7/l;->b:Ll7/r;

    .line 135
    .line 136
    invoke-virtual {v1, p1}, Ll7/r;->a(Lt7/a;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_4
    invoke-virtual {p1}, Lt7/a;->e()V

    .line 145
    .line 146
    .line 147
    move-object p1, v0

    .line 148
    :goto_3
    return-object p1

    .line 149
    :pswitch_2
    invoke-virtual {p1}, Lt7/a;->u()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    const/16 v1, 0x9

    .line 154
    .line 155
    if-ne v0, v1, :cond_5

    .line 156
    .line 157
    invoke-virtual {p1}, Lt7/a;->q()V

    .line 158
    .line 159
    .line 160
    const/4 p1, 0x0

    .line 161
    goto :goto_6

    .line 162
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Lt7/a;->a()V

    .line 168
    .line 169
    .line 170
    :goto_4
    invoke-virtual {p1}, Lt7/a;->h()Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_6

    .line 175
    .line 176
    iget-object v1, p0, Lo7/b;->b:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v1, Lo7/l;

    .line 179
    .line 180
    iget-object v1, v1, Lo7/l;->b:Ll7/r;

    .line 181
    .line 182
    invoke-virtual {v1, p1}, Ll7/r;->a(Lt7/a;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_6
    invoke-virtual {p1}, Lt7/a;->e()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    iget-object v1, p0, Lo7/b;->c:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v1, Ljava/lang/Class;

    .line 200
    .line 201
    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    const/4 v2, 0x0

    .line 206
    :goto_5
    if-ge v2, p1, :cond_7

    .line 207
    .line 208
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    add-int/lit8 v2, v2, 0x1

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_7
    move-object p1, v1

    .line 219
    :goto_6
    return-object p1

    .line 220
    nop

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lt7/b;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lo7/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, Ljava/lang/Enum;

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lo7/b;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Ljava/lang/String;

    .line 21
    .line 22
    :goto_0
    invoke-virtual {p1, p2}, Lt7/b;->n(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Lo7/b;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lo7/m;

    .line 29
    .line 30
    iget-object v0, v0, Lo7/m;->c:Ll7/r;

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2}, Ll7/r;->b(Lt7/b;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_1
    check-cast p2, Ljava/util/Collection;

    .line 37
    .line 38
    if-nez p2, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1}, Lt7/b;->i()Lt7/b;

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    invoke-virtual {p1}, Lt7/b;->b()V

    .line 45
    .line 46
    .line 47
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lo7/b;->b:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v1, Lo7/l;

    .line 64
    .line 65
    invoke-virtual {v1, p1, v0}, Lo7/l;->b(Lt7/b;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {p1}, Lt7/b;->e()V

    .line 70
    .line 71
    .line 72
    :goto_2
    return-void

    .line 73
    :pswitch_2
    if-nez p2, :cond_3

    .line 74
    .line 75
    invoke-virtual {p1}, Lt7/b;->i()Lt7/b;

    .line 76
    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_3
    invoke-virtual {p1}, Lt7/b;->b()V

    .line 80
    .line 81
    .line 82
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const/4 v1, 0x0

    .line 87
    :goto_3
    if-ge v1, v0, :cond_4

    .line 88
    .line 89
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iget-object v3, p0, Lo7/b;->b:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v3, Lo7/l;

    .line 96
    .line 97
    invoke-virtual {v3, p1, v2}, Lo7/l;->b(Lt7/b;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    add-int/lit8 v1, v1, 0x1

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_4
    invoke-virtual {p1}, Lt7/b;->e()V

    .line 104
    .line 105
    .line 106
    :goto_4
    return-void

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
