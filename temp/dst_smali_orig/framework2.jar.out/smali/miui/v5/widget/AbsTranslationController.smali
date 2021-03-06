.class public abstract Lmiui/v5/widget/AbsTranslationController;
.super Ljava/lang/Object;
.source "AbsTranslationController.java"

# interfaces
.implements Lmiui/v5/widget/MotionDetectListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/widget/AbsTranslationController$OnTranslateListener;,
        Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = null

.field public static final TRANSLATE_STATE_FLING:I = 0x2

.field public static final TRANSLATE_STATE_IDLE:I = 0x0

.field public static final TRANSLATE_STATE_TOUCH:I = 0x1


# instance fields
.field private mAnimListener:Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mLastAnchorPostion:I

.field private final mListener:Lmiui/v5/widget/MotionDetectStrategy;

.field private final mMaxAnchorDuration:I

.field protected final mMaximumVelocity:I

.field protected final mMinimumVelocity:I

.field private mTranslateListener:Lmiui/v5/widget/AbsTranslationController$OnTranslateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lmiui/v5/widget/AbsTranslationController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/v5/widget/AbsTranslationController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/v5/widget/MotionDetectStrategy;)V
    .locals 3
    .parameter "context"
    .parameter "mml"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmiui/v5/widget/AbsTranslationController;->mListener:Lmiui/v5/widget/MotionDetectStrategy;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lmiui/v5/widget/AbsTranslationController;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lmiui/v5/widget/AbsTranslationController;->mMaximumVelocity:I

    invoke-static {p1}, Lmiui/v5/widget/MiuiViewConfiguration;->get(Landroid/content/Context;)Lmiui/v5/widget/MiuiViewConfiguration;

    move-result-object v1

    .local v1, miuiConfig:Lmiui/v5/widget/MiuiViewConfiguration;
    invoke-virtual {v1}, Lmiui/v5/widget/MiuiViewConfiguration;->getMaxAnchorDuration()I

    move-result v2

    iput v2, p0, Lmiui/v5/widget/AbsTranslationController;->mMaxAnchorDuration:I

    return-void
.end method

.method private fling(Landroid/view/View;IIIZZ)V
    .locals 7
    .parameter "view"
    .parameter "from"
    .parameter "delta"
    .parameter "velocity"
    .parameter "anim"
    .parameter "springBack"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x2

    iget-object v0, p0, Lmiui/v5/widget/AbsTranslationController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lmiui/v5/widget/AbsTranslationController;->mAnimListener:Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;

    iget-object v0, p0, Lmiui/v5/widget/AbsTranslationController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lmiui/v5/widget/AbsTranslationController;->mAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    if-eqz p3, :cond_1

    if-eqz p5, :cond_2

    new-array v0, v6, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/widget/AbsTranslationController;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lmiui/v5/widget/AbsTranslationController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lmiui/v5/widget/AbsTranslationController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p3, p4}, Lmiui/v5/widget/AbsTranslationController;->getDuration(II)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lmiui/v5/widget/AbsTranslationController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;-><init>(Lmiui/v5/widget/AbsTranslationController;Landroid/view/View;IIZ)V

    iput-object v0, p0, Lmiui/v5/widget/AbsTranslationController;->mAnimListener:Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;

    iget-object v0, p0, Lmiui/v5/widget/AbsTranslationController;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lmiui/v5/widget/AbsTranslationController;->mAnimListener:Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lmiui/v5/widget/AbsTranslationController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lmiui/v5/widget/AbsTranslationController;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_3

    if-eqz p6, :cond_3

    invoke-direct {p0, p1}, Lmiui/v5/widget/AbsTranslationController;->springBack(Landroid/view/View;)Z

    :goto_1
    return-void

    :cond_2
    add-int v0, p2, p3

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lmiui/v5/widget/AbsTranslationController;->onTranslate(Landroid/view/View;F)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmiui/v5/widget/AbsTranslationController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v6}, Lmiui/v5/widget/AbsTranslationController;->onTranslateStateChanged(I)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/AbsTranslationController;->onTranslateStateChanged(I)V

    goto :goto_1

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private springBack(Landroid/view/View;)Z
    .locals 12
    .parameter "v"

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v2, v0

    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v3, v0

    .local v3, y:I
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lmiui/v5/widget/AbsTranslationController;->getAnchorPostion(Landroid/view/View;IIIII)I

    move-result v11

    .local v11, anchor:I
    if-eq v11, v3, :cond_0

    sub-int v7, v11, v3

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, v3

    invoke-direct/range {v4 .. v10}, Lmiui/v5/widget/AbsTranslationController;->fling(Landroid/view/View;IIIZZ)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract computVelocity(Landroid/view/VelocityTracker;)I
