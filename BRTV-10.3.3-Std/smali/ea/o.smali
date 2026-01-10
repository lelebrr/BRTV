.class public final Lea/o;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/LinearLayout;

.field public final synthetic c:Landroid/widget/LinearLayout;

.field public final synthetic d:Lorg/bitspark/android/Spark;


# direct methods
.method public synthetic constructor <init>(Lorg/bitspark/android/Spark;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;I)V
    .locals 0

    .line 1
    iput p4, p0, Lea/o;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lea/o;->d:Lorg/bitspark/android/Spark;

    .line 4
    .line 5
    iput-object p2, p0, Lea/o;->b:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    iput-object p3, p0, Lea/o;->c:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 1
    iget p1, p0, Lea/o;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lea/o;->d:Lorg/bitspark/android/Spark;

    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    iput-boolean p2, p1, Lorg/bitspark/android/Spark;->o0:Z

    .line 12
    .line 13
    xor-int/2addr p2, p2

    .line 14
    iget-object v0, p0, Lea/o;->b:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lea/o;->c:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    iget-boolean p1, p1, Lorg/bitspark/android/Spark;->o0:Z

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Landroid/view/View;->setSelected(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :pswitch_0
    if-eqz p2, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iget-object p2, p0, Lea/o;->d:Lorg/bitspark/android/Spark;

    .line 31
    .line 32
    iput-boolean p1, p2, Lorg/bitspark/android/Spark;->o0:Z

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    iget-object v0, p0, Lea/o;->b:Landroid/widget/LinearLayout;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lea/o;->c:Landroid/widget/LinearLayout;

    .line 41
    .line 42
    iget-boolean p2, p2, Lorg/bitspark/android/Spark;->o0:Z

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
