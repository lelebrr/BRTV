.class public final Le6/a;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Le6/a;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Le6/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 1
    iget v0, p0, Le6/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Le6/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lla/d;

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    iget-object p1, p1, Lla/d;->Z:Landroid/widget/EditText;

    .line 13
    .line 14
    const/16 p2, 0x81

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setInputType(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p1, Lla/d;->Z:Landroid/widget/EditText;

    .line 21
    .line 22
    const/16 p2, 0x91

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setInputType(I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void

    .line 28
    :pswitch_0
    iget-object v0, p0, Le6/a;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lcom/google/android/material/chip/Chip;

    .line 31
    .line 32
    iget-object v1, v0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/internal/f;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    check-cast v1, La0/b;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-object v1, v1, La0/b;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Lcom/google/android/material/internal/a;

    .line 44
    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/a;->a(Lcom/google/android/material/internal/g;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iget-boolean v2, v1, Lcom/google/android/material/internal/a;->e:Z

    .line 55
    .line 56
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/internal/a;->e(Lcom/google/android/material/internal/g;Z)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/material/internal/a;->d()V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object v0, v0, Lcom/google/android/material/chip/Chip;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 70
    .line 71
    .line 72
    :cond_3
    return-void

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
