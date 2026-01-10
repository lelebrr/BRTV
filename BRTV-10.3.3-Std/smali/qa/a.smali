.class public final synthetic Lqa/a;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lqa/a;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lqa/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lqa/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lqa/l;

    .line 7
    .line 8
    iget-object v1, p0, Lqa/a;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lqa/o;

    .line 11
    .line 12
    iget-object v1, v1, Lqa/o;->a:Landroid/app/Activity;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lqa/l;-><init>(Landroid/app/Activity;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_0
    iget-object v0, p0, Lqa/a;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lqa/l;

    .line 21
    .line 22
    iget-object v1, v0, Lqa/l;->F:Lqa/j;

    .line 23
    .line 24
    sget-object v2, Lqa/k;->a:[I

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    aget v1, v2, v1

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    if-ne v1, v2, :cond_0

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Lqa/l;->b()V

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0

    .line 45
    :pswitch_1
    new-instance v0, Lqa/o;

    .line 46
    .line 47
    iget-object v1, p0, Lqa/a;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Lqa/g;

    .line 50
    .line 51
    iget-object v1, v1, Lqa/g;->a:Lorg/bitspark/android/Spark;

    .line 52
    .line 53
    invoke-direct {v0, v1}, Lqa/o;-><init>(Landroid/app/Activity;)V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
