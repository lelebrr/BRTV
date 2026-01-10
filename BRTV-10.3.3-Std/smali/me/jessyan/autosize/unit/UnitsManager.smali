.class public Lme/jessyan/autosize/unit/UnitsManager;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field private isSupportDP:Z

.field private isSupportSP:Z

.field private isSupportScreenSizeDP:Z

.field private mDesignHeight:F

.field private mDesignWidth:F

.field private mSupportSubunits:Lme/jessyan/autosize/unit/Subunits;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lme/jessyan/autosize/unit/UnitsManager;->isSupportDP:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lme/jessyan/autosize/unit/UnitsManager;->isSupportSP:Z

    .line 8
    .line 9
    sget-object v0, Lme/jessyan/autosize/unit/Subunits;->NONE:Lme/jessyan/autosize/unit/Subunits;

    .line 10
    .line 11
    iput-object v0, p0, Lme/jessyan/autosize/unit/UnitsManager;->mSupportSubunits:Lme/jessyan/autosize/unit/Subunits;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lme/jessyan/autosize/unit/UnitsManager;->isSupportScreenSizeDP:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public getDesignHeight()F
    .locals 1

    .line 1
    iget v0, p0, Lme/jessyan/autosize/unit/UnitsManager;->mDesignHeight:F

    .line 2
    .line 3
    return v0
.end method

.method public getDesignWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lme/jessyan/autosize/unit/UnitsManager;->mDesignWidth:F

    .line 2
    .line 3
    return v0
.end method

.method public getSupportSubunits()Lme/jessyan/autosize/unit/Subunits;
    .locals 1

    .line 1
    iget-object v0, p0, Lme/jessyan/autosize/unit/UnitsManager;->mSupportSubunits:Lme/jessyan/autosize/unit/Subunits;

    .line 2
    .line 3
    return-object v0
.end method

.method public isSupportDP()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lme/jessyan/autosize/unit/UnitsManager;->isSupportDP:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSupportSP()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lme/jessyan/autosize/unit/UnitsManager;->isSupportSP:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSupportScreenSizeDP()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lme/jessyan/autosize/unit/UnitsManager;->isSupportScreenSizeDP:Z

    .line 2
    .line 3
    return v0
.end method

.method public setDesignHeight(F)Lme/jessyan/autosize/unit/UnitsManager;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    const-string v1, "designHeight must be > 0"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lme/jessyan/autosize/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput p1, p0, Lme/jessyan/autosize/unit/UnitsManager;->mDesignHeight:F

    .line 15
    .line 16
    return-object p0
.end method

.method public setDesignSize(FF)Lme/jessyan/autosize/unit/UnitsManager;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lme/jessyan/autosize/unit/UnitsManager;->setDesignWidth(F)Lme/jessyan/autosize/unit/UnitsManager;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lme/jessyan/autosize/unit/UnitsManager;->setDesignHeight(F)Lme/jessyan/autosize/unit/UnitsManager;

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public setDesignWidth(F)Lme/jessyan/autosize/unit/UnitsManager;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    const-string v1, "designWidth must be > 0"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lme/jessyan/autosize/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput p1, p0, Lme/jessyan/autosize/unit/UnitsManager;->mDesignWidth:F

    .line 15
    .line 16
    return-object p0
.end method

.method public setSupportDP(Z)Lme/jessyan/autosize/unit/UnitsManager;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lme/jessyan/autosize/unit/UnitsManager;->isSupportDP:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setSupportSP(Z)Lme/jessyan/autosize/unit/UnitsManager;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lme/jessyan/autosize/unit/UnitsManager;->isSupportSP:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setSupportScreenSizeDP(Z)Lme/jessyan/autosize/unit/UnitsManager;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lme/jessyan/autosize/unit/UnitsManager;->isSupportScreenSizeDP:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setSupportSubunits(Lme/jessyan/autosize/unit/Subunits;)Lme/jessyan/autosize/unit/UnitsManager;
    .locals 1

    .line 1
    const-string v0, "The supportSubunits can not be null, use Subunits.NONE instead"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lme/jessyan/autosize/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lme/jessyan/autosize/unit/Subunits;

    .line 8
    .line 9
    iput-object p1, p0, Lme/jessyan/autosize/unit/UnitsManager;->mSupportSubunits:Lme/jessyan/autosize/unit/Subunits;

    .line 10
    .line 11
    return-object p0
.end method
