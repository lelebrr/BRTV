.class public final Lga/n;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/bitspark/android/beans/ChannelBean$TagsBean;

    .line 2
    .line 3
    check-cast p2, Lorg/bitspark/android/beans/ChannelBean$TagsBean;

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean$TagsBean;->getId()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p2}, Lorg/bitspark/android/beans/ChannelBean$TagsBean;->getId()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method
