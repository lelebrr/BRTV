.class public final Lorg/bitspark/android/beans/Source;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bitspark/android/beans/ISeletor;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private _id:I

.field private final address:Ljava/lang/String;

.field private isSelected:Z

.field private isWatched:Z

.field private seasonIndex:I

.field private short_title:Ljava/lang/String;

.field private final subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/Subtitles;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ZIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/Subtitles;",
            ">;ZIZ)V"
        }
    .end annotation

    const-string v0, "vJuYE8yrnQ==\n"

    const-string v1, "3f/8YanY7lU=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dfv5OvAuccNy//M=\n"

    const-string v1, "BpOWSIRxBao=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/bitspark/android/beans/Source;->_id:I

    .line 3
    iput-object p2, p0, Lorg/bitspark/android/beans/Source;->address:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lorg/bitspark/android/beans/Source;->short_title:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lorg/bitspark/android/beans/Source;->subtitles:Ljava/util/List;

    .line 6
    iput-boolean p5, p0, Lorg/bitspark/android/beans/Source;->isWatched:Z

    .line 7
    iput p6, p0, Lorg/bitspark/android/beans/Source;->seasonIndex:I

    .line 8
    iput-boolean p7, p0, Lorg/bitspark/android/beans/Source;->isSelected:Z

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ZIZILj9/f;)V
    .locals 10

    and-int/lit8 v0, p8, 0x2

    .line 9
    const-string v1, ""

    if-eqz v0, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, p3

    :goto_1
    and-int/lit8 v0, p8, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    move v7, p5

    :goto_2
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    move/from16 v8, p6

    :goto_3
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_4

    const/4 v9, 0x0

    goto :goto_4

    :cond_4
    move/from16 v9, p7

    :goto_4
    move-object v2, p0

    move v3, p1

    move-object v6, p4

    invoke-direct/range {v2 .. v9}, Lorg/bitspark/android/beans/Source;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ZIZ)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/bitspark/android/beans/Source;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ZIZILjava/lang/Object;)Lorg/bitspark/android/beans/Source;
    .locals 5

    .line 1
    and-int/lit8 p9, p8, 0x1

    .line 2
    .line 3
    if-eqz p9, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lorg/bitspark/android/beans/Source;->_id:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p9, p8, 0x2

    .line 8
    .line 9
    if-eqz p9, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/bitspark/android/beans/Source;->address:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    move-object p9, p2

    .line 14
    and-int/lit8 p2, p8, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-object p3, p0, Lorg/bitspark/android/beans/Source;->short_title:Ljava/lang/String;

    .line 19
    .line 20
    :cond_2
    move-object v0, p3

    .line 21
    and-int/lit8 p2, p8, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-object p4, p0, Lorg/bitspark/android/beans/Source;->subtitles:Ljava/util/List;

    .line 26
    .line 27
    :cond_3
    move-object v1, p4

    .line 28
    and-int/lit8 p2, p8, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget-boolean p5, p0, Lorg/bitspark/android/beans/Source;->isWatched:Z

    .line 33
    .line 34
    :cond_4
    move v2, p5

    .line 35
    and-int/lit8 p2, p8, 0x20

    .line 36
    .line 37
    if-eqz p2, :cond_5

    .line 38
    .line 39
    iget p6, p0, Lorg/bitspark/android/beans/Source;->seasonIndex:I

    .line 40
    .line 41
    :cond_5
    move v3, p6

    .line 42
    and-int/lit8 p2, p8, 0x40

    .line 43
    .line 44
    if-eqz p2, :cond_6

    .line 45
    .line 46
    iget-boolean p7, p0, Lorg/bitspark/android/beans/Source;->isSelected:Z

    .line 47
    .line 48
    :cond_6
    move v4, p7

    .line 49
    move-object p2, p0

    .line 50
    move p3, p1

    .line 51
    move-object p4, p9

    .line 52
    move-object p5, v0

    .line 53
    move-object p6, v1

    .line 54
    move p7, v2

    .line 55
    move p8, v3

    .line 56
    move p9, v4

    .line 57
    invoke-virtual/range {p2 .. p9}, Lorg/bitspark/android/beans/Source;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ZIZ)Lorg/bitspark/android/beans/Source;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method

.method public static synthetic getSeasonIndex$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic isSelected$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final native component1()I
.end method

.method public final native component2()Ljava/lang/String;
.end method

.method public final native component3()Ljava/lang/String;
.end method

.method public final native component4()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/Subtitles;",
            ">;"
        }
    .end annotation
.end method

.method public final native component5()Z
.end method

.method public final native component6()I
.end method

.method public final native component7()Z
.end method

.method public final native copy(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ZIZ)Lorg/bitspark/android/beans/Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/Subtitles;",
            ">;ZIZ)",
            "Lorg/bitspark/android/beans/Source;"
        }
    .end annotation
.end method

.method public native equals(Ljava/lang/Object;)Z
.end method

.method public final native getAddress()Ljava/lang/String;
.end method

.method public final native getIndexName()Ljava/lang/String;
.end method

.method public final native getSeasonIndex()I
.end method

.method public final native getShort_title()Ljava/lang/String;
.end method

.method public final native getSubtitles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/Subtitles;",
            ">;"
        }
    .end annotation
.end method

.method public final native get_id()I
.end method

.method public native hashCode()I
.end method

.method public native isSelected()Z
.end method

.method public final native isWatched()Z
.end method

.method public final native setSeasonIndex(I)V
.end method

.method public native setSelected(Z)V
.end method

.method public final native setShort_title(Ljava/lang/String;)V
.end method

.method public final native setWatched(Z)V
.end method

.method public final native set_id(I)V
.end method

.method public native toString()Ljava/lang/String;
.end method
