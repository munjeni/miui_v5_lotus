.class public Lmiui/v5/app/SearchMode$Token;
.super Ljava/lang/Object;
.source "SearchMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/app/SearchMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# instance fields
.field mActionMode:Landroid/view/ActionMode;

.field public final mAlphaView:Landroid/view/View;

.field final mAnimView:Landroid/view/View;

.field mAnimationCount:I

.field public final mBackView:Landroid/view/View;

.field public final mEditText:Landroid/widget/EditText;

.field public final mResultContainer:Landroid/widget/FrameLayout;

.field public final mSearchView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/widget/EditText;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 0
    .parameter "searchView"
    .parameter "editView"
    .parameter "backView"
    .parameter "alphaView"
    .parameter "animView"
    .parameter "result"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/v5/app/SearchMode$Token;->mSearchView:Landroid/view/View;

    iput-object p6, p0, Lmiui/v5/app/SearchMode$Token;->mResultContainer:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lmiui/v5/app/SearchMode$Token;->mEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lmiui/v5/app/SearchMode$Token;->mBackView:Landroid/view/View;

    iput-object p4, p0, Lmiui/v5/app/SearchMode$Token;->mAlphaView:Landroid/view/View;

    iput-object p5, p0, Lmiui/v5/app/SearchMode$Token;->mAnimView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/app/SearchMode$Token;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/SearchMode$Token;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public isAnimationPlaying()Z
    .locals 1

    .prologue
    iget v0, p0, Lmiui/v5/app/SearchMode$Token;->mAnimationCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    iput-object p1, p0, Lmiui/v5/app/SearchMode$Token;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method public setResultVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiui/v5/app/SearchMode$Token;->mResultContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lmiui/v5/app/SearchMode$Token;->mAlphaView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmiui/v5/app/SearchMode$Token;->mResultContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lmiui/v5/app/SearchMode$Token;->mAlphaView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
