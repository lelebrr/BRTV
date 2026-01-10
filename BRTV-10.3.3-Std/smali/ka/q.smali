.class public final Lka/q;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/bitspark/android/beans/ChannelBean;

    .line 2
    .line 3
    check-cast p2, Lorg/bitspark/android/beans/ChannelBean;

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getName()Lorg/bitspark/android/beans/ChannelBean$NameBean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean$NameBean;->getInit()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p2}, Lorg/bitspark/android/beans/ChannelBean;->getName()Lorg/bitspark/android/beans/ChannelBean$NameBean;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Lorg/bitspark/android/beans/ChannelBean$NameBean;->getInit()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method
