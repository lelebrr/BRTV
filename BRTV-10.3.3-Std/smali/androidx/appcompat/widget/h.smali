.class public final Landroidx/appcompat/widget/h;
.super Landroidx/appcompat/widget/v1;
.source "MyApplication"


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/appcompat/widget/h;->j:I

    iput-object p1, p0, Landroidx/appcompat/widget/h;->k:Landroid/view/View;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/v1;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/appcompat/widget/h;->j:I

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/h;->k:Landroid/view/View;

    .line 3
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/v1;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Lk/c0;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/h;->j:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/h;->k:Landroid/view/View;

    .line 7
    .line 8
    check-cast v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->m:Lk/b;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast v0, Landroidx/appcompat/widget/f;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/appcompat/widget/f;->a:Landroidx/appcompat/widget/k;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/appcompat/widget/k;->u:Landroidx/appcompat/widget/e;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lk/w;->a()Lk/t;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_0
    return-object v1

    .line 28
    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/widget/h;->k:Landroid/view/View;

    .line 29
    .line 30
    check-cast v0, Landroidx/appcompat/widget/ActivityChooserView;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Landroidx/appcompat/widget/ListPopupWindow;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :pswitch_1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->k:Landroid/view/View;

    .line 38
    .line 39
    check-cast v0, Landroidx/appcompat/widget/i;

    .line 40
    .line 41
    iget-object v0, v0, Landroidx/appcompat/widget/i;->d:Landroidx/appcompat/widget/k;

    .line 42
    .line 43
    iget-object v0, v0, Landroidx/appcompat/widget/k;->t:Landroidx/appcompat/widget/e;

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v0}, Lk/w;->a()Lk/t;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Z
    .locals 3

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/h;->j:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/h;->k:Landroid/view/View;

    .line 7
    .line 8
    check-cast v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->k:Lk/k;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->h:Lk/n;

    .line 16
    .line 17
    invoke-interface {v1, v0}, Lk/k;->a(Lk/n;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/appcompat/widget/h;->b()Lk/c0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Lk/c0;->c()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    :cond_0
    return v2

    .line 37
    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/widget/h;->k:Landroid/view/View;

    .line 38
    .line 39
    check-cast v0, Landroidx/appcompat/widget/ActivityChooserView;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->b()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActivityChooserView;->k:Z

    .line 48
    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/s;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v1, "No data model. Did you call #setDataModel?"

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 66
    return v0

    .line 67
    :pswitch_1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->k:Landroid/view/View;

    .line 68
    .line 69
    check-cast v0, Landroidx/appcompat/widget/i;

    .line 70
    .line 71
    iget-object v0, v0, Landroidx/appcompat/widget/i;->d:Landroidx/appcompat/widget/k;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroidx/appcompat/widget/k;->n()Z

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    return v0

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/h;->j:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroidx/appcompat/widget/v1;->d()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0

    .line 11
    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/widget/h;->k:Landroid/view/View;

    .line 12
    .line 13
    check-cast v0, Landroidx/appcompat/widget/ActivityChooserView;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->a()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    :pswitch_1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->k:Landroid/view/View;

    .line 21
    .line 22
    check-cast v0, Landroidx/appcompat/widget/i;

    .line 23
    .line 24
    iget-object v0, v0, Landroidx/appcompat/widget/i;->d:Landroidx/appcompat/widget/k;

    .line 25
    .line 26
    iget-object v1, v0, Landroidx/appcompat/widget/k;->v:Landroidx/appcompat/widget/g;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/k;->c()Z

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    :goto_0
    return v0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
