.class public final Lcom/google/android/material/internal/c;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/internal/d;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/internal/d;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/material/internal/c;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/material/internal/c;->b:Lcom/google/android/material/internal/d;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/internal/c;->b:Lcom/google/android/material/internal/d;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/d;->p(Landroid/graphics/Typeface;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/d;->j(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void

    .line 19
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/internal/c;->b:Lcom/google/android/material/internal/d;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/d;->n(Landroid/graphics/Typeface;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/d;->j(Z)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
