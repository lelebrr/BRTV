.class public final Lsa/c;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lsa/e;

.field public final synthetic c:Lsa/d;


# direct methods
.method public synthetic constructor <init>(Lsa/d;Lsa/e;I)V
    .locals 0

    .line 1
    iput p3, p0, Lsa/c;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lsa/c;->c:Lsa/d;

    .line 4
    .line 5
    iput-object p2, p0, Lsa/c;->b:Lsa/e;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lsa/c;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lsa/c;->c:Lsa/d;

    .line 7
    .line 8
    iget-object p1, p1, Lsa/d;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 9
    .line 10
    iget-object v0, p0, Lsa/c;->b:Lsa/e;

    .line 11
    .line 12
    const/4 v1, -0x2

    .line 13
    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iget-object p1, p0, Lsa/c;->c:Lsa/d;

    .line 18
    .line 19
    iget-object p1, p1, Lsa/d;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 20
    .line 21
    iget-object v0, p0, Lsa/c;->b:Lsa/e;

    .line 22
    .line 23
    const/4 v1, -0x1

    .line 24
    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
