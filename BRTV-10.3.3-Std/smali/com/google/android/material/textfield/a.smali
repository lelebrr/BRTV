.class public final Lcom/google/android/material/textfield/a;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/textfield/n;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/textfield/n;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/material/textfield/a;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/material/textfield/a;->b:Lcom/google/android/material/textfield/n;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/google/android/material/textfield/a;->b:Lcom/google/android/material/textfield/n;

    .line 4
    .line 5
    iget v3, p0, Lcom/google/android/material/textfield/a;->a:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast v2, Lcom/google/android/material/textfield/r;

    .line 15
    .line 16
    iget-object v0, v2, Lcom/google/android/material/textfield/n;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/google/android/material/textfield/r;->d(Lcom/google/android/material/textfield/r;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    xor-int/2addr v1, v3

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, v2, Lcom/google/android/material/textfield/r;->e:Lcom/google/android/material/textfield/i;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    instance-of v4, v3, Landroid/widget/AutoCompleteTextView;

    .line 40
    .line 41
    if-eqz v4, :cond_4

    .line 42
    .line 43
    check-cast v3, Landroid/widget/AutoCompleteTextView;

    .line 44
    .line 45
    check-cast v2, Lcom/google/android/material/textfield/m;

    .line 46
    .line 47
    iget-object v4, v2, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    const/4 v5, 0x2

    .line 54
    if-ne v4, v5, :cond_0

    .line 55
    .line 56
    iget-object v4, v2, Lcom/google/android/material/textfield/m;->p:Lu6/h;

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    if-ne v4, v1, :cond_1

    .line 63
    .line 64
    iget-object v4, v2, Lcom/google/android/material/textfield/m;->o:Landroid/graphics/drawable/StateListDrawable;

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_0
    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/m;->e(Landroid/widget/AutoCompleteTextView;)V

    .line 70
    .line 71
    .line 72
    new-instance v4, Lcom/google/android/material/textfield/l;

    .line 73
    .line 74
    invoke-direct {v4, v2, v0, v3}, Lcom/google/android/material/textfield/l;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    .line 79
    .line 80
    iget-object v4, v2, Lcom/google/android/material/textfield/m;->f:Landroidx/appcompat/widget/r2;

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 83
    .line 84
    .line 85
    new-instance v4, Lcom/google/android/material/textfield/h;

    .line 86
    .line 87
    invoke-direct {v4, v2}, Lcom/google/android/material/textfield/h;-><init>(Lcom/google/android/material/textfield/m;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v0}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 94
    .line 95
    .line 96
    iget-object v0, v2, Lcom/google/android/material/textfield/m;->e:Lcom/google/android/material/textfield/i;

    .line 97
    .line 98
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    .line 105
    .line 106
    .line 107
    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-eqz v0, :cond_2

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    iget-object v0, v2, Lcom/google/android/material/textfield/m;->q:Landroid/view/accessibility/AccessibilityManager;

    .line 119
    .line 120
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_3

    .line 125
    .line 126
    iget-object v0, v2, Lcom/google/android/material/textfield/n;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 127
    .line 128
    sget-object v3, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 129
    .line 130
    invoke-virtual {v0, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 131
    .line 132
    .line 133
    :cond_3
    :goto_1
    iget-object v0, v2, Lcom/google/android/material/textfield/m;->g:Lcom/google/android/material/textfield/j;

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/u;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 143
    .line 144
    const-string v0, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    .line 145
    .line 146
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1

    .line 150
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v2, Lcom/google/android/material/textfield/e;

    .line 155
    .line 156
    invoke-static {v2}, Lcom/google/android/material/textfield/e;->d(Lcom/google/android/material/textfield/e;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 161
    .line 162
    .line 163
    iget-object p1, v2, Lcom/google/android/material/textfield/e;->f:Landroidx/appcompat/widget/r2;

    .line 164
    .line 165
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 166
    .line 167
    .line 168
    iget-object v1, v2, Lcom/google/android/material/textfield/n;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 169
    .line 170
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 171
    .line 172
    .line 173
    iget-object p1, v2, Lcom/google/android/material/textfield/e;->e:Landroidx/appcompat/widget/p2;

    .line 174
    .line 175
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    nop

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
