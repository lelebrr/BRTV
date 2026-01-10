.class public Lka/a;
.super Lka/b;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lka/b;",
        "Landroid/view/View$OnKeyListener;",
        "Landroid/view/View$OnFocusChangeListener;"
    }
.end annotation


# static fields
.field public static final Y:Ljava/lang/String;


# instance fields
.field public U:Landroid/view/View;

.field public V:Landroidx/recyclerview/widget/RecyclerView;

.field public W:Lfa/b;

.field public X:Lta/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "uIadOXEg\n"

    .line 2
    .line 3
    const-string v1, "+tXcSQFT5Mk=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lka/a;->Y:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lka/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "58a/vIpP\n"

    .line 20
    .line 21
    const-string v2, "iKjU2fNvkak=\n"

    .line 22
    .line 23
    invoke-static {v1, v2, v0, p2}, Lea/q;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 28
    .line 29
    sget-object v1, Lka/a;->Y:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-super {p0, p1, p2, p3}, Lka/b;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1
.end method

.method public final t(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    const p2, 0x7f0e004a

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lka/a;->U:Landroid/view/View;

    .line 10
    .line 11
    const-string p1, "I9lzzHU7mWpkmTQ=\n"

    .line 12
    .line 13
    const-string p2, "SrcauCNS/B0=\n"

    .line 14
    .line 15
    invoke-static {p1, p2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-boolean p2, Lorg/bitspark/android/utils/m;->b:Z

    .line 20
    .line 21
    sget-object p2, Lka/a;->Y:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p2, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lka/a;->U:Landroid/view/View;

    .line 27
    .line 28
    const p2, 0x7f0b006a

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lka/a;->U:Landroid/view/View;

    .line 41
    .line 42
    const p2, 0x7f0b0275

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lorg/bitspark/android/view/CircularProgressBar;

    .line 50
    .line 51
    new-instance p1, Lsa/b;

    .line 52
    .line 53
    const/4 p2, 0x0

    .line 54
    invoke-direct {p1, p2, p2, p2, p2}, Lsa/b;-><init>(IIII)V

    .line 55
    .line 56
    .line 57
    iget-object p3, p0, Lka/a;->U:Landroid/view/View;

    .line 58
    .line 59
    const v0, 0x7f0b006b

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    .line 68
    iput-object p3, p0, Lka/a;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    .line 70
    new-instance p3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 71
    .line 72
    sget v0, Lea/h;->w:I

    .line 73
    .line 74
    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lka/a;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/t0;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lka/a;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    .line 84
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/x0;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lka/a;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 88
    .line 89
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lka/a;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 93
    .line 94
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 95
    .line 96
    .line 97
    :try_start_0
    new-instance p1, Lfa/b;

    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    sget-object v0, Lea/d;->g:Lea/d;

    .line 104
    .line 105
    invoke-direct {p1, p3, v0}, Lfa/o;-><init>(Landroid/content/Context;Lea/d;)V

    .line 106
    .line 107
    .line 108
    iput-object p3, p1, Lfa/b;->j:Landroid/content/Context;

    .line 109
    .line 110
    iput-object p1, p0, Lka/a;->W:Lfa/b;

    .line 111
    .line 112
    new-instance p3, Lj7/c;

    .line 113
    .line 114
    const/4 v0, 0x5

    .line 115
    invoke-direct {p3, v0, p0}, Lj7/c;-><init>(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iput-object p3, p1, Lfa/o;->h:Lfa/n0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :catch_0
    move-exception p1

    .line 122
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    .line 124
    .line 125
    :goto_0
    iget-object p1, p0, Lka/a;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 126
    .line 127
    iget-object p3, p0, Lka/a;->W:Lfa/b;

    .line 128
    .line 129
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lka/a;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    const/16 p3, 0x8

    .line 139
    .line 140
    if-ne p1, p3, :cond_0

    .line 141
    .line 142
    iget-object p1, p0, Lka/a;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    :cond_0
    sget-object p1, Lea/h;->a:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 154
    .line 155
    .line 156
    new-instance p1, La1/b;

    .line 157
    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-direct {p1, p2}, La1/b;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 163
    .line 164
    .line 165
    const-class p2, Lta/a;

    .line 166
    .line 167
    invoke-virtual {p1, p2}, La1/b;->n(Ljava/lang/Class;)Landroidx/lifecycle/v0;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    check-cast p1, Lta/a;

    .line 172
    .line 173
    iput-object p1, p0, Lka/a;->X:Lta/a;

    .line 174
    .line 175
    iget-object p1, p0, Lka/a;->U:Landroid/view/View;

    .line 176
    .line 177
    return-object p1
.end method
