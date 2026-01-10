.class public final Lcom/google/android/material/datepicker/u;
.super Landroidx/fragment/app/m;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/m;"
    }
.end annotation


# instance fields
.field public A0:Ljava/lang/CharSequence;

.field public B0:Landroid/widget/TextView;

.field public C0:Lcom/google/android/material/internal/CheckableImageButton;

.field public D0:Lu6/h;

.field public E0:Landroid/widget/Button;

.field public F0:Z

.field public final k0:Ljava/util/LinkedHashSet;

.field public final l0:Ljava/util/LinkedHashSet;

.field public final m0:Ljava/util/LinkedHashSet;

.field public final n0:Ljava/util/LinkedHashSet;

.field public o0:I

.field public p0:Lcom/google/android/material/datepicker/DateSelector;

.field public q0:Lcom/google/android/material/datepicker/b0;

.field public r0:Lcom/google/android/material/datepicker/CalendarConstraints;

.field public s0:Lcom/google/android/material/datepicker/r;

.field public t0:I

.field public u0:Ljava/lang/CharSequence;

.field public v0:Z

.field public w0:I

.field public x0:I

.field public y0:Ljava/lang/CharSequence;

.field public z0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/material/datepicker/u;->k0:Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/material/datepicker/u;->l0:Ljava/util/LinkedHashSet;

    .line 17
    .line 18
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/material/datepicker/u;->m0:Ljava/util/LinkedHashSet;

    .line 24
    .line 25
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/google/android/material/datepicker/u;->n0:Ljava/util/LinkedHashSet;

    .line 31
    .line 32
    return-void
.end method

