.class public final Lcom/google/android/material/textfield/l;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/material/textfield/l;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/material/textfield/l;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/android/material/textfield/l;->b:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/l;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    const/4 v0, 0x1

    .line 11
    if-ne p2, v0, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Lcom/google/android/material/textfield/l;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p2, Lma/a;

    .line 16
    .line 17
    iget-object p2, p2, Lma/a;->e:Lna/a;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/material/textfield/l;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lt3/d;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget-object p2, p2, Lna/a;->a:Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;

    .line 30
    .line 31
    invoke-static {p2, p1, v1}, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->a(Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;Landroid/view/View;I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return v0

    .line 35
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/4 p2, 0x1

    .line 40
    const/4 v0, 0x0

    .line 41
    if-ne p1, p2, :cond_3

    .line 42
    .line 43
    iget-object p1, p0, Lcom/google/android/material/textfield/l;->c:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Lcom/google/android/material/textfield/m;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    iget-wide v3, p1, Lcom/google/android/material/textfield/m;->n:J

    .line 55
    .line 56
    sub-long/2addr v1, v3

    .line 57
    const-wide/16 v3, 0x0

    .line 58
    .line 59
    cmp-long v5, v1, v3

    .line 60
    .line 61
    if-ltz v5, :cond_1

    .line 62
    .line 63
    const-wide/16 v3, 0x12c

    .line 64
    .line 65
    cmp-long v5, v1, v3

    .line 66
    .line 67
    if-lez v5, :cond_2

    .line 68
    .line 69
    :cond_1
    iput-boolean v0, p1, Lcom/google/android/material/textfield/m;->l:Z

    .line 70
    .line 71
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/textfield/l;->b:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Landroid/widget/AutoCompleteTextView;

    .line 74
    .line 75
    invoke-static {p1, v1}, Lcom/google/android/material/textfield/m;->d(Lcom/google/android/material/textfield/m;Landroid/widget/AutoCompleteTextView;)V

    .line 76
    .line 77
    .line 78
    iput-boolean p2, p1, Lcom/google/android/material/textfield/m;->l:Z

    .line 79
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v1

    .line 84
    iput-wide v1, p1, Lcom/google/android/material/textfield/m;->n:J

    .line 85
    .line 86
    :cond_3
    return v0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
