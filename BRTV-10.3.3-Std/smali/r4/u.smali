.class public final synthetic Lr4/u;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lr4/a;


# direct methods
.method public synthetic constructor <init>(Lr4/a;I)V
    .locals 0

    .line 1
    iput p2, p0, Lr4/u;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lr4/u;->b:Lr4/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ly4/l;)V
    .locals 4

    .line 1
    iget v0, p0, Lr4/u;->a:I

    .line 2
    .line 3
    check-cast p1, Lr4/k;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lr4/u;->b:Lr4/a;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ly4/l;->h()Lcom/google/android/gms/common/api/Status;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget v1, p1, Lcom/google/android/gms/common/api/Status;->a:I

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v2, "Error fetching queue items, statusCode="

    .line 22
    .line 23
    const-string v3, ", statusMessage="

    .line 24
    .line 25
    invoke-static {v1, v2, v3}, La/e;->u(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object p1, p1, Lcom/google/android/gms/common/api/Status;->b:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 v1, 0x0

    .line 39
    new-array v1, v1, [Ljava/lang/Object;

    .line 40
    .line 41
    iget-object v2, v0, Lr4/a;->a:Lv4/b;

    .line 42
    .line 43
    iget-object v3, v2, Lv4/b;->a:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v2, p1, v1}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_0
    const/4 p1, 0x0

    .line 53
    iput-object p1, v0, Lr4/a;->k:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 54
    .line 55
    iget-object p1, v0, Lr4/a;->h:Ljava/util/ArrayDeque;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_1

    .line 62
    .line 63
    iget-object p1, v0, Lr4/a;->i:Lcom/google/android/gms/internal/cast/x0;

    .line 64
    .line 65
    iget-object v0, v0, Lr4/a;->j:Lr4/o;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    const-wide/16 v1, 0x1f4

    .line 71
    .line 72
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void

    .line 76
    :pswitch_0
    iget-object v0, p0, Lr4/u;->b:Lr4/a;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-interface {p1}, Ly4/l;->h()Lcom/google/android/gms/common/api/Status;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget v1, p1, Lcom/google/android/gms/common/api/Status;->a:I

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    const-string v2, "Error fetching queue item ids, statusCode="

    .line 90
    .line 91
    const-string v3, ", statusMessage="

    .line 92
    .line 93
    invoke-static {v1, v2, v3}, La/e;->u(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iget-object p1, p1, Lcom/google/android/gms/common/api/Status;->b:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const/4 v1, 0x0

    .line 107
    new-array v1, v1, [Ljava/lang/Object;

    .line 108
    .line 109
    iget-object v2, v0, Lr4/a;->a:Lv4/b;

    .line 110
    .line 111
    iget-object v3, v2, Lv4/b;->a:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v2, p1, v1}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :cond_2
    const/4 p1, 0x0

    .line 121
    iput-object p1, v0, Lr4/a;->l:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 122
    .line 123
    iget-object p1, v0, Lr4/a;->h:Ljava/util/ArrayDeque;

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-nez p1, :cond_3

    .line 130
    .line 131
    iget-object p1, v0, Lr4/a;->i:Lcom/google/android/gms/internal/cast/x0;

    .line 132
    .line 133
    iget-object v0, v0, Lr4/a;->j:Lr4/o;

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 136
    .line 137
    .line 138
    const-wide/16 v1, 0x1f4

    .line 139
    .line 140
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    .line 142
    .line 143
    :cond_3
    return-void

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
