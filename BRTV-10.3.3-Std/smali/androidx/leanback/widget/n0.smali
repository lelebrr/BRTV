.class public final Landroidx/leanback/widget/n0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/leanback/widget/n0;->a:I

    iput-object p3, p0, Landroidx/leanback/widget/n0;->c:Ljava/lang/Object;

    iput p1, p0, Landroidx/leanback/widget/n0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/LinkedBlockingQueue;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/leanback/widget/n0;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/leanback/widget/n0;->b:I

    iput-object p2, p0, Landroidx/leanback/widget/n0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILjava/lang/Throwable;)V
    .locals 0

    const/4 p3, 0x1

    iput p3, p0, Landroidx/leanback/widget/n0;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string p3, "initCallbacks cannot be null"

    invoke-static {p1, p3}, La2/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Landroidx/leanback/widget/n0;->c:Ljava/lang/Object;

    .line 6
    iput p2, p0, Landroidx/leanback/widget/n0;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Landroidx/leanback/widget/n0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/leanback/widget/n0;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lz4/n;

    .line 9
    .line 10
    iget v1, p0, Landroidx/leanback/widget/n0;->b:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lz4/n;->h(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Landroidx/leanback/widget/n0;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lv4/v;

    .line 19
    .line 20
    iget v1, p0, Landroidx/leanback/widget/n0;->b:I

    .line 21
    .line 22
    iget-object v0, v0, Lv4/v;->B:Lcom/google/android/gms/internal/cast/j0;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/j0;->c(I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_1
    iget-object v0, p0, Landroidx/leanback/widget/n0;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, La0/b;

    .line 31
    .line 32
    iget-object v0, v0, La0/b;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Le0/b;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget v1, p0, Landroidx/leanback/widget/n0;->b:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Le0/b;->i(I)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void

    .line 44
    :pswitch_2
    const/4 v0, 0x0

    .line 45
    :goto_0
    iget v1, p0, Landroidx/leanback/widget/n0;->b:I

    .line 46
    .line 47
    if-ge v0, v1, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Landroidx/leanback/widget/n0;->c:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Ljava/lang/Runnable;

    .line 58
    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 62
    .line 63
    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    return-void

    .line 68
    :pswitch_3
    iget-object v0, p0, Landroidx/leanback/widget/n0;->c:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Lcom/google/android/material/navigation/d;

    .line 71
    .line 72
    iget v1, p0, Landroidx/leanback/widget/n0;->b:I

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/d;->g(I)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_4
    iget-object v0, p0, Landroidx/leanback/widget/n0;->c:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    iget v2, p0, Landroidx/leanback/widget/n0;->b:I

    .line 87
    .line 88
    const/4 v3, 0x1

    .line 89
    const/4 v4, 0x0

    .line 90
    if-eq v2, v3, :cond_2

    .line 91
    .line 92
    :goto_1
    if-ge v4, v1, :cond_3

    .line 93
    .line 94
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Lb1/g;

    .line 99
    .line 100
    invoke-virtual {v2}, Lb1/g;->a()V

    .line 101
    .line 102
    .line 103
    add-int/lit8 v4, v4, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    :goto_2
    if-ge v4, v1, :cond_3

    .line 107
    .line 108
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Lb1/g;

    .line 113
    .line 114
    invoke-virtual {v2}, Lb1/g;->b()V

    .line 115
    .line 116
    .line 117
    add-int/lit8 v4, v4, 0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    return-void

    .line 121
    :pswitch_5
    iget-object v0, p0, Landroidx/leanback/widget/n0;->c:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v0, Landroidx/leanback/widget/SearchBar;

    .line 124
    .line 125
    iget-object v1, v0, Landroidx/leanback/widget/SearchBar;->u:Landroid/util/SparseIntArray;

    .line 126
    .line 127
    iget v2, p0, Landroidx/leanback/widget/n0;->b:I

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    iget-object v3, v0, Landroidx/leanback/widget/SearchBar;->t:Landroid/media/SoundPool;

    .line 134
    .line 135
    const/high16 v6, 0x3f800000    # 1.0f

    .line 136
    .line 137
    const/4 v7, 0x1

    .line 138
    const/high16 v5, 0x3f800000    # 1.0f

    .line 139
    .line 140
    const/4 v8, 0x0

    .line 141
    const/high16 v9, 0x3f800000    # 1.0f

    .line 142
    .line 143
    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
