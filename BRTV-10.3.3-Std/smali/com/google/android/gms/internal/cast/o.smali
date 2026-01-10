.class public final synthetic Lcom/google/android/gms/internal/cast/o;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/gms/internal/cast/r;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/r;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/gms/internal/cast/o;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/o;->b:Lcom/google/android/gms/internal/cast/r;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/o;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/o;->b:Lcom/google/android/gms/internal/cast/r;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/r;->p()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/o;->b:Lcom/google/android/gms/internal/cast/r;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/r;->e:Lcom/google/android/gms/internal/cast/v;

    .line 15
    .line 16
    iget-object v2, v1, Lcom/google/android/gms/internal/cast/v;->b:Lq1/u0;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    iget-object v2, v1, Lcom/google/android/gms/internal/cast/v;->a:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v2}, Lq1/u0;->d(Landroid/content/Context;)Lq1/u0;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iput-object v2, v1, Lcom/google/android/gms/internal/cast/v;->b:Lq1/u0;

    .line 27
    .line 28
    :cond_0
    iget-object v1, v1, Lcom/google/android/gms/internal/cast/v;->b:Lq1/u0;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lq1/u0;->h(Lq1/m0;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