.end method

.method protected fling(Landroid/view/View;IIIII)V
    .locals 7
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "startX"
    .parameter "startY"
    .parameter "velocity"

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v2, v0

    .local v2, from:I
    invoke-virtual/range {p0 .. p6}, Lmiui/v5/widget/AbsTranslationController;->getAnchorPostion(Landroid/view/View;IIIII)I

    move-result v0

    sub-int v3, v0, v2

    .local v3, delta:I
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p6

    invoke-direct/range {v0 .. v6}, Lmiui/v5/widget/AbsTranslationController;->fling(Landroid/view/View;IIIZZ)V

    return-void
.end method

.method protected abstract getAnchorPostion(Landroid/view/View;IIIII)I
.end method

.method protected getDuration(II)I
    .locals 4
    .parameter "delta"
    .parameter "velocity"

    .prologue
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .local v0, s:I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x3e8

    add-int/lit8 v2, v2, -0x1

    div-int/lit16 v1, v2, 0x3e8

    .local v1, v:I
    if-lez v1, :cond_0

    iget v2, p0, Lmiui/v5/widget/AbsTranslationController;->mMaxAnchorDuration:I

    mul-int/lit8 v3, v0, 0x2

    div-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    iget v2, p0, Lmiui/v5/widget/AbsTranslationController;->mMaxAnchorDuration:I

    goto :goto_0
.end method

.method protected abstract getInertiaPosition(Landroid/view/View;IIIII)I
.end method

.method public getLastAnchorPosition()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/v5/widget/AbsTranslationController;->mLastAnchorPostion:I

    return v0
.end method

.method protected abstract getValidMovePosition(Landroid/view/View;IIII)I
.end method

.method public isAnimationPlaying()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/AbsTranslationController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMovable(Landroid/view/View;IIII)Z
    .locals 6
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "startX"
    .parameter "startY"

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/AbsTranslationController;->mListener:Lmiui/v5/widget/MotionDetectStrategy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/AbsTranslationController;->mListener:Lmiui/v5/widget/MotionDetectStrategy;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lmiui/v5/widget/MotionDetectStrategy;->isMovable(Landroid/view/View;IIII)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public moveImmediately(Landroid/view/View;II)Z
    .locals 1
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, anim:Z
    iget-object v2, p0, Lmiui/v5/widget/AbsTranslationController;->mAnimListener:Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/v5/widget/AbsTranslationController;->mAnimListener:Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;

    invoke-virtual {v2}, Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;->needSpringBack()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/v5/widget/AbsTranslationController;->mAnimListener:Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;

    invoke-virtual {v2}, Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;->getView()Landroid/view/View;

    move-result-object v1

    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lmiui/v5/widget/AbsTranslationController;->springBack(Landroid/view/View;)Z

    move-result v0

    .end local v1           #v:Landroid/view/View;
    :cond_0
    if-nez v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lmiui/v5/widget/AbsTranslationController;->onTranslateStateChanged(I)V

    iput-object v3, p0, Lmiui/v5/widget/AbsTranslationController;->mAnimator:Landroid/animation/ValueAnimator;

    iput-object v3, p0, Lmiui/v5/widget/AbsTranslationController;->mAnimListener:Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    return-void
.end method

.method public onMove(Landroid/view/View;IIII)Z
    .locals 3
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "startX"
    .parameter "startY"

    .prologue
    invoke-virtual/range {p0 .. p5}, Lmiui/v5/widget/AbsTranslationController;->isMovable(Landroid/view/View;IIII)Z

    move-result v0

    .local v0, movale:Z
    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p5}, Lmiui/v5/widget/AbsTranslationController;->getValidMovePosition(Landroid/view/View;IIII)I

    move-result v1

    .local v1, p:I
    int-to-float v2, v1

    invoke-virtual {p0, p1, v2}, Lmiui/v5/widget/AbsTranslationController;->onTranslate(Landroid/view/View;F)V

    .end local v1           #p:I
    :cond_0
    return v0
