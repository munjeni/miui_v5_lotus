.class public Lmiui/maml/animation/AnimatedElement;
.super Ljava/lang/Object;
.source "AnimatedElement.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AnimatedElement"


# instance fields
.field private mAlignAbsolute:Z

.field private mAlphaExpression:Lmiui/maml/data/Expression;

.field private mAlphas:Lmiui/maml/animation/AlphaAnimation;

.field private mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/animation/BaseAnimation;",
            ">;"
        }
    .end annotation
.end field

.field protected mBaseXExpression:Lmiui/maml/data/Expression;

.field protected mBaseYExpression:Lmiui/maml/data/Expression;

.field protected mCenterXExpression:Lmiui/maml/data/Expression;

.field protected mCenterYExpression:Lmiui/maml/data/Expression;

.field protected mHeightExpression:Lmiui/maml/data/Expression;

.field private mPositions:Lmiui/maml/animation/PositionAnimation;

.field private mRoot:Lmiui/maml/ScreenElementRoot;

.field protected mRotationExpression:Lmiui/maml/data/Expression;

.field private mRotations:Lmiui/maml/animation/RotationAnimation;

.field private mSizes:Lmiui/maml/animation/SizeAnimation;

.field private mSources:Lmiui/maml/animation/SourcesAnimation;

.field private mSrcFormatter:Lmiui/maml/util/TextFormatter;

.field protected mSrcIdExpression:Lmiui/maml/data/Expression;

.field protected mWidthExpression:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iput-object p2, p0, Lmiui/maml/animation/AnimatedElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p0, p1}, Lmiui/maml/animation/AnimatedElement;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;
    .locals 2
    .parameter "node"
    .parameter "name"
    .parameter "compatibleName"

    .prologue
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    .local v0, exp:Lmiui/maml/data/Expression;
    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getContext()Lmiui/maml/ScreenContext;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    return-object v0
.end method

.method private loadAlphaAnimations(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const-string v1, "AlphaAnimation"

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .local v0, ele:Lorg/w3c/dom/Element;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lmiui/maml/animation/AlphaAnimation;

    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v1, v0, v2}, Lmiui/maml/animation/AlphaAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/animation/AnimatedElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    iget-object v1, p0, Lmiui/maml/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadPositionAnimations(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const-string v1, "PositionAnimation"

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .local v0, ele:Lorg/w3c/dom/Element;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lmiui/maml/animation/PositionAnimation;

    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v1, v0, v2}, Lmiui/maml/animation/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/animation/AnimatedElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    iget-object v1, p0, Lmiui/maml/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadRotationAnimations(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const-string v1, "RotationAnimation"

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .local v0, ele:Lorg/w3c/dom/Element;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lmiui/maml/animation/RotationAnimation;

    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v1, v0, v2}, Lmiui/maml/animation/RotationAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/animation/AnimatedElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    iget-object v1, p0, Lmiui/maml/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadSizeAnimations(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const-string v1, "SizeAnimation"

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .local v0, ele:Lorg/w3c/dom/Element;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lmiui/maml/animation/SizeAnimation;

    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v1, v0, v2}, Lmiui/maml/animation/SizeAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/animation/AnimatedElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    iget-object v1, p0, Lmiui/maml/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadSourceAnimations(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const-string v1, "SourcesAnimation"

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .local v0, ele:Lorg/w3c/dom/Element;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lmiui/maml/animation/SourcesAnimation;

    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v1, v0, v2}, Lmiui/maml/animation/SourcesAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/animation/AnimatedElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    iget-object v1, p0, Lmiui/maml/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getAlpha()I
    .locals 5

    .prologue
    const/16 v2, 0xff

    iget-object v3, p0, Lmiui/maml/animation/AnimatedElement;->mAlphaExpression:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmiui/maml/animation/AnimatedElement;->mAlphaExpression:Lmiui/maml/data/Expression;

    invoke-direct {p0}, Lmiui/maml/animation/AnimatedElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v3, v4}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v3

    double-to-int v0, v3

    .local v0, alpha:I
    :goto_0
    iget-object v3, p0, Lmiui/maml/animation/AnimatedElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    if-eqz v3, :cond_1

    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/AlphaAnimation;->getAlpha()I

    move-result v1

    .local v1, alpha1:I
    :goto_1
    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->mixAlpha(II)I

    move-result v2

    return v2

    .end local v0           #alpha:I
    .end local v1           #alpha1:I
    :cond_0
    move v0, v2

    goto :goto_0

    .restart local v0       #alpha:I
    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public getHeight()F
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/SizeAnimation;->getHeight()D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mHeightExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mHeightExpression:Lmiui/maml/data/Expression;

    invoke-direct {p0}, Lmiui/maml/animation/AnimatedElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    :goto_1
    double-to-float v0, v0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x4010

    goto :goto_1
