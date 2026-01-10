.class public Lka/j;
.super Lka/b;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field public static final d0:Ljava/lang/String;


# instance fields
.field public U:Landroid/view/View;

.field public V:Lcom/youth/banner/Banner;

.field public W:Lorg/bitspark/android/beans/EventBean;

.field public X:Lta/a;

.field public Y:Landroid/widget/FrameLayout;

.field public Z:Landroid/widget/RelativeLayout;

.field public b0:Landroid/widget/FrameLayout;

.field public c0:Lo8/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "UokkAzNuxh53gycS\n"

    .line 2
    .line 3
    const-string v1, "GuZJZnUcp3k=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lka/j;->d0:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lka/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lka/j;->c0:Lo8/a;

    .line 6
    .line 7
    return-void
.end method

.method public static Q(Lka/j;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0, p1}, Lka/j;->V(ILjava/util/ArrayList;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-object v1, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 23
    .line 24
    new-instance v2, Lka/i;

    .line 25
    .line 26
    invoke-direct {v2, p0, p1}, Lka/i;-><init>(Lka/j;Ljava/util/ArrayList;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/youth/banner/Banner;->setAdapter(Lcom/youth/banner/adapter/BannerAdapter;)Lcom/youth/banner/Banner;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 33
    .line 34
    new-instance v2, La7/f;

    .line 35
    .line 36
    const/16 v3, 0x1c

    .line 37
    .line 38
    invoke-direct {v2, p0, v3, p1}, La7/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/youth/banner/Banner;->addOnPageChangeListener(Lcom/youth/banner/listener/OnPageChangeListener;)Lcom/youth/banner/Banner;

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lka/j;->U:Landroid/view/View;

    .line 45
    .line 46
    const v1, 0x7f0b0208

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/youth/banner/indicator/RectangleIndicator;

    .line 54
    .line 55
    iget-object v1, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 56
    .line 57
    invoke-virtual {v1, p1, v0}, Lcom/youth/banner/Banner;->setIndicator(Lcom/youth/banner/indicator/Indicator;Z)Lcom/youth/banner/Banner;

    .line 58
    .line 59
    .line 60
    sget-object v0, Lea/h;->a:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v0, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 63
    .line 64
    const/16 v1, 0xa

    .line 65
    .line 66
    const/16 v2, 0x64

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/youth/banner/Banner;->setIndicatorWidth(II)Lcom/youth/banner/Banner;

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 72
    .line 73
    const v2, 0x7f0600c1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2}, Lcom/youth/banner/Banner;->setIndicatorNormalColorRes(I)Lcom/youth/banner/Banner;

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 80
    .line 81
    const v2, 0x7f0600c3

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Lcom/youth/banner/Banner;->setIndicatorSelectedColorRes(I)Lcom/youth/banner/Banner;

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setIndicatorHeight(I)Lcom/youth/banner/Banner;

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lka/j;->U:Landroid/view/View;

    .line 93
    .line 94
    const v1, 0x7f0b0209

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-nez v0, :cond_2

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    new-instance v1, Landroidx/appcompat/app/c;

    .line 105
    .line 106
    invoke-direct {v1, p0, p1, v0}, Landroidx/appcompat/app/c;-><init>(Lka/j;Lcom/youth/banner/indicator/RectangleIndicator;Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 110
    .line 111
    .line 112
    :goto_0
    iget-object p0, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->start()Lcom/youth/banner/Banner;

    .line 115
    .line 116
    .line 117
    :goto_1
    return-void
.end method

.method public static T(ILea/c;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    sget-object v1, Lea/c;->a:Lea/c;

    .line 6
    .line 7
    if-ne p1, v1, :cond_2

    .line 8
    .line 9
    sget-object v1, Lga/d;->d:Ljava/util/HashMap;

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    sget-object v1, Lga/d;->d:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/util/Map$Entry;

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-ne v3, p0, :cond_1

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lorg/bitspark/android/beans/Group;

    .line 52
    .line 53
    iget-object p0, p0, Lorg/bitspark/android/beans/Group;->name:Ljava/lang/String;

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_2
    sget-object v1, Lea/c;->b:Lea/c;

    .line 57
    .line 58
    if-ne p1, v1, :cond_3

    .line 59
    .line 60
    invoke-static {p0}, Lga/o;->b(I)Lorg/bitspark/android/beans/ChannelBean$TagsBean;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Lorg/bitspark/android/beans/ChannelBean$TagsBean;->getName()Lorg/bitspark/android/beans/ChannelBean$TagsBean$NameBean;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0}, Lorg/bitspark/android/beans/ChannelBean$TagsBean$NameBean;->getInit()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final R(Lorg/bitspark/android/beans/EventBean;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lorg/bitspark/android/Spark;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget v1, p1, Lorg/bitspark/android/beans/EventBean;->tag:I

    .line 14
    .line 15
    if-nez v1, :cond_3

    .line 16
    .line 17
    iget p1, p1, Lorg/bitspark/android/beans/EventBean;->channel:I

    .line 18
    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lga/l;->h:Lga/l;

    .line 28
    .line 29
    invoke-static {v1}, Lga/m;->g(Lga/l;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "ldc=\n"

    .line 37
    .line 38
    const-string v2, "upfhPKDgIME=\n"

    .line 39
    .line 40
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lga/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :try_start_0
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, p0}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lcom/lzy/okgo/OkGo;->get(Ljava/lang/String;)Lcom/lzy/okgo/request/GetRequest;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string v0, "s1bEaGN9BU+IUQ==\n"

    .line 70
    .line 71
    const-string v1, "5iWhGk48Yio=\n"

    .line 72
    .line 73
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/request/base/Request;->removeHeader(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lcom/lzy/okgo/request/GetRequest;

    .line 82
    .line 83
    const-string v0, "zJeQkwelNgH3kA==\n"

    .line 84
    .line 85
    const-string v1, "meT14SrkUWQ=\n"

    .line 86
    .line 87
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sget-object v1, Lea/a;->m:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p1, v0, v1}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lcom/lzy/okgo/request/GetRequest;

    .line 98
    .line 99
    invoke-virtual {p1, p0}, Lcom/lzy/okgo/request/base/Request;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Lcom/lzy/okgo/request/GetRequest;

    .line 104
    .line 105
    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/request/base/Request;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Lcom/lzy/okgo/request/GetRequest;

    .line 112
    .line 113
    new-instance v0, Lka/f;

    .line 114
    .line 115
    const/4 v1, 0x1

    .line 116
    invoke-direct {v0, p0, v1}, Lka/f;-><init>(Lka/j;I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/request/base/Request;->execute(Lcom/lzy/okgo/callback/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catch_0
    const-string p1, "EV6Q+DUH1MceWoq2JgSQ5QZSxL0xGt/2Vw==\n"

    .line 124
    .line 125
    const-string v0, "djvk2ENosIQ=\n"

    .line 126
    .line 127
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    sget-boolean v0, Lorg/bitspark/android/utils/m;->b:Z

    .line 132
    .line 133
    sget-object v0, Lka/j;->d0:Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :goto_0
    return-void

    .line 139
    :cond_3
    const-string v1, "YwQIyMaC+Nk9TQ==\n"

    .line 140
    .line 141
    const-string v2, "B216raX2rLY=\n"

    .line 142
    .line 143
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    iget v1, p1, Lorg/bitspark/android/beans/EventBean;->tag:I

    .line 147
    .line 148
    sget-object v2, Lea/c;->a:Lea/c;

    .line 149
    .line 150
    invoke-static {v1, v2}, Lka/j;->T(ILea/c;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    if-eqz v1, :cond_4

    .line 155
    .line 156
    iget-object v0, v0, Lorg/bitspark/android/Spark;->B:Landroid/widget/RadioButton;

    .line 157
    .line 158
    invoke-static {v0}, Lo9/d;->y(Landroid/view/View;)Z

    .line 159
    .line 160
    .line 161
    new-instance v0, Landroid/os/Message;

    .line 162
    .line 163
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 164
    .line 165
    .line 166
    const/16 v1, 0x82

    .line 167
    .line 168
    iput v1, v0, Landroid/os/Message;->what:I

    .line 169
    .line 170
    iget p1, p1, Lorg/bitspark/android/beans/EventBean;->tag:I

    .line 171
    .line 172
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 173
    .line 174
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 175
    .line 176
    const-wide/16 v1, 0x64

    .line 177
    .line 178
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_4
    iget v1, p1, Lorg/bitspark/android/beans/EventBean;->tag:I

    .line 183
    .line 184
    sget-object v2, Lea/c;->b:Lea/c;

    .line 185
    .line 186
    invoke-static {v1, v2}, Lka/j;->T(ILea/c;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    if-eqz v1, :cond_5

    .line 191
    .line 192
    iget p1, p1, Lorg/bitspark/android/beans/EventBean;->tag:I

    .line 193
    .line 194
    iget-object v0, v0, Lorg/bitspark/android/Spark;->C:Landroid/widget/RadioButton;

    .line 195
    .line 196
    invoke-static {v0}, Lo9/d;->y(Landroid/view/View;)Z

    .line 197
    .line 198
    .line 199
    new-instance v0, Landroid/os/Message;

    .line 200
    .line 201
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 202
    .line 203
    .line 204
    const/16 v1, 0x83

    .line 205
    .line 206
    iput v1, v0, Landroid/os/Message;->what:I

    .line 207
    .line 208
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 209
    .line 210
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 211
    .line 212
    const-wide/16 v1, 0xc8

    .line 213
    .line 214
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 215
    .line 216
    .line 217
    :cond_5
    :goto_1
    return-void
.end method

.method public final S()V
    .locals 3

    .line 1
    const-string v0, "MDrAfdus9S04OsZtk4nxNyI22nmJzg==\n"

    .line 2
    .line 3
    const-string v1, "Vl+0HrPulEM=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 10
    .line 11
    sget-object v1, Lka/j;->d0:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lka/j;->W()V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lga/l;->j:Lga/l;

    .line 20
    .line 21
    invoke-static {v0}, Lga/m;->g(Lga/l;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v0}, Lcom/lzy/okgo/OkGo;->get(Ljava/lang/String;)Lcom/lzy/okgo/request/GetRequest;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "NP7h5wmJV6MP+Q==\n"

    .line 39
    .line 40
    const-string v2, "YY2ElSTIMMY=\n"

    .line 41
    .line 42
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/base/Request;->removeHeader(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/lzy/okgo/request/GetRequest;

    .line 51
    .line 52
    const-string v1, "WoGvwI/3zFBhhg==\n"

    .line 53
    .line 54
    const-string v2, "D/LKsqK2qzU=\n"

    .line 55
    .line 56
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget-object v2, Lea/a;->m:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/lzy/okgo/request/GetRequest;

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Lcom/lzy/okgo/request/base/Request;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/lzy/okgo/request/GetRequest;

    .line 73
    .line 74
    sget-object v1, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/base/Request;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/lzy/okgo/request/GetRequest;

    .line 81
    .line 82
    new-instance v1, Lka/f;

    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    invoke-direct {v1, p0, v2}, Lka/f;-><init>(Lka/j;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/base/Request;->execute(Lcom/lzy/okgo/callback/Callback;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    :goto_0
    return-void
.end method

.method public final U()V
    .locals 2

    .line 1
    const-string v0, "mrzNIjlVQO6JvtMyOkQ8vA==\n"

    .line 2
    .line 3
    const-string v1, "6Nm+V1QwBpw=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 10
    .line 11
    sget-object v1, Lka/j;->d0:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lorg/bitspark/android/utils/o;->f:Lorg/bitspark/android/utils/o;

    .line 17
    .line 18
    iget-boolean v1, v0, Lorg/bitspark/android/utils/o;->e:Z

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/bitspark/android/utils/o;->f()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lka/j;->X:Lta/a;

    .line 29
    .line 30
    invoke-virtual {v0}, Lta/a;->f()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 35
    .line 36
    invoke-static {v0}, Lo9/d;->y(Landroid/view/View;)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public final V(ILjava/util/ArrayList;)V
    .locals 1

    .line 1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lorg/bitspark/android/beans/EventBean;

    .line 6
    .line 7
    iput-object p1, p0, Lka/j;->W:Lorg/bitspark/android/beans/EventBean;

    .line 8
    .line 9
    const-string p1, "DbXPwHHSY0gMhNL2fNk3DQ==\n"

    .line 10
    .line 11
    const-string p2, "ftC7ghC8DS0=\n"

    .line 12
    .line 13
    invoke-static {p1, p2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lka/j;->W:Lorg/bitspark/android/beans/EventBean;

    .line 17
    .line 18
    iget-object p1, p1, Lorg/bitspark/android/beans/EventBean;->title:Ljava/lang/String;

    .line 19
    .line 20
    iget-object p1, p0, Lka/j;->U:Landroid/view/View;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const p2, 0x7f0b01ee

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/widget/TextView;

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-object p2, p0, Lka/j;->W:Lorg/bitspark/android/beans/EventBean;

    .line 38
    .line 39
    iget-object p2, p2, Lorg/bitspark/android/beans/EventBean;->title:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    new-instance p2, La/f;

    .line 45
    .line 46
    const/16 v0, 0x15

    .line 47
    .line 48
    invoke-direct {p2, v0, p1}, La/f;-><init>(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final W()V
    .locals 6

    .line 1
    iget-object v0, p0, Lka/j;->U:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v1, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 7
    .line 8
    if-eqz v1, :cond_5

    .line 9
    .line 10
    iget-object v1, v1, Lorg/bitspark/android/beans/AuthInfo;->user:Lorg/bitspark/android/beans/AuthInfo$UserBean;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_1
    const v1, 0x7f0b01f4

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    sget-object v1, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 26
    .line 27
    iget-object v1, v1, Lorg/bitspark/android/beans/AuthInfo;->user:Lorg/bitspark/android/beans/AuthInfo$UserBean;

    .line 28
    .line 29
    iget-object v1, v1, Lorg/bitspark/android/beans/AuthInfo$UserBean;->user_name:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    sget-object v1, Lea/g;->b:Ljava/lang/String;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-static {v2, v1}, Lorg/bitspark/android/utils/m;->f(ILjava/lang/String;)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x2

    .line 45
    if-ne v1, v2, :cond_2

    .line 46
    .line 47
    const-string v1, "fYnIEg==\n"

    .line 48
    .line 49
    const-string v2, "Xd+BQmq9zS8=\n"

    .line 50
    .line 51
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    sget-object v1, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 60
    .line 61
    iget-object v1, v1, Lorg/bitspark/android/beans/AuthInfo;->user:Lorg/bitspark/android/beans/AuthInfo$UserBean;

    .line 62
    .line 63
    iget-object v1, v1, Lorg/bitspark/android/beans/AuthInfo$UserBean;->user_name:Ljava/lang/String;

    .line 64
    .line 65
    sget-object v2, Lea/h;->d:Ljava/lang/String;

    .line 66
    .line 67
    const-string v3, ""

    .line 68
    .line 69
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_0
    iget-object v0, p0, Lka/j;->U:Landroid/view/View;

    .line 77
    .line 78
    const v1, 0x7f0b01ef

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/TextView;

    .line 86
    .line 87
    sget-object v1, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 88
    .line 89
    iget-object v1, v1, Lorg/bitspark/android/beans/AuthInfo;->user:Lorg/bitspark/android/beans/AuthInfo$UserBean;

    .line 90
    .line 91
    iget-wide v1, v1, Lorg/bitspark/android/beans/AuthInfo$UserBean;->EndTime:J

    .line 92
    .line 93
    const-wide/16 v3, 0x0

    .line 94
    .line 95
    cmp-long v5, v1, v3

    .line 96
    .line 97
    if-lez v5, :cond_4

    .line 98
    .line 99
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 100
    .line 101
    const-string v2, "t7AEZsrInVaqrQ==\n"

    .line 102
    .line 103
    const-string v3, "09QpK4fl5C8=\n"

    .line 104
    .line 105
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 114
    .line 115
    .line 116
    sget-object v2, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 117
    .line 118
    iget-object v2, v2, Lorg/bitspark/android/beans/AuthInfo;->user:Lorg/bitspark/android/beans/AuthInfo$UserBean;

    .line 119
    .line 120
    iget-wide v2, v2, Lorg/bitspark/android/beans/AuthInfo$UserBean;->EndTime:J

    .line 121
    .line 122
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/s;->m()Landroid/content/res/Resources;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const v2, 0x7f1201ad

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    :cond_5
    :goto_1
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 14
    .line 15
    const/16 v0, 0x6f

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

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
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_d

    .line 6
    .line 7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    if-nez p3, :cond_d

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object p3, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 18
    .line 19
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    const/4 v0, 0x1

    .line 24
    if-ne p1, p3, :cond_c

    .line 25
    .line 26
    iget-object p1, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/youth/banner/Banner;->getItemCount()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 p3, 0x4

    .line 33
    if-eq p2, p3, :cond_8

    .line 34
    .line 35
    const/16 p3, 0x42

    .line 36
    .line 37
    if-eq p2, p3, :cond_7

    .line 38
    .line 39
    packed-switch p2, :pswitch_data_0

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :pswitch_0
    iget-object p2, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/youth/banner/Banner;->getRealCount()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-nez p2, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    iget-object p2, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/youth/banner/Banner;->getCurrentItem()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    add-int/2addr p2, v0

    .line 59
    rem-int/2addr p2, p1

    .line 60
    sub-int/2addr p1, v0

    .line 61
    if-eq p2, p1, :cond_6

    .line 62
    .line 63
    iget-object p1, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 64
    .line 65
    invoke-virtual {p1, p2, v0}, Lcom/youth/banner/Banner;->setCurrentItem(IZ)Lcom/youth/banner/Banner;

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :pswitch_1
    iget-object p2, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/youth/banner/Banner;->getRealCount()I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-nez p2, :cond_1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    iget-object p2, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/youth/banner/Banner;->getCurrentItem()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    sub-int/2addr p2, v0

    .line 85
    rem-int/2addr p2, p1

    .line 86
    if-nez p2, :cond_4

    .line 87
    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-eqz p1, :cond_2

    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lorg/bitspark/android/Spark;

    .line 99
    .line 100
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Lorg/bitspark/android/Spark;->q0(Ljava/lang/Boolean;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Lorg/bitspark/android/Spark;

    .line 110
    .line 111
    iget-object p1, p1, Lorg/bitspark/android/Spark;->H:Landroid/widget/RadioButton;

    .line 112
    .line 113
    invoke-static {p1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 114
    .line 115
    .line 116
    :cond_2
    iget-object p1, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 117
    .line 118
    if-nez p1, :cond_3

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {p1, v0}, Lcom/youth/banner/Banner;->isAutoLoop(Z)Lcom/youth/banner/Banner;

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/youth/banner/Banner;->start()Lcom/youth/banner/Banner;

    .line 127
    .line 128
    .line 129
    :goto_0
    return v0

    .line 130
    :cond_4
    sub-int/2addr p1, v0

    .line 131
    if-ne p2, p1, :cond_5

    .line 132
    .line 133
    const/4 p2, 0x1

    .line 134
    :cond_5
    iget-object p1, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 135
    .line 136
    invoke-virtual {p1, p2, v0}, Lcom/youth/banner/Banner;->setCurrentItem(IZ)Lcom/youth/banner/Banner;

    .line 137
    .line 138
    .line 139
    :cond_6
    :goto_1
    iget-object p1, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/youth/banner/Banner;->getRealCount()I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-le p1, v0, :cond_c

    .line 146
    .line 147
    iget-object p1, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/youth/banner/Banner;->getIndicator()Lcom/youth/banner/indicator/Indicator;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    if-eqz p1, :cond_c

    .line 154
    .line 155
    iget-object p1, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/youth/banner/Banner;->isInfiniteLoop()Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    iget-object p2, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 162
    .line 163
    invoke-virtual {p2}, Lcom/youth/banner/Banner;->getCurrentItem()I

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    iget-object p3, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 168
    .line 169
    invoke-virtual {p3}, Lcom/youth/banner/Banner;->getRealCount()I

    .line 170
    .line 171
    .line 172
    move-result p3

    .line 173
    invoke-static {p1, p2, p3}, Lcom/youth/banner/util/BannerUtils;->getRealPosition(ZII)I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    iget-object p2, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 178
    .line 179
    invoke-virtual {p2}, Lcom/youth/banner/Banner;->getIndicator()Lcom/youth/banner/indicator/Indicator;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    invoke-interface {p2, p1}, Lcom/youth/banner/listener/OnPageChangeListener;->onPageSelected(I)V

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :pswitch_2
    sget-object p1, Lea/h;->a:Ljava/lang/String;

    .line 188
    .line 189
    :pswitch_3
    return v0

    .line 190
    :cond_7
    :pswitch_4
    iget-object p1, p0, Lka/j;->W:Lorg/bitspark/android/beans/EventBean;

    .line 191
    .line 192
    invoke-virtual {p0, p1}, Lka/j;->R(Lorg/bitspark/android/beans/EventBean;)V

    .line 193
    .line 194
    .line 195
    return v0

    .line 196
    :cond_8
    sget-object p1, Lorg/bitspark/android/utils/o;->f:Lorg/bitspark/android/utils/o;

    .line 197
    .line 198
    iget-boolean p1, p1, Lorg/bitspark/android/utils/o;->e:Z

    .line 199
    .line 200
    if-eqz p1, :cond_9

    .line 201
    .line 202
    iget-object p1, p0, Lka/j;->X:Lta/a;

    .line 203
    .line 204
    invoke-virtual {p1}, Lta/a;->f()V

    .line 205
    .line 206
    .line 207
    return v0

    .line 208
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    if-eqz p1, :cond_a

    .line 213
    .line 214
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    check-cast p1, Lorg/bitspark/android/Spark;

    .line 219
    .line 220
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 221
    .line 222
    invoke-virtual {p1, p2}, Lorg/bitspark/android/Spark;->q0(Ljava/lang/Boolean;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    check-cast p1, Lorg/bitspark/android/Spark;

    .line 230
    .line 231
    iget-object p1, p1, Lorg/bitspark/android/Spark;->H:Landroid/widget/RadioButton;

    .line 232
    .line 233
    invoke-static {p1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 234
    .line 235
    .line 236
    :cond_a
    iget-object p1, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 237
    .line 238
    if-nez p1, :cond_b

    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_b
    invoke-virtual {p1, v0}, Lcom/youth/banner/Banner;->isAutoLoop(Z)Lcom/youth/banner/Banner;

    .line 242
    .line 243
    .line 244
    iget-object p1, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 245
    .line 246
    invoke-virtual {p1}, Lcom/youth/banner/Banner;->start()Lcom/youth/banner/Banner;

    .line 247
    .line 248
    .line 249
    :cond_c
    :goto_2
    return v0

    .line 250
    :cond_d
    const/4 p1, 0x0

    .line 251
    return p1

    .line 252
    nop

    .line 253
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final t(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    sget-object p3, Lea/h;->a:Ljava/lang/String;

    .line 2
    .line 3
    const p3, 0x7f0e004c

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lka/j;->U:Landroid/view/View;

    .line 12
    .line 13
    new-instance p1, La1/b;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/s;->J()Landroidx/fragment/app/FragmentActivity;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-direct {p1, p2}, La1/b;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 20
    .line 21
    .line 22
    const-class p2, Lta/a;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, La1/b;->n(Ljava/lang/Class;)Landroidx/lifecycle/v0;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lta/a;

    .line 29
    .line 30
    iput-object p1, p0, Lka/j;->X:Lta/a;

    .line 31
    .line 32
    iget-object p1, p0, Lka/j;->U:Landroid/view/View;

    .line 33
    .line 34
    const p2, 0x7f0b007e

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lcom/youth/banner/Banner;

    .line 42
    .line 43
    iput-object p1, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 44
    .line 45
    iget-object p1, p0, Lka/j;->U:Landroid/view/View;

    .line 46
    .line 47
    const p2, 0x7f0b01f3

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroid/widget/FrameLayout;

    .line 55
    .line 56
    iput-object p1, p0, Lka/j;->b0:Landroid/widget/FrameLayout;

    .line 57
    .line 58
    iget-object p1, p0, Lka/j;->U:Landroid/view/View;

    .line 59
    .line 60
    const p2, 0x7f0b0487

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroid/widget/FrameLayout;

    .line 68
    .line 69
    iput-object p1, p0, Lka/j;->Y:Landroid/widget/FrameLayout;

    .line 70
    .line 71
    iget-object p1, p0, Lka/j;->U:Landroid/view/View;

    .line 72
    .line 73
    const p2, 0x7f0b01f0

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 81
    .line 82
    iput-object p1, p0, Lka/j;->Z:Landroid/widget/RelativeLayout;

    .line 83
    .line 84
    new-instance p1, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    new-instance p2, Lorg/bitspark/android/beans/EventBean;

    .line 90
    .line 91
    const p3, 0x7f0f0025

    .line 92
    .line 93
    .line 94
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    const-string v0, ""

    .line 99
    .line 100
    const/4 v1, 0x1

    .line 101
    invoke-direct {p2, p3, v0, v1}, Lorg/bitspark/android/beans/EventBean;-><init>(Ljava/lang/Integer;Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    iget-object p2, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 108
    .line 109
    new-instance p3, Lka/g;

    .line 110
    .line 111
    invoke-direct {p3, p0, p1}, Lka/g;-><init>(Lka/j;Ljava/util/ArrayList;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, p3}, Lcom/youth/banner/Banner;->setAdapter(Lcom/youth/banner/adapter/BannerAdapter;)Lcom/youth/banner/Banner;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lka/j;->W()V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 121
    .line 122
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 126
    .line 127
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 131
    .line 132
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lka/j;->U:Landroid/view/View;

    .line 136
    .line 137
    return-object p1
.end method
