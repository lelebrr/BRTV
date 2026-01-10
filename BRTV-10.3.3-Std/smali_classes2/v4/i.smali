.class public final Lv4/i;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lv4/m;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lv4/m;

.field public final synthetic c:Lv4/l;


# direct methods
.method public synthetic constructor <init>(Lv4/l;Lv4/m;I)V
    .locals 0

    .line 1
    iput p3, p0, Lv4/i;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lv4/i;->b:Lv4/m;

    .line 4
    .line 5
    iput-object p1, p0, Lv4/i;->c:Lv4/l;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final l(Ljava/lang/String;JILv4/k;JJ)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lv4/i;->c:Lv4/l;

    .line 3
    .line 4
    iget v2, v0, Lv4/i;->a:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v3, v0, Lv4/i;->b:Lv4/m;

    .line 10
    .line 11
    if-eqz v3, :cond_2

    .line 12
    .line 13
    const/16 v2, 0x7d1

    .line 14
    .line 15
    move/from16 v8, p4

    .line 16
    .line 17
    if-ne v8, v2, :cond_1

    .line 18
    .line 19
    iget v4, v1, Lv4/l;->i:I

    .line 20
    .line 21
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const/4 v5, 0x1

    .line 26
    new-array v5, v5, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    aput-object v4, v5, v6

    .line 30
    .line 31
    iget-object v4, v1, Lv4/o;->a:Lv4/b;

    .line 32
    .line 33
    iget-object v6, v4, Lv4/b;->a:Ljava/lang/String;

    .line 34
    .line 35
    const-string v7, "Possibility of local queue out of sync with receiver queue. Refetching sequence number. Current Local Sequence Number = %d"

    .line 36
    .line 37
    invoke-virtual {v4, v7, v5}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object v1, v1, Lv4/l;->h:Lr4/n;

    .line 45
    .line 46
    iget-object v1, v1, Lr4/n;->a:Lr4/f;

    .line 47
    .line 48
    iget-object v1, v1, Lr4/f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_0

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Lq4/z;

    .line 65
    .line 66
    iget v5, v4, Lq4/z;->a:I

    .line 67
    .line 68
    packed-switch v5, :pswitch_data_1

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :pswitch_0
    iget-object v4, v4, Lq4/z;->b:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v4, Lr4/a;

    .line 75
    .line 76
    invoke-virtual {v4}, Lr4/a;->d()V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    const/16 v7, 0x7d1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    move v7, v8

    .line 84
    :goto_1
    move-object v4, p1

    .line 85
    move-wide/from16 v5, p2

    .line 86
    .line 87
    move-object/from16 v8, p5

    .line 88
    .line 89
    move-wide/from16 v9, p6

    .line 90
    .line 91
    move-wide/from16 v11, p8

    .line 92
    .line 93
    invoke-interface/range {v3 .. v12}, Lv4/m;->l(Ljava/lang/String;JILv4/k;JJ)V

    .line 94
    .line 95
    .line 96
    :cond_2
    return-void

    .line 97
    :pswitch_1
    move/from16 v8, p4

    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    iput-object v2, v1, Lv4/l;->g:Ljava/lang/Long;

    .line 101
    .line 102
    iget-object v4, v0, Lv4/i;->b:Lv4/m;

    .line 103
    .line 104
    if-eqz v4, :cond_3

    .line 105
    .line 106
    move-object v5, p1

    .line 107
    move-wide/from16 v6, p2

    .line 108
    .line 109
    move/from16 v8, p4

    .line 110
    .line 111
    move-object/from16 v9, p5

    .line 112
    .line 113
    move-wide/from16 v10, p6

    .line 114
    .line 115
    move-wide/from16 v12, p8

    .line 116
    .line 117
    invoke-interface/range {v4 .. v13}, Lv4/m;->l(Ljava/lang/String;JILv4/k;JJ)V

    .line 118
    .line 119
    .line 120
    :cond_3
    return-void

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/String;JJJ)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget v1, v0, Lv4/i;->a:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v2, v0, Lv4/i;->b:Lv4/m;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    move-object v3, p1

    .line 12
    move-wide v4, p2

    .line 13
    move-wide v6, p4

    .line 14
    move-wide/from16 v8, p6

    .line 15
    .line 16
    invoke-interface/range {v2 .. v9}, Lv4/m;->q(Ljava/lang/String;JJJ)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :pswitch_0
    iget-object v3, v0, Lv4/i;->b:Lv4/m;

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    move-object v4, p1

    .line 25
    move-wide v5, p2

    .line 26
    move-wide v7, p4

    .line 27
    move-wide/from16 v9, p6

    .line 28
    .line 29
    invoke-interface/range {v3 .. v10}, Lv4/m;->q(Ljava/lang/String;JJJ)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
