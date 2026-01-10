.class public final Lcom/google/android/material/datepicker/h0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/datepicker/j0;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/j0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/datepicker/h0;->b:Lcom/google/android/material/datepicker/j0;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/material/datepicker/h0;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/google/android/material/datepicker/h0;->b:Lcom/google/android/material/datepicker/j0;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/google/android/material/datepicker/j0;->a:Lcom/google/android/material/datepicker/r;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/material/datepicker/r;->X:Lcom/google/android/material/datepicker/Month;

    .line 6
    .line 7
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->b:I

    .line 8
    .line 9
    iget v1, p0, Lcom/google/android/material/datepicker/h0;->a:I

    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/google/android/material/datepicker/Month;->j(II)Lcom/google/android/material/datepicker/Month;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object p1, p1, Lcom/google/android/material/datepicker/j0;->a:Lcom/google/android/material/datepicker/r;

    .line 16
    .line 17
    iget-object v1, p1, Lcom/google/android/material/datepicker/r;->W:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->a:Lcom/google/android/material/datepicker/Month;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/Month;->h(Lcom/google/android/material/datepicker/Month;)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-gez v3, :cond_0

    .line 26
    .line 27
    move-object v0, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v1, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->b:Lcom/google/android/material/datepicker/Month;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/Month;->h(Lcom/google/android/material/datepicker/Month;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-lez v2, :cond_1

    .line 36
    .line 37
    move-object v0, v1

    .line 38
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/r;->R(Lcom/google/android/material/datepicker/Month;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/r;->S(I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
