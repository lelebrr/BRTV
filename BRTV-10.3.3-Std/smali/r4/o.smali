.class public final Lr4/o;
.super Ljava/util/TimerTask;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lr4/o;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lr4/o;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lr4/o;->b:Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Lr4/o;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v0, Lr4/a;

    .line 9
    .line 10
    iget-object v1, v0, Lr4/a;->h:Ljava/util/ArrayDeque;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object v2, v0, Lr4/a;->k:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 20
    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    iget-wide v2, v0, Lr4/a;->b:J

    .line 24
    .line 25
    const-wide/16 v4, 0x0

    .line 26
    .line 27
    cmp-long v6, v2, v4

    .line 28
    .line 29
    if-eqz v6, :cond_2

    .line 30
    .line 31
    invoke-static {v1}, Lv4/a;->f(Ljava/util/AbstractCollection;)[I

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v3, v0, Lr4/a;->c:Lr4/f;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const-string v4, "Must be called from the main thread."

    .line 41
    .line 42
    invoke-static {v4}, Lb5/l;->b(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Lr4/f;->F()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_1

    .line 50
    .line 51
    invoke-static {}, Lr4/f;->x()Lr4/l;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    new-instance v4, Lr4/i;

    .line 57
    .line 58
    invoke-direct {v4, v3, v2}, Lr4/i;-><init>(Lr4/f;[I)V

    .line 59
    .line 60
    .line 61
    invoke-static {v4}, Lr4/f;->G(Lr4/m;)V

    .line 62
    .line 63
    .line 64
    move-object v2, v4

    .line 65
    :goto_0
    iput-object v2, v0, Lr4/a;->k:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 66
    .line 67
    new-instance v3, Lr4/u;

    .line 68
    .line 69
    const/4 v4, 0x1

    .line 70
    invoke-direct {v3, v0, v4}, Lr4/u;-><init>(Lr4/a;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h0(Lr4/u;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_1
    return-void

    .line 80
    :pswitch_0
    check-cast v0, Lr4/p;

    .line 81
    .line 82
    iget-object v1, v0, Lr4/p;->e:Lr4/f;

    .line 83
    .line 84
    iget-object v2, v0, Lr4/p;->a:Ljava/util/HashSet;

    .line 85
    .line 86
    sget-object v3, Lr4/f;->k:Lv4/b;

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lr4/f;->E(Ljava/util/HashSet;)V

    .line 89
    .line 90
    .line 91
    iget-wide v2, v0, Lr4/p;->b:J

    .line 92
    .line 93
    iget-object v0, v1, Lr4/f;->b:Lcom/google/android/gms/internal/cast/x0;

    .line 94
    .line 95
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
