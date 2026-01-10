.class public final Lka/t;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lsa/k;

.field public final synthetic b:Lka/y;


# direct methods
.method public constructor <init>(Lka/y;Lsa/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lka/t;->b:Lka/y;

    .line 5
    .line 6
    iput-object p2, p0, Lka/t;->a:Lsa/k;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .line 1
    sget-object p2, Lga/k;->b:Lorg/bitspark/android/beans/UpdateInfo;

    .line 2
    .line 3
    iget-object p2, p2, Lorg/bitspark/android/beans/UpdateInfo;->release:Lorg/bitspark/android/beans/UpdateInfo$ReleaseBean;

    .line 4
    .line 5
    iget-object p2, p2, Lorg/bitspark/android/beans/UpdateInfo$ReleaseBean;->url:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v0, Lka/y;->u1:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, p0, Lka/t;->b:Lka/y;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v7, p0, Lka/t;->a:Lsa/k;

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string p1, "6EdZqKCRZTuMTVy0o4wof95NWrS13mg+2E1c5uI=\n"

    .line 21
    .line 22
    const-string p2, "rCguxsz+BF8=\n"

    .line 23
    .line 24
    invoke-static {p1, p2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v8, p1}, Lorg/bitspark/android/Spark;->m0(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    const-string p1, "NZAEri9UOFdRmgGyLEl1EwOaB7I6GzVSBZoB4G0V\n"

    .line 45
    .line 46
    const-string p2, "cf9zwEM7WTM=\n"

    .line 47
    .line 48
    invoke-static {p1, p2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {v8, p1}, Lorg/bitspark/android/Spark;->m0(ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-nez v3, :cond_2

    .line 71
    .line 72
    const-string p1, "qaYz8DAWA2TNrDbsMwtOIJ+sMOwlWQ5hmaw2vnJXTA==\n"

    .line 73
    .line 74
    const-string p2, "7clEnlx5YgA=\n"

    .line 75
    .line 76
    invoke-static {p1, p2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {v8, p1}, Lorg/bitspark/android/Spark;->m0(ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    const-string v1, "/w==\n"

    .line 85
    .line 86
    const-string v2, "0JqSV2fRZ4M=\n"

    .line 87
    .line 88
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    add-int/lit8 v1, v1, 0x1

    .line 97
    .line 98
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {p2}, Lcom/lzy/okgo/OkGo;->get(Ljava/lang/String;)Lcom/lzy/okgo/request/GetRequest;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    sget-object v1, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    .line 107
    .line 108
    invoke-virtual {p2, v1}, Lcom/lzy/okgo/request/base/Request;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    check-cast p2, Lcom/lzy/okgo/request/GetRequest;

    .line 113
    .line 114
    new-instance v9, Lka/u;

    .line 115
    .line 116
    move-object v1, v9

    .line 117
    move-object v2, v0

    .line 118
    move-object v5, p1

    .line 119
    move-object v6, v7

    .line 120
    invoke-direct/range {v1 .. v6}, Lka/u;-><init>(Lka/y;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;Lsa/k;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, v9}, Lcom/lzy/okgo/request/base/Request;->execute(Lcom/lzy/okgo/callback/Callback;)V

    .line 124
    .line 125
    .line 126
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/s;->m()Landroid/content/res/Resources;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const p2, 0x7f06009e

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    iget-object p2, v7, Lsa/k;->o:Landroid/widget/Button;

    .line 138
    .line 139
    invoke-virtual {p2, v8}, Landroid/view/View;->setClickable(Z)V

    .line 140
    .line 141
    .line 142
    iget-object p2, v7, Lsa/k;->p:Landroid/widget/Button;

    .line 143
    .line 144
    if-eqz p2, :cond_3

    .line 145
    .line 146
    invoke-virtual {p2, v8}, Landroid/view/View;->setClickable(Z)V

    .line 147
    .line 148
    .line 149
    iget-object p2, v7, Lsa/k;->p:Landroid/widget/Button;

    .line 150
    .line 151
    invoke-virtual {p2, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 152
    .line 153
    .line 154
    iget-object p2, v7, Lsa/k;->p:Landroid/widget/Button;

    .line 155
    .line 156
    invoke-virtual {p2, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 157
    .line 158
    .line 159
    iget-object p2, v7, Lsa/k;->p:Landroid/widget/Button;

    .line 160
    .line 161
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    .line 163
    .line 164
    :cond_3
    sget p2, Lea/a;->e:I

    .line 165
    .line 166
    sget-object v0, Lga/k;->b:Lorg/bitspark/android/beans/UpdateInfo;

    .line 167
    .line 168
    iget v0, v0, Lorg/bitspark/android/beans/UpdateInfo;->incompatibleVersion:I

    .line 169
    .line 170
    if-le p2, v0, :cond_4

    .line 171
    .line 172
    iget-object p2, v7, Lsa/k;->n:Landroid/widget/Button;

    .line 173
    .line 174
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    .line 176
    .line 177
    iget-object p1, v7, Lsa/k;->n:Landroid/widget/Button;

    .line 178
    .line 179
    invoke-virtual {p1, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 180
    .line 181
    .line 182
    iget-object p1, v7, Lsa/k;->n:Landroid/widget/Button;

    .line 183
    .line 184
    invoke-virtual {p1, v8}, Landroid/view/View;->setClickable(Z)V

    .line 185
    .line 186
    .line 187
    iget-object p1, v7, Lsa/k;->n:Landroid/widget/Button;

    .line 188
    .line 189
    invoke-virtual {p1, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 190
    .line 191
    .line 192
    :cond_4
    return-void
.end method