.end method

.method public getMaxHeight()F
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/SizeAnimation;->getMaxHeight()D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mHeightExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mHeightExpression:Lmiui/maml/data/Expression;

    invoke-direct {p0}, Lmiui/maml/animation/AnimatedElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    :goto_1
    double-to-float v0, v0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x4010

    goto :goto_1
.end method

.method public getMaxWidth()F
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/SizeAnimation;->getMaxWidth()D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mWidthExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mWidthExpression:Lmiui/maml/data/Expression;

    invoke-direct {p0}, Lmiui/maml/animation/AnimatedElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    :goto_1
    double-to-float v0, v0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x4010

    goto :goto_1
.end method

.method public getPivotX()F
    .locals 4

    .prologue
    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mCenterXExpression:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mCenterXExpression:Lmiui/maml/data/Expression;

    invoke-direct {p0}, Lmiui/maml/animation/AnimatedElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v2, v3}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    .local v0, x:D
    :goto_0
    double-to-float v2, v0

    return v2

    .end local v0           #x:D
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getPivotY()F
    .locals 4

    .prologue
    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mCenterYExpression:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mCenterYExpression:Lmiui/maml/data/Expression;

    invoke-direct {p0}, Lmiui/maml/animation/AnimatedElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v2, v3}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    .local v0, y:D
    :goto_0
    double-to-float v2, v0

    return v2

    .end local v0           #y:D
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getRotationAngle()F
    .locals 4

    .prologue
    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mRotationExpression:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mRotationExpression:Lmiui/maml/data/Expression;

    invoke-direct {p0}, Lmiui/maml/animation/AnimatedElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v2, v3}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    .local v0, angle:D
    :goto_0
    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/RotationAnimation;->getAngle()F

    move-result v2

    :goto_1
    float-to-double v2, v2

    add-double/2addr v2, v0

    double-to-float v2, v2

    return v2

    .end local v0           #angle:D
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .restart local v0       #angle:D
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getSrc()Ljava/lang/String;
    .locals 5

    .prologue
    iget-object v3, p0, Lmiui/maml/animation/AnimatedElement;->mSrcFormatter:Lmiui/maml/util/TextFormatter;

    invoke-direct {p0}, Lmiui/maml/animation/AnimatedElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v3, v4}, Lmiui/maml/util/TextFormatter;->getText(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v2

    .local v2, src:Ljava/lang/String;
    iget-object v3, p0, Lmiui/maml/animation/AnimatedElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmiui/maml/animation/AnimatedElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    invoke-virtual {v3}, Lmiui/maml/animation/SourcesAnimation;->getSrc()Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lmiui/maml/animation/AnimatedElement;->mSrcIdExpression:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmiui/maml/animation/AnimatedElement;->mSrcIdExpression:Lmiui/maml/data/Expression;

    invoke-direct {p0}, Lmiui/maml/animation/AnimatedElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v3, v4}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v3

    double-to-long v0, v3

    .local v0, id:J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .end local v0           #id:J
    :cond_1
    return-object v2
.end method

.method public getWidth()F
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/SizeAnimation;->getWidth()D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mWidthExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mWidthExpression:Lmiui/maml/data/Expression;

    invoke-direct {p0}, Lmiui/maml/animation/AnimatedElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    :goto_1
    double-to-float v0, v0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x4010

    goto :goto_1
