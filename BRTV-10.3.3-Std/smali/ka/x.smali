.class public final Lka/x;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/s;


# direct methods
.method public synthetic constructor <init>(ILandroidx/fragment/app/s;)V
    .locals 0

    .line 1
    iput p1, p0, Lka/x;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lka/x;->b:Landroidx/fragment/app/s;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget p2, p0, Lka/x;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lka/x;->b:Landroidx/fragment/app/s;

    .line 7
    .line 8
    check-cast p1, Lr4/g;

    .line 9
    .line 10
    iget-object p2, p1, Lr4/g;->o0:Landroid/app/AlertDialog;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/app/Dialog;->cancel()V

    .line 15
    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    iput-object p2, p1, Lr4/g;->o0:Landroid/app/AlertDialog;

    .line 19
    .line 20
    :cond_0
    return-void

    .line 21
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lka/x;->b:Landroidx/fragment/app/s;

    .line 25
    .line 26
    check-cast p1, Lka/y;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lorg/bitspark/android/Spark;

    .line 39
    .line 40
    invoke-virtual {p1}, Lorg/bitspark/android/Spark;->J0()V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
