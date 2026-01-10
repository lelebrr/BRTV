.class public final Lea/p;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Landroid/widget/LinearLayout;

.field public final synthetic b:Landroid/widget/LinearLayout;

.field public final synthetic c:Lorg/bitspark/android/Spark;


# direct methods
.method public constructor <init>(Lorg/bitspark/android/Spark;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lea/p;->c:Lorg/bitspark/android/Spark;

    .line 5
    .line 6
    iput-object p2, p0, Lea/p;->a:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    iput-object p3, p0, Lea/p;->b:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lea/p;->c:Lorg/bitspark/android/Spark;

    .line 2
    .line 3
    iget-boolean v0, p1, Lorg/bitspark/android/Spark;->o0:Z

    .line 4
    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    iget-object v1, p0, Lea/p;->a:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p1, Lorg/bitspark/android/Spark;->o0:Z

    .line 13
    .line 14
    iget-object v2, p0, Lea/p;->b:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 17
    .line 18
    .line 19
    iget-boolean p1, p1, Lorg/bitspark/android/Spark;->o0:Z

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method
