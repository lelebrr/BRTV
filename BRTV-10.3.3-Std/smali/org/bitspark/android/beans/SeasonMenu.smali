.class public final Lorg/bitspark/android/beans/SeasonMenu;
.super Lorg/bitspark/android/beans/Menu;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private isSelected:Z

.field private name:Ljava/lang/String;

.field private final sourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/ChannelBean$SourcesBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x29

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "+",
            "Lorg/bitspark/android/beans/ChannelBean$SourcesBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "Q1tIEA==\n"

    .line 2
    .line 3
    const-string v1, "LTolddAHmII=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "p34E9BJWUWqnZQ==\n"

    .line 13
    .line 14
    const-string v1, "1BFxhnEzHQM=\n"

    .line 15
    .line 16
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p3, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1, p2}, Lorg/bitspark/android/beans/Menu;-><init>(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lorg/bitspark/android/beans/SeasonMenu;->name:Ljava/lang/String;

    .line 27
    .line 28
    iput-boolean p2, p0, Lorg/bitspark/android/beans/SeasonMenu;->isSelected:Z

    .line 29
    .line 30
    iput-object p3, p0, Lorg/bitspark/android/beans/SeasonMenu;->sourceList:Ljava/util/List;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic copy$default(Lorg/bitspark/android/beans/SeasonMenu;Ljava/lang/String;ZLjava/util/List;ILjava/lang/Object;)Lorg/bitspark/android/beans/SeasonMenu;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/bitspark/android/beans/SeasonMenu;->name:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-boolean p2, p0, Lorg/bitspark/android/beans/SeasonMenu;->isSelected:Z

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lorg/bitspark/android/beans/SeasonMenu;->sourceList:Ljava/util/List;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/bitspark/android/beans/SeasonMenu;->copy(Ljava/lang/String;ZLjava/util/List;)Lorg/bitspark/android/beans/SeasonMenu;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final native component1()Ljava/lang/String;
.end method

.method public final native component2()Z
.end method

.method public final native component3()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/ChannelBean$SourcesBean;",
            ">;"
        }
    .end annotation
.end method

.method public final native copy(Ljava/lang/String;ZLjava/util/List;)Lorg/bitspark/android/beans/SeasonMenu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "+",
            "Lorg/bitspark/android/beans/ChannelBean$SourcesBean;",
            ">;)",
            "Lorg/bitspark/android/beans/SeasonMenu;"
        }
    .end annotation
.end method

.method public native equals(Ljava/lang/Object;)Z
.end method

.method public native getName()Ljava/lang/String;
.end method

.method public final native getSourceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/ChannelBean$SourcesBean;",
            ">;"
        }
    .end annotation
.end method

.method public native hashCode()I
.end method

.method public native isSelected()Z
.end method

.method public native setName(Ljava/lang/String;)V
.end method

.method public native setSelected(Z)V
.end method

.method public native toString()Ljava/lang/String;
.end method