.method public static U(Landroid/content/Context;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const v0, 0x7f0702e9

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    new-instance v1, Lcom/google/android/material/datepicker/Month;

    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/material/datepicker/g0;->g()Ljava/util/Calendar;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    .line 19
    .line 20
    .line 21
    const v2, 0x7f0702ef

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const v3, 0x7f0702fd

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    mul-int/lit8 v0, v0, 0x2

    .line 36
    .line 37
    iget v1, v1, Lcom/google/android/material/datepicker/Month;->d:I

    .line 38
    .line 39
    mul-int v2, v2, v1

    .line 40
    .line 41
    add-int/2addr v2, v0

    .line 42
    add-int/lit8 v1, v1, -0x1

    .line 43
    .line 44
    mul-int v1, v1, p0

    .line 45
    .line 46
    add-int/2addr v1, v2

    .line 47
    return v1
.end method

.method public static V(Landroid/content/Context;I)Z
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/material/datepicker/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f040353

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v1, v0}, Lcom/bumptech/glide/c;->m(Landroid/content/Context;ILjava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    filled-new-array {p1}, [I

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    .line 29
    .line 30
    return p1
.end method


# virtual methods
.method public final A(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/m;->A(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "OVERRIDE_THEME_RES_ID"

    .line 5
    .line 6
    iget v1, p0, Lcom/google/android/material/datepicker/u;->o0:I

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    const-string v0, "DATE_SELECTOR_KEY"

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->p0:Lcom/google/android/material/datepicker/DateSelector;

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/google/android/material/datepicker/b;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->r0:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    sget v2, Lcom/google/android/material/datepicker/b;->c:I

    .line 26
    .line 27
    sget v2, Lcom/google/android/material/datepicker/b;->c:I

    .line 28
    .line 29
    new-instance v2, Lcom/google/android/material/datepicker/DateValidatorPointForward;

    .line 30
    .line 31
    const-wide/high16 v3, -0x8000000000000000L

    .line 32
    .line 33
    invoke-direct {v2, v3, v4}, Lcom/google/android/material/datepicker/DateValidatorPointForward;-><init>(J)V

    .line 34
    .line 35
    .line 36
    iget-object v2, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->a:Lcom/google/android/material/datepicker/Month;

    .line 37
    .line 38
    iget-wide v2, v2, Lcom/google/android/material/datepicker/Month;->f:J

    .line 39
    .line 40
    iget-object v4, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->b:Lcom/google/android/material/datepicker/Month;

    .line 41
    .line 42
    iget-wide v4, v4, Lcom/google/android/material/datepicker/Month;->f:J

    .line 43
    .line 44
    iget-object v6, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->d:Lcom/google/android/material/datepicker/Month;

    .line 45
    .line 46
    iget-wide v6, v6, Lcom/google/android/material/datepicker/Month;->f:J

    .line 47
    .line 48
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    iput-object v6, v0, Lcom/google/android/material/datepicker/b;->a:Ljava/lang/Long;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->c:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 55
    .line 56
    iput-object v1, v0, Lcom/google/android/material/datepicker/b;->b:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 57
    .line 58
    iget-object v6, p0, Lcom/google/android/material/datepicker/u;->s0:Lcom/google/android/material/datepicker/r;

    .line 59
    .line 60
    iget-object v6, v6, Lcom/google/android/material/datepicker/r;->X:Lcom/google/android/material/datepicker/Month;

    .line 61
    .line 62
    if-eqz v6, :cond_0

    .line 63
    .line 64
    iget-wide v6, v6, Lcom/google/android/material/datepicker/Month;->f:J

    .line 65
    .line 66
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    iput-object v6, v0, Lcom/google/android/material/datepicker/b;->a:Ljava/lang/Long;

    .line 71
    .line 72
    :cond_0
    new-instance v6, Landroid/os/Bundle;

    .line 73
    .line 74
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v7, "DEEP_COPY_VALIDATOR_KEY"

    .line 78
    .line 79
    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 80
    .line 81
    .line 82
    new-instance v1, Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 83
    .line 84
    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/Month;->l(J)Lcom/google/android/material/datepicker/Month;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v4, v5}, Lcom/google/android/material/datepicker/Month;->l(J)Lcom/google/android/material/datepicker/Month;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/google/android/material/datepicker/b;->a:Ljava/lang/Long;

    .line 99
    .line 100
    if-nez v0, :cond_1

    .line 101
    .line 102
    const/4 v0, 0x0

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 105
    .line 106
    .line 107
    move-result-wide v5

    .line 108
    invoke-static {v5, v6}, Lcom/google/android/material/datepicker/Month;->l(J)Lcom/google/android/material/datepicker/Month;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/material/datepicker/CalendarConstraints;-><init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;Lcom/google/android/material/datepicker/Month;)V

    .line 113
    .line 114
    .line 115
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 116
    .line 117
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 118
    .line 119
    .line 120
    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    .line 121
    .line 122
    iget v1, p0, Lcom/google/android/material/datepicker/u;->t0:I

    .line 123
    .line 124
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    const-string v0, "TITLE_TEXT_KEY"

    .line 128
    .line 129
    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->u0:Ljava/lang/CharSequence;

    .line 130
    .line 131
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    const-string v0, "POSITIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 135
    .line 136
    iget v1, p0, Lcom/google/android/material/datepicker/u;->x0:I

    .line 137
    .line 138
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 139
    .line 140
    .line 141
    const-string v0, "POSITIVE_BUTTON_TEXT_KEY"

    .line 142
    .line 143
    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->y0:Ljava/lang/CharSequence;

    .line 144
    .line 145
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    const-string v0, "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 149
    .line 150
    iget v1, p0, Lcom/google/android/material/datepicker/u;->z0:I

    .line 151
    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 153
    .line 154
    .line 155
    const-string v0, "NEGATIVE_BUTTON_TEXT_KEY"

    .line 156
    .line 157
    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->A0:Ljava/lang/CharSequence;

    .line 158
    .line 159
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method public final B()V
    .locals 14

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/m;->B()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/m;->f0:Landroid/app/Dialog;

    .line 5
    .line 6
    const-string v1, " does not have a Dialog."

    .line 7
    .line 8
    const-string v2, "DialogFragment "

    .line 9
    .line 10
    if-eqz v0, :cond_11

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-boolean v3, p0, Lcom/google/android/material/datepicker/u;->v0:Z

    .line 17
    .line 18
    if-eqz v3, :cond_f

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->D0:Lu6/h;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/google/android/material/datepicker/u;->F0:Z

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    goto/16 :goto_9

    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/s;->L()Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const v2, 0x7f0b01ab

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    instance-of v2, v2, Landroid/graphics/drawable/ColorDrawable;

    .line 51
    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 v2, 0x0

    .line 70
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 71
    .line 72
    const/4 v4, 0x1

    .line 73
    const/4 v5, 0x0

    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-nez v6, :cond_2

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    const/4 v6, 0x0

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    :goto_1
    const/4 v6, 0x1

    .line 86
    :goto_2
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    const v8, 0x1010031

    .line 91
    .line 92
    .line 93
    const/high16 v9, -0x1000000

    .line 94
    .line 95
    invoke-static {v7, v8, v9}, Lo9/e;->q(Landroid/content/Context;II)I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-eqz v6, :cond_4

    .line 100
    .line 101
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    :cond_4
    const/16 v6, 0x1e

    .line 106
    .line 107
    if-lt v3, v6, :cond_5

    .line 108
    .line 109
    invoke-static {v0, v5}, Ln0/c1;->a(Landroid/view/Window;Z)V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    invoke-virtual {v8}, Landroid/view/View;->getSystemUiVisibility()I

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    or-int/lit16 v10, v10, 0x700

    .line 122
    .line 123
    invoke-virtual {v8, v10}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 124
    .line 125
    .line 126
    :goto_3
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    const/16 v10, 0x17

    .line 131
    .line 132
    const/16 v11, 0x80

    .line 133
    .line 134
    if-ge v3, v10, :cond_6

    .line 135
    .line 136
    const v12, 0x1010451

    .line 137
    .line 138
    .line 139
    invoke-static {v8, v12, v9}, Lo9/e;->q(Landroid/content/Context;II)I

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    invoke-static {v8, v11}, Lf0/a;->h(II)I

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    goto :goto_4

    .line 148
    :cond_6
    const/4 v8, 0x0

    .line 149
    :goto_4
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    const/16 v13, 0x1b

    .line 154
    .line 155
    if-ge v3, v13, :cond_7

    .line 156
    .line 157
    const v3, 0x1010452

    .line 158
    .line 159
    .line 160
    invoke-static {v12, v3, v9}, Lo9/e;->q(Landroid/content/Context;II)I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    invoke-static {v3, v11}, Lf0/a;->h(II)I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    goto :goto_5

    .line 169
    :cond_7
    const/4 v3, 0x0

    .line 170
    :goto_5
    invoke-virtual {v0, v8}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    invoke-static {v2}, Lo9/e;->t(I)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    invoke-static {v8}, Lo9/e;->t(I)Z

    .line 185
    .line 186
    .line 187
    move-result v9

    .line 188
    if-nez v9, :cond_9

    .line 189
    .line 190
    if-nez v8, :cond_8

    .line 191
    .line 192
    if-eqz v2, :cond_8

    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_8
    const/4 v2, 0x0

    .line 196
    goto :goto_7

    .line 197
    :cond_9
    :goto_6
    const/4 v2, 0x1

    .line 198
    :goto_7
    invoke-static {v7}, Lo9/e;->t(I)Z

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    invoke-static {v3}, Lo9/e;->t(I)Z

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    if-nez v8, :cond_a

    .line 207
    .line 208
    if-nez v3, :cond_b

    .line 209
    .line 210
    if-eqz v7, :cond_b

    .line 211
    .line 212
    :cond_a
    const/4 v5, 0x1

    .line 213
    :cond_b
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 214
    .line 215
    .line 216
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 217
    .line 218
    if-lt v3, v6, :cond_c

    .line 219
    .line 220
    new-instance v3, Ln0/v1;

    .line 221
    .line 222
    invoke-direct {v3, v0}, Ln0/v1;-><init>(Landroid/view/Window;)V

    .line 223
    .line 224
    .line 225
    goto :goto_8

    .line 226
    :cond_c
    const/16 v6, 0x1a

    .line 227
    .line 228
    if-lt v3, v6, :cond_d

    .line 229
    .line 230
    new-instance v3, Ln0/u1;

    .line 231
    .line 232
    invoke-direct {v3, v0}, Ln0/s1;-><init>(Landroid/view/Window;)V

    .line 233
    .line 234
    .line 235
    goto :goto_8

    .line 236
    :cond_d
    if-lt v3, v10, :cond_e

    .line 237
    .line 238
    new-instance v3, Ln0/t1;

    .line 239
    .line 240
    invoke-direct {v3, v0}, Ln0/s1;-><init>(Landroid/view/Window;)V

    .line 241
    .line 242
    .line 243
    goto :goto_8

    .line 244
    :cond_e
    new-instance v3, Ln0/s1;

    .line 245
    .line 246
    invoke-direct {v3, v0}, Ln0/s1;-><init>(Landroid/view/Window;)V

    .line 247
    .line 248
    .line 249
    :goto_8
    invoke-virtual {v3, v2}, Lo9/e;->G(Z)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3, v5}, Lo9/e;->F(Z)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 264
    .line 265
    new-instance v3, Landroidx/leanback/widget/j1;

    .line 266
    .line 267
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 268
    .line 269
    .line 270
    iput v2, v3, Landroidx/leanback/widget/j1;->a:I

    .line 271
    .line 272
    iput-object v1, v3, Landroidx/leanback/widget/j1;->c:Ljava/lang/Object;

    .line 273
    .line 274
    iput v0, v3, Landroidx/leanback/widget/j1;->b:I

    .line 275
    .line 276
    sget-object v0, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 277
    .line 278
    invoke-static {v1, v3}, Ln0/g0;->u(Landroid/view/View;Ln0/s;)V

    .line 279
    .line 280
    .line 281
    iput-boolean v4, p0, Lcom/google/android/material/datepicker/u;->F0:Z

    .line 282
    .line 283
    goto :goto_9

    .line 284
    :cond_f
    const/4 v3, -0x2

    .line 285
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0}, Landroidx/fragment/app/s;->m()Landroid/content/res/Resources;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    const v4, 0x7f0702f1

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 296
    .line 297
    .line 298
    move-result v10

    .line 299
    new-instance v3, Landroid/graphics/Rect;

    .line 300
    .line 301
    invoke-direct {v3, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 302
    .line 303
    .line 304
    new-instance v4, Landroid/graphics/drawable/InsetDrawable;

    .line 305
    .line 306
    iget-object v6, p0, Lcom/google/android/material/datepicker/u;->D0:Lu6/h;

    .line 307
    .line 308
    move-object v5, v4

    .line 309
    move v7, v10

    .line 310
    move v8, v10

    .line 311
    move v9, v10

    .line 312
    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    new-instance v4, Lh6/a;

    .line 323
    .line 324
    iget-object v5, p0, Landroidx/fragment/app/m;->f0:Landroid/app/Dialog;

    .line 325
    .line 326
    if-eqz v5, :cond_10

    .line 327
    .line 328
    invoke-direct {v4, v5, v3}, Lh6/a;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 332
    .line 333
    .line 334
    :goto_9
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/u;->W()V

    .line 335
    .line 336
    .line 337
    return-void

    .line 338
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 339
    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    throw v0

    .line 359
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 360
    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    throw v0
.end method

.method public final C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->q0:Lcom/google/android/material/datepicker/b0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/material/datepicker/b0;->T:Ljava/util/LinkedHashSet;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroidx/fragment/app/m;->C()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final R()Landroid/app/Dialog;
    .locals 7

    .line 1
    new-instance v0, Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/s;->K()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/s;->K()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget v3, p0, Lcom/google/android/material/datepicker/u;->o0:I

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/u;->T()Lcom/google/android/material/datepicker/DateSelector;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-interface {v3, v2}, Lcom/google/android/material/datepicker/DateSelector;->b(Landroid/content/Context;)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    :goto_0
    invoke-direct {v0, v1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const v2, 0x101020d

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2}, Lcom/google/android/material/datepicker/u;->V(Landroid/content/Context;I)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iput-boolean v2, p0, Lcom/google/android/material/datepicker/u;->v0:Z

    .line 39
    .line 40
    const-class v2, Lcom/google/android/material/datepicker/u;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const v3, 0x7f040147

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v3, v2}, Lcom/bumptech/glide/c;->m(Landroid/content/Context;ILjava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    new-instance v3, Lu6/h;

    .line 54
    .line 55
    const v4, 0x7f13049e

    .line 56
    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    const v6, 0x7f040353

    .line 60
    .line 61
    .line 62
    invoke-direct {v3, v1, v5, v6, v4}, Lu6/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    .line 64
    .line 65
    iput-object v3, p0, Lcom/google/android/material/datepicker/u;->D0:Lu6/h;

    .line 66
    .line 67
    invoke-virtual {v3, v1}, Lu6/h;->k(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->D0:Lu6/h;

    .line 71
    .line 72
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Lu6/h;->n(Landroid/content/res/ColorStateList;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->D0:Lu6/h;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    sget-object v3, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 90
    .line 91
    invoke-static {v2}, Ln0/g0;->i(Landroid/view/View;)F

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-virtual {v1, v2}, Lu6/h;->m(F)V

    .line 96
    .line 97
    .line 98
    return-object v0
.end method

.method public final T()Lcom/google/android/material/datepicker/DateSelector;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->p0:Lcom/google/android/material/datepicker/DateSelector;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/fragment/app/s;->g:Landroid/os/Bundle;

    .line 6
    .line 7
    const-string v1, "DATE_SELECTOR_KEY"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/google/android/material/datepicker/DateSelector;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/material/datepicker/u;->p0:Lcom/google/android/material/datepicker/DateSelector;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->p0:Lcom/google/android/material/datepicker/DateSelector;

    .line 18
    .line 19
    return-object v0
.end method

.method public final W()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/s;->K()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/google/android/material/datepicker/u;->o0:I

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/u;->T()Lcom/google/android/material/datepicker/DateSelector;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1, v0}, Lcom/google/android/material/datepicker/DateSelector;->b(Landroid/content/Context;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/u;->T()Lcom/google/android/material/datepicker/DateSelector;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v2, p0, Lcom/google/android/material/datepicker/u;->r0:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 23
    .line 24
    new-instance v3, Lcom/google/android/material/datepicker/r;

    .line 25
    .line 26
    invoke-direct {v3}, Lcom/google/android/material/datepicker/r;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v4, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v5, "THEME_RES_ID_KEY"

    .line 35
    .line 36
    invoke-virtual {v4, v5, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    const-string v6, "GRID_SELECTOR_KEY"

    .line 40
    .line 41
    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    .line 43
    .line 44
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 45
    .line 46
    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, v2, Lcom/google/android/material/datepicker/CalendarConstraints;->d:Lcom/google/android/material/datepicker/Month;

    .line 50
    .line 51
    const-string v6, "CURRENT_MONTH_KEY"

    .line 52
    .line 53
    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v4}, Landroidx/fragment/app/s;->O(Landroid/os/Bundle;)V

    .line 57
    .line 58
    .line 59
    iput-object v3, p0, Lcom/google/android/material/datepicker/u;->s0:Lcom/google/android/material/datepicker/r;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/google/android/material/datepicker/u;->C0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 62
    .line 63
    iget-boolean v2, v2, Lcom/google/android/material/internal/CheckableImageButton;->d:Z

    .line 64
    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/u;->T()Lcom/google/android/material/datepicker/DateSelector;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-object v3, p0, Lcom/google/android/material/datepicker/u;->r0:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 72
    .line 73
    new-instance v4, Lcom/google/android/material/datepicker/v;

    .line 74
    .line 75
    invoke-direct {v4}, Lcom/google/android/material/datepicker/v;-><init>()V

    .line 76
    .line 77
    .line 78
    new-instance v6, Landroid/os/Bundle;

    .line 79
    .line 80
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, v5, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    const-string v1, "DATE_SELECTOR_KEY"

    .line 87
    .line 88
    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v6}, Landroidx/fragment/app/s;->O(Landroid/os/Bundle;)V

    .line 95
    .line 96
    .line 97
    move-object v3, v4

    .line 98
    :cond_1
    iput-object v3, p0, Lcom/google/android/material/datepicker/u;->q0:Lcom/google/android/material/datepicker/b0;

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/u;->X()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/s;->i()Landroidx/fragment/app/j0;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    new-instance v1, Landroidx/fragment/app/a;

    .line 111
    .line 112
    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/j0;)V

    .line 113
    .line 114
    .line 115
    const v0, 0x7f0b02fd

    .line 116
    .line 117
    .line 118
    iget-object v2, p0, Lcom/google/android/material/datepicker/u;->q0:Lcom/google/android/material/datepicker/b0;

    .line 119
    .line 120
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/a;->i(ILandroidx/fragment/app/s;)V

    .line 121
    .line 122
    .line 123
    iget-boolean v0, v1, Landroidx/fragment/app/a;->g:Z

    .line 124
    .line 125
    if-nez v0, :cond_2

    .line 126
    .line 127
    const/4 v0, 0x0

    .line 128
    iput-boolean v0, v1, Landroidx/fragment/app/a;->h:Z

    .line 129
    .line 130
    iget-object v2, v1, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/j0;

    .line 131
    .line 132
    invoke-virtual {v2, v1, v0}, Landroidx/fragment/app/j0;->v(Landroidx/fragment/app/a;Z)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->q0:Lcom/google/android/material/datepicker/b0;

    .line 136
    .line 137
    new-instance v1, Lcom/google/android/material/datepicker/t;

    .line 138
    .line 139
    const/4 v2, 0x0

    .line 140
    invoke-direct {v1, v2, p0}, Lcom/google/android/material/datepicker/t;-><init>(ILandroidx/fragment/app/s;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/b0;->Q(Lcom/google/android/material/datepicker/t;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 148
    .line 149
    const-string v1, "This transaction is already being added to the back stack"

    .line 150
    .line 151
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v0
.end method

.method public final X()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/u;->T()Lcom/google/android/material/datepicker/DateSelector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Lcom/google/android/material/datepicker/DateSelector;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->B0:Landroid/widget/TextView;

    .line 14
    .line 15
    const v2, 0x7f12017d

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroidx/fragment/app/s;->n(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x1

    .line 23
    new-array v3, v3, [Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    aput-object v0, v3, v4

    .line 27
    .line 28
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->B0:Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final Y(Lcom/google/android/material/internal/CheckableImageButton;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->C0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/google/android/material/internal/CheckableImageButton;->d:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const v0, 0x7f120196

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const v0, 0x7f120198

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->C0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->m0:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/content/DialogInterface$OnCancelListener;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->n0:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/s;->F:Landroid/view/View;

    .line 24
    .line 25
    check-cast v0, Landroid/view/ViewGroup;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/m;->onDismiss(Landroid/content/DialogInterface;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final s(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/m;->s(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Landroidx/fragment/app/s;->g:Landroid/os/Bundle;

    .line 7
    .line 8
    :cond_0
    const-string v0, "OVERRIDE_THEME_RES_ID"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/google/android/material/datepicker/u;->o0:I

    .line 15
    .line 16
    const-string v0, "DATE_SELECTOR_KEY"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/android/material/datepicker/DateSelector;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/material/datepicker/u;->p0:Lcom/google/android/material/datepicker/DateSelector;

    .line 25
    .line 26
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/google/android/material/datepicker/u;->r0:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 35
    .line 36
    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput v0, p0, Lcom/google/android/material/datepicker/u;->t0:I

    .line 43
    .line 44
    const-string v0, "TITLE_TEXT_KEY"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/google/android/material/datepicker/u;->u0:Ljava/lang/CharSequence;

    .line 51
    .line 52
    const-string v0, "INPUT_MODE_KEY"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput v0, p0, Lcom/google/android/material/datepicker/u;->w0:I

    .line 59
    .line 60
    const-string v0, "POSITIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lcom/google/android/material/datepicker/u;->x0:I

    .line 67
    .line 68
    const-string v0, "POSITIVE_BUTTON_TEXT_KEY"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/google/android/material/datepicker/u;->y0:Ljava/lang/CharSequence;

    .line 75
    .line 76
    const-string v0, "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iput v0, p0, Lcom/google/android/material/datepicker/u;->z0:I

    .line 83
    .line 84
    const-string v0, "NEGATIVE_BUTTON_TEXT_KEY"

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/google/android/material/datepicker/u;->A0:Ljava/lang/CharSequence;

    .line 91
    .line 92
    return-void
.end method

.method public final t(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 1
    const/4 p3, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    iget-boolean v1, p0, Lcom/google/android/material/datepicker/u;->v0:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const v1, 0x7f0e00ec

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const v1, 0x7f0e00eb

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iget-boolean v1, p0, Lcom/google/android/material/datepicker/u;->v0:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    const v1, 0x7f0b02fd

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 34
    .line 35
    invoke-static {p2}, Lcom/google/android/material/datepicker/u;->U(Landroid/content/Context;)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, -0x2

    .line 40
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const v1, 0x7f0b02fe

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 55
    .line 56
    invoke-static {p2}, Lcom/google/android/material/datepicker/u;->U(Landroid/content/Context;)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    const/4 v4, -0x1

    .line 61
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    const v1, 0x7f0b0309

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Landroid/widget/TextView;

    .line 75
    .line 76
    iput-object v1, p0, Lcom/google/android/material/datepicker/u;->B0:Landroid/widget/TextView;

    .line 77
    .line 78
    sget-object v2, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 81
    .line 82
    .line 83
    const v1, 0x7f0b030b

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Lcom/google/android/material/internal/CheckableImageButton;

    .line 91
    .line 92
    iput-object v1, p0, Lcom/google/android/material/datepicker/u;->C0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 93
    .line 94
    const v1, 0x7f0b030f

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Landroid/widget/TextView;

    .line 102
    .line 103
    iget-object v2, p0, Lcom/google/android/material/datepicker/u;->u0:Ljava/lang/CharSequence;

    .line 104
    .line 105
    if-eqz v2, :cond_2

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_2
    iget v2, p0, Lcom/google/android/material/datepicker/u;->t0:I

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 114
    .line 115
    .line 116
    :goto_2
    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->C0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 117
    .line 118
    const-string v2, "TOGGLE_BUTTON_TAG"

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->C0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 124
    .line 125
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    .line 126
    .line 127
    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 128
    .line 129
    .line 130
    const v3, 0x10100a0

    .line 131
    .line 132
    .line 133
    filled-new-array {v3}, [I

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    const v4, 0x7f08024b

    .line 138
    .line 139
    .line 140
    invoke-static {p2, v4}, Lcom/bumptech/glide/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 145
    .line 146
    .line 147
    new-array v3, p3, [I

    .line 148
    .line 149
    const v4, 0x7f08024d

    .line 150
    .line 151
    .line 152
    invoke-static {p2, v4}, Lcom/bumptech/glide/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {v2, v3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    .line 161
    .line 162
    iget-object p2, p0, Lcom/google/android/material/datepicker/u;->C0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 163
    .line 164
    iget v1, p0, Lcom/google/android/material/datepicker/u;->w0:I

    .line 165
    .line 166
    if-eqz v1, :cond_3

    .line 167
    .line 168
    const/4 v1, 0x1

    .line 169
    goto :goto_3

    .line 170
    :cond_3
    const/4 v1, 0x0

    .line 171
    :goto_3
    invoke-virtual {p2, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 172
    .line 173
    .line 174
    iget-object p2, p0, Lcom/google/android/material/datepicker/u;->C0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 175
    .line 176
    const/4 v1, 0x0

    .line 177
    invoke-static {p2, v1}, Ln0/s0;->q(Landroid/view/View;Ln0/b;)V

    .line 178
    .line 179
    .line 180
    iget-object p2, p0, Lcom/google/android/material/datepicker/u;->C0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 181
    .line 182
    invoke-virtual {p0, p2}, Lcom/google/android/material/datepicker/u;->Y(Lcom/google/android/material/internal/CheckableImageButton;)V

    .line 183
    .line 184
    .line 185
    iget-object p2, p0, Lcom/google/android/material/datepicker/u;->C0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 186
    .line 187
    new-instance v1, Lcom/google/android/material/datepicker/s;

    .line 188
    .line 189
    const/4 v2, 0x2

    .line 190
    invoke-direct {v1, p0, v2}, Lcom/google/android/material/datepicker/s;-><init>(Lcom/google/android/material/datepicker/u;I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    .line 195
    .line 196
    const p2, 0x7f0b00e2

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    check-cast p2, Landroid/widget/Button;

    .line 204
    .line 205
    iput-object p2, p0, Lcom/google/android/material/datepicker/u;->E0:Landroid/widget/Button;

    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/u;->T()Lcom/google/android/material/datepicker/DateSelector;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    invoke-interface {p2}, Lcom/google/android/material/datepicker/DateSelector;->f()Z

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    if-eqz p2, :cond_4

    .line 216
    .line 217
    iget-object p2, p0, Lcom/google/android/material/datepicker/u;->E0:Landroid/widget/Button;

    .line 218
    .line 219
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 220
    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_4
    iget-object p2, p0, Lcom/google/android/material/datepicker/u;->E0:Landroid/widget/Button;

    .line 224
    .line 225
    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 226
    .line 227
    .line 228
    :goto_4
    iget-object p2, p0, Lcom/google/android/material/datepicker/u;->E0:Landroid/widget/Button;

    .line 229
    .line 230
    const-string v1, "CONFIRM_BUTTON_TAG"

    .line 231
    .line 232
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    iget-object p2, p0, Lcom/google/android/material/datepicker/u;->y0:Ljava/lang/CharSequence;

    .line 236
    .line 237
    if-eqz p2, :cond_5

    .line 238
    .line 239
    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->E0:Landroid/widget/Button;

    .line 240
    .line 241
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_5
    iget p2, p0, Lcom/google/android/material/datepicker/u;->x0:I

    .line 246
    .line 247
    if-eqz p2, :cond_6

    .line 248
    .line 249
    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->E0:Landroid/widget/Button;

    .line 250
    .line 251
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 252
    .line 253
    .line 254
    :cond_6
    :goto_5
    iget-object p2, p0, Lcom/google/android/material/datepicker/u;->E0:Landroid/widget/Button;

    .line 255
    .line 256
    new-instance v1, Lcom/google/android/material/datepicker/s;

    .line 257
    .line 258
    invoke-direct {v1, p0, p3}, Lcom/google/android/material/datepicker/s;-><init>(Lcom/google/android/material/datepicker/u;I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    .line 263
    .line 264
    const p2, 0x7f0b00a6

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 268
    .line 269
    .line 270
    move-result-object p2

    .line 271
    check-cast p2, Landroid/widget/Button;

    .line 272
    .line 273
    const-string p3, "CANCEL_BUTTON_TAG"

    .line 274
    .line 275
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    iget-object p3, p0, Lcom/google/android/material/datepicker/u;->A0:Ljava/lang/CharSequence;

    .line 279
    .line 280
    if-eqz p3, :cond_7

    .line 281
    .line 282
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    .line 284
    .line 285
    goto :goto_6

    .line 286
    :cond_7
    iget p3, p0, Lcom/google/android/material/datepicker/u;->z0:I

    .line 287
    .line 288
    if-eqz p3, :cond_8

    .line 289
    .line 290
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 291
    .line 292
    .line 293
    :cond_8
    :goto_6
    new-instance p3, Lcom/google/android/material/datepicker/s;

    .line 294
    .line 295
    invoke-direct {p3, p0, v0}, Lcom/google/android/material/datepicker/s;-><init>(Lcom/google/android/material/datepicker/u;I)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    .line 300
    .line 301
    return-object p1
.end method
