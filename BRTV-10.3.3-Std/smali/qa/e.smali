.class public final Lqa/e;
.super Lc9/i;
.source "MyApplication"

# interfaces
.implements Li9/p;


# instance fields
.field public final synthetic b:Lorg/bitspark/android/beans/ChannelBean;

.field public final synthetic c:Lorg/bitspark/android/beans/SubtitleMenu;


# direct methods
.method public constructor <init>(Lorg/bitspark/android/beans/ChannelBean;Lorg/bitspark/android/beans/SubtitleMenu;La9/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqa/e;->b:Lorg/bitspark/android/beans/ChannelBean;

    .line 2
    .line 3
    iput-object p2, p0, Lqa/e;->c:Lorg/bitspark/android/beans/SubtitleMenu;

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lc9/i;-><init>(La9/d;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;La9/d;)La9/d;
    .locals 2

    .line 1
    new-instance p1, Lqa/e;

    .line 2
    .line 3
    iget-object v0, p0, Lqa/e;->b:Lorg/bitspark/android/beans/ChannelBean;

    .line 4
    .line 5
    iget-object v1, p0, Lqa/e;->c:Lorg/bitspark/android/beans/SubtitleMenu;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lqa/e;-><init>(Lorg/bitspark/android/beans/ChannelBean;Lorg/bitspark/android/beans/SubtitleMenu;La9/d;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lt9/s;

    .line 2
    .line 3
    check-cast p2, La9/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lqa/e;->create(Ljava/lang/Object;La9/d;)La9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lqa/e;

    .line 10
    .line 11
    sget-object p2, Lw8/l;->a:Lw8/l;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lqa/e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p2
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Lo9/d;->I(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lra/f;->b()Lra/f;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Lqa/e;->b:Lorg/bitspark/android/beans/ChannelBean;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lqa/e;->c:Lorg/bitspark/android/beans/SubtitleMenu;

    .line 15
    .line 16
    invoke-virtual {v1}, Lorg/bitspark/android/beans/SubtitleMenu;->getLanguage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object p1, p1, Lra/f;->d:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    sget-object p1, Lw8/l;->a:Lw8/l;

    .line 30
    .line 31
    return-object p1
.end method