.end method

.method public getX()F
    .locals 4

    .prologue
    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mBaseXExpression:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mBaseXExpression:Lmiui/maml/data/Expression;

    invoke-direct {p0}, Lmiui/maml/animation/AnimatedElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v2, v3}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    .local v0, x:D
    :goto_0
    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/SourcesAnimation;->getX()D

    move-result-wide v2

    add-double/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/PositionAnimation;->getX()D

    move-result-wide v2

    add-double/2addr v0, v2

    :cond_1
    double-to-float v2, v0

    return v2

    .end local v0           #x:D
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getY()F
    .locals 4

    .prologue
    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mBaseYExpression:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mBaseYExpression:Lmiui/maml/data/Expression;

    invoke-direct {p0}, Lmiui/maml/animation/AnimatedElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v2, v3}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    .local v0, y:D
    :goto_0
    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/SourcesAnimation;->getY()D

    move-result-wide v2

    add-double/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/PositionAnimation;->getY()D

    move-result-wide v2

    add-double/2addr v0, v2

    :cond_1
    double-to-float v2, v0

    return v2

    .end local v0           #y:D
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/BaseAnimation;->init()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isAlignAbsolute()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/maml/animation/AnimatedElement;->mAlignAbsolute:Z

    return v0
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 7
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v0, "AnimatedElement"

    const-string v1, "node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lmiui/maml/ScreenElementLoadException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Lmiui/maml/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "x"

    const-string v1, "left"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mBaseXExpression:Lmiui/maml/data/Expression;

    const-string v0, "y"

    const-string v1, "top"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mBaseYExpression:Lmiui/maml/data/Expression;

    const-string v0, "w"

    const-string v1, "width"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mWidthExpression:Lmiui/maml/data/Expression;

    const-string v0, "h"

    const-string v1, "height"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mHeightExpression:Lmiui/maml/data/Expression;

    const-string v0, "angle"

    const-string v1, "rotation"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mRotationExpression:Lmiui/maml/data/Expression;

    const-string v0, "centerX"

    const-string v1, "pivotX"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mCenterXExpression:Lmiui/maml/data/Expression;

    const-string v0, "centerY"

    const-string v1, "pivotY"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mCenterYExpression:Lmiui/maml/data/Expression;

    const-string v0, "srcid"

    invoke-direct {p0, p1, v0, v2}, Lmiui/maml/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mSrcIdExpression:Lmiui/maml/data/Expression;

    const-string v0, "alpha"

    invoke-direct {p0, p1, v0, v2}, Lmiui/maml/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mAlphaExpression:Lmiui/maml/data/Expression;

    const-string v1, "src"

    const-string v2, "srcFormat"

    const-string v3, "srcParas"

    const-string v4, "srcExp"

    const-string v5, "srcFormatExp"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lmiui/maml/util/TextFormatter;->fromElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/util/TextFormatter;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/animation/AnimatedElement;->mSrcFormatter:Lmiui/maml/util/TextFormatter;

    const-string v0, "align"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, align:Ljava/lang/String;
    const-string v0, "absolute"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/AnimatedElement;->mAlignAbsolute:Z

    :cond_1
    invoke-direct {p0, p1}, Lmiui/maml/animation/AnimatedElement;->loadSourceAnimations(Lorg/w3c/dom/Element;)V

    invoke-direct {p0, p1}, Lmiui/maml/animation/AnimatedElement;->loadPositionAnimations(Lorg/w3c/dom/Element;)V

    invoke-direct {p0, p1}, Lmiui/maml/animation/AnimatedElement;->loadRotationAnimations(Lorg/w3c/dom/Element;)V

    invoke-direct {p0, p1}, Lmiui/maml/animation/AnimatedElement;->loadSizeAnimations(Lorg/w3c/dom/Element;)V

    invoke-direct {p0, p1}, Lmiui/maml/animation/AnimatedElement;->loadAlphaAnimations(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public reset(J)V
    .locals 3
    .parameter "time"

    .prologue
    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/animation/BaseAnimation;->reset(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lmiui/maml/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/animation/BaseAnimation;->tick(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