.end method

.method public onMoveCancel(Landroid/view/View;II)V
    .locals 7
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lmiui/v5/widget/AbsTranslationController;->fling(Landroid/view/View;IIIII)V

    return-void
.end method

.method public onMoveFinish(Landroid/view/View;IIIILandroid/view/VelocityTracker;)V
    .locals 18
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "startX"
    .parameter "startY"
    .parameter "tracker"

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lmiui/v5/widget/AbsTranslationController;->computVelocity(Landroid/view/VelocityTracker;)I

    move-result v8

    .local v8, velocity:I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Lmiui/v5/widget/AbsTranslationController;->getAnchorPostion(Landroid/view/View;IIIII)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lmiui/v5/widget/AbsTranslationController;->mLastAnchorPostion:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/v5/widget/AbsTranslationController;->mMinimumVelocity:I

    if-le v2, v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v0, v2

    move/from16 v17, v0

    .local v17, vy:I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Lmiui/v5/widget/AbsTranslationController;->getInertiaPosition(Landroid/view/View;IIIII)I

    move-result v16

    .local v16, dst:I
    sub-int v7, v16, v17

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, v17

    invoke-direct/range {v4 .. v10}, Lmiui/v5/widget/AbsTranslationController;->fling(Landroid/view/View;IIIZZ)V

    .end local v16           #dst:I
    .end local v17           #vy:I
    :goto_0
    return-void

    :cond_0
    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    invoke-virtual/range {v9 .. v15}, Lmiui/v5/widget/AbsTranslationController;->fling(Landroid/view/View;IIIII)V

    goto :goto_0
.end method

.method public onMoveStart(Landroid/view/View;II)V
    .locals 2
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    const v0, 0x7fffffff

    iput v0, p0, Lmiui/v5/widget/AbsTranslationController;->mLastAnchorPostion:I

    iget-object v0, p0, Lmiui/v5/widget/AbsTranslationController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lmiui/v5/widget/AbsTranslationController;->mAnimListener:Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;

    iget-object v0, p0, Lmiui/v5/widget/AbsTranslationController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lmiui/v5/widget/AbsTranslationController;->mAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/v5/widget/AbsTranslationController;->onTranslateStateChanged(I)V

    return-void
.end method

.method protected onTranslate(Landroid/view/View;F)V
    .locals 1
    .parameter "v"
    .parameter "t"

    .prologue
    invoke-virtual {p0, p1, p2}, Lmiui/v5/widget/AbsTranslationController;->translate(Landroid/view/View;F)V

    iget-object v0, p0, Lmiui/v5/widget/AbsTranslationController;->mTranslateListener:Lmiui/v5/widget/AbsTranslationController$OnTranslateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/AbsTranslationController;->mTranslateListener:Lmiui/v5/widget/AbsTranslationController$OnTranslateListener;

    invoke-interface {v0, p1, p2}, Lmiui/v5/widget/AbsTranslationController$OnTranslateListener;->onTranslate(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method protected onTranslateStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/AbsTranslationController;->mTranslateListener:Lmiui/v5/widget/AbsTranslationController$OnTranslateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/AbsTranslationController;->mTranslateListener:Lmiui/v5/widget/AbsTranslationController$OnTranslateListener;

    invoke-interface {v0, p1}, Lmiui/v5/widget/AbsTranslationController$OnTranslateListener;->onTranslateStateChanged(I)V

    :cond_0
    return-void
.end method

.method public setTranslateListener(Lmiui/v5/widget/AbsTranslationController$OnTranslateListener;)V
    .locals 0
    .parameter "l"

    .prologue
    iput-object p1, p0, Lmiui/v5/widget/AbsTranslationController;->mTranslateListener:Lmiui/v5/widget/AbsTranslationController$OnTranslateListener;

    return-void
.end method

.method protected abstract translate(Landroid/view/View;F)V
.end method
