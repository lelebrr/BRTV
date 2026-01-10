.class public Lorg/bitspark/android/beans/ChannelBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitspark/android/beans/ChannelBean$NameBean;,
        Lorg/bitspark/android/beans/ChannelBean$LogoBean;,
        Lorg/bitspark/android/beans/ChannelBean$SourcesBean;,
        Lorg/bitspark/android/beans/ChannelBean$TagsBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x159026a8c057e52eL


# instance fields
.field private chid:I

.field private description:Ljava/lang/String;

.field private dlEver:J

.field private epg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/EpgBeans;",
            ">;"
        }
    .end annotation
.end field

.field private epgSameAs:I

.field private hasPlayBack:Z

.field private id:Ljava/lang/String;

.field private level:I

.field private logo:Lorg/bitspark/android/beans/ChannelBean$LogoBean;

.field private name:Lorg/bitspark/android/beans/ChannelBean$NameBean;

.field private rating:F

.field private search:Ljava/lang/String;

.field seasonCount:I

.field private sid:I

.field private sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/ChannelBean$SourcesBean;",
            ">;"
        }
    .end annotation
.end field

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/ChannelBean$TagsBean;",
            ">;"
        }
    .end annotation
.end field

.field private type:I

.field private updatedAt:Ljava/lang/String;

.field private year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lorg/bitspark/android/beans/ChannelBean;->updatedAt:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lorg/bitspark/android/beans/ChannelBean;->year:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput v2, p0, Lorg/bitspark/android/beans/ChannelBean;->rating:F

    .line 13
    .line 14
    iput v1, p0, Lorg/bitspark/android/beans/ChannelBean;->epgSameAs:I

    .line 15
    .line 16
    iput-boolean v1, p0, Lorg/bitspark/android/beans/ChannelBean;->hasPlayBack:Z

    .line 17
    .line 18
    iput-object v0, p0, Lorg/bitspark/android/beans/ChannelBean;->description:Ljava/lang/String;

    .line 19
    .line 20
    iput v1, p0, Lorg/bitspark/android/beans/ChannelBean;->seasonCount:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public native getChid()I
.end method

.method public native getDescription()Ljava/lang/String;
.end method

.method public native getDlEver()J
.end method

.method public native getEpg()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end method

.method public native getEpgSameAs()I
.end method

.method public native getId()Ljava/lang/String;
.end method

.method public native getLevel()I
.end method

.method public native getLogo()Lorg/bitspark/android/beans/ChannelBean$LogoBean;
.end method

.method public native getName()Lorg/bitspark/android/beans/ChannelBean$NameBean;
.end method

.method public native getRating()F
.end method

.method public native getSearch()Ljava/lang/String;
.end method

.method public native getSeasonSources(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/ChannelBean$SourcesBean;",
            ">;"
        }
    .end annotation
.end method

.method public native getSeasons()I
.end method

.method public native getSid()I
.end method

.method public native getSourceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/Menu;",
            ">;"
        }
    .end annotation
.end method

.method public native getSources()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/ChannelBean$SourcesBean;",
            ">;"
        }
    .end annotation
.end method

.method public native getTags()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/ChannelBean$TagsBean;",
            ">;"
        }
    .end annotation
.end method

.method public native getType()I
.end method

.method public native getUpdatedAt()Ljava/lang/String;
.end method

.method public native getYear()I
.end method

.method public native isHasPlayBack()Z
.end method

.method public native setChid(I)V
.end method

.method public native setDescription(Ljava/lang/String;)V
.end method

.method public native setDlEver(J)V
.end method

.method public native setEpg(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/EpgBeans;",
            ">;)V"
        }
    .end annotation
.end method

.method public native setEpgSameAs(I)V
.end method

.method public native setHasPlayBack(Z)V
.end method

.method public native setId(Ljava/lang/String;)V
.end method

.method public native setLevel(I)V
.end method

.method public native setLogo(Lorg/bitspark/android/beans/ChannelBean$LogoBean;)V
.end method

.method public native setName(Lorg/bitspark/android/beans/ChannelBean$NameBean;)V
.end method

.method public native setRating(I)V
.end method

.method public native setSearch(Ljava/lang/String;)V
.end method

.method public native setSid(I)V
.end method

.method public native setSources(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/ChannelBean$SourcesBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public native setTags(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/ChannelBean$TagsBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public native setType(I)V
.end method

.method public native setUpdatedAt(Ljava/lang/String;)V
.end method

.method public native setYear(I)V
.end method

.method public native toString()Ljava/lang/String;
.end method
