.class public final Lcom/google/android/material/datepicker/i;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:J

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/google/android/material/datepicker/i;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/material/datepicker/i;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-wide p2, p0, Lcom/google/android/material/datepicker/i;->b:J

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/material/datepicker/i;->b:J

    .line 2
    .line 3
    iget-object v2, p0, Lcom/google/android/material/datepicker/i;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget v3, p0, Lcom/google/android/material/datepicker/i;->a:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v2, Lcom/tencent/bugly/proguard/r;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/r;->b()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0, v1}, Lcom/tencent/bugly/proguard/r;->a(J)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    check-cast v2, Lcom/google/android/material/datepicker/j;

    .line 20
    .line 21
    iget-object v3, v2, Lcom/google/android/material/datepicker/j;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lr4/b;->m(J)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    aput-object v0, v1, v4

    .line 32
    .line 33
    iget-object v0, v2, Lcom/google/android/material/datepicker/j;->d:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v3, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/google/android/material/datepicker/j;->a()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
