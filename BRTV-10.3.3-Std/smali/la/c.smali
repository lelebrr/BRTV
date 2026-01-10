.class public final Lla/c;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lla/d;


# direct methods
.method public synthetic constructor <init>(Lla/d;I)V
    .locals 0

    .line 1
    iput p2, p0, Lla/c;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lla/c;->b:Lla/d;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget p1, p0, Lla/c;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lla/c;->b:Lla/d;

    .line 7
    .line 8
    iget-object p1, p1, Lla/d;->Z:Landroid/widget/EditText;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const/16 p1, 0x15

    .line 17
    .line 18
    if-ne p2, p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    return p1

    .line 24
    :pswitch_0
    iget-object p1, p0, Lla/c;->b:Lla/d;

    .line 25
    .line 26
    iget-object v0, p1, Lla/d;->Y:Landroid/widget/EditText;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v1, p1, Lla/d;->Y:Landroid/widget/EditText;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iget-boolean v2, p1, Lla/d;->g0:Z

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    const/16 v2, 0x42

    .line 48
    .line 49
    if-ne p2, v2, :cond_1

    .line 50
    .line 51
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-ne p2, v3, :cond_6

    .line 56
    .line 57
    iget-object p1, p1, Lla/d;->Z:Landroid/widget/EditText;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    if-eq v0, v1, :cond_2

    .line 64
    .line 65
    if-nez v1, :cond_3

    .line 66
    .line 67
    :cond_2
    const/16 v1, 0x16

    .line 68
    .line 69
    if-ne p2, v1, :cond_3

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    if-nez v0, :cond_4

    .line 73
    .line 74
    const/16 v0, 0x15

    .line 75
    .line 76
    if-ne p2, v0, :cond_4

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    const/16 v0, 0x13

    .line 80
    .line 81
    if-ne p2, v0, :cond_5

    .line 82
    .line 83
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-nez p2, :cond_5

    .line 88
    .line 89
    iget-object p1, p1, Lla/d;->h0:Landroid/widget/ImageButton;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    const/4 v3, 0x0

    .line 96
    :cond_6
    :goto_1
    return v3

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
