.class public final Lcom/google/android/material/datepicker/t;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/s;


# direct methods
.method public synthetic constructor <init>(ILandroidx/fragment/app/s;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/datepicker/t;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/material/datepicker/t;->b:Landroidx/fragment/app/s;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/datepicker/t;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/datepicker/t;->b:Landroidx/fragment/app/s;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/material/datepicker/v;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/android/material/datepicker/b0;->T:Ljava/util/LinkedHashSet;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/google/android/material/datepicker/t;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/t;->a()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void

    .line 33
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/t;->b:Landroidx/fragment/app/s;

    .line 34
    .line 35
    check-cast v0, Lcom/google/android/material/datepicker/u;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/google/android/material/datepicker/u;->E0:Landroid/widget/Button;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/datepicker/t;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/datepicker/t;->b:Landroidx/fragment/app/s;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/material/datepicker/v;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/android/material/datepicker/b0;->T:Ljava/util/LinkedHashSet;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/google/android/material/datepicker/t;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lcom/google/android/material/datepicker/t;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void

    .line 33
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/t;->b:Landroidx/fragment/app/s;

    .line 34
    .line 35
    check-cast p1, Lcom/google/android/material/datepicker/u;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/u;->X()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p1, Lcom/google/android/material/datepicker/u;->E0:Landroid/widget/Button;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/u;->T()Lcom/google/android/material/datepicker/DateSelector;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1}, Lcom/google/android/material/datepicker/DateSelector;->f()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
