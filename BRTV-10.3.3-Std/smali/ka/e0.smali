.class public final Lka/e0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lka/i0;


# direct methods
.method public synthetic constructor <init>(Lka/i0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lka/e0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lka/e0;->b:Lka/i0;

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
    .locals 2

    .line 1
    iget p1, p0, Lka/e0;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lka/e0;->b:Lka/i0;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/s;->m()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const v1, 0x7f1201aa

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {v0, v1, p1}, Lba/d;->a(Landroid/content/Context;ILjava/lang/String;)Lba/d;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lba/d;->show()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    iget-object p1, p0, Lka/e0;->b:Lka/i0;

    .line 33
    .line 34
    iget-object p1, p1, Lka/i0;->U:Lta/a;

    .line 35
    .line 36
    invoke-virtual {p1}, Lta/a;->f()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
