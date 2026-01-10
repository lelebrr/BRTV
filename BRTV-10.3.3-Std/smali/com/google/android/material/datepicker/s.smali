.class public final Lcom/google/android/material/datepicker/s;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/datepicker/u;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/datepicker/u;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/material/datepicker/s;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/material/datepicker/s;->b:Lcom/google/android/material/datepicker/u;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/material/datepicker/s;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/material/datepicker/s;->b:Lcom/google/android/material/datepicker/u;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/google/android/material/datepicker/u;->E0:Landroid/widget/Button;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/u;->T()Lcom/google/android/material/datepicker/DateSelector;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Lcom/google/android/material/datepicker/DateSelector;->f()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p1, Lcom/google/android/material/datepicker/u;->C0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p1, Lcom/google/android/material/datepicker/u;->C0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/u;->Y(Lcom/google/android/material/internal/CheckableImageButton;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/u;->W()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/s;->b:Lcom/google/android/material/datepicker/u;

    .line 36
    .line 37
    iget-object v1, v0, Lcom/google/android/material/datepicker/u;->l0:Ljava/util/LinkedHashSet;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroid/view/View$OnClickListener;

    .line 54
    .line 55
    invoke-interface {v2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 p1, 0x0

    .line 60
    invoke-virtual {v0, p1, p1}, Landroidx/fragment/app/m;->Q(ZZ)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/material/datepicker/s;->b:Lcom/google/android/material/datepicker/u;

    .line 65
    .line 66
    iget-object v0, p1, Lcom/google/android/material/datepicker/u;->k0:Ljava/util/LinkedHashSet;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_1

    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/m;->Q(ZZ)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-nez v0, :cond_2

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/u;->T()Lcom/google/android/material/datepicker/DateSelector;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    const/4 p1, 0x0

    .line 97
    throw p1

    .line 98
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 99
    .line 100
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 101
    .line 102
    .line 103
    throw p1

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
