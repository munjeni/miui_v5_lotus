.class public Lmiui/v5/widget/NumberProgressView;
.super Landroid/widget/LinearLayout;
.source "NumberProgressView.java"


# static fields
.field private static final MAX_PROGRESS:I = 0x64


# instance fields
.field private mCurProgress:I

.field private mNumberProgress1:Landroid/widget/ImageView;

.field private mNumberProgress2:Landroid/widget/ImageView;

.field private mNumberProgress3:Landroid/widget/ImageView;

.field private mPercent:Landroid/widget/ImageView;

.field private mResNumber:[Landroid/graphics/drawable/Drawable;

.field private mResPercent:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/v5/widget/NumberProgressView;->mCurProgress:I

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lmiui/v5/widget/NumberProgressView;->mResNumber:[Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmiui/v5/widget/NumberProgressView;->mResPercent:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v1}, Lmiui/v5/widget/NumberProgressView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/v5/widget/NumberProgressView;->mCurProgress:I

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lmiui/v5/widget/NumberProgressView;->mResNumber:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/v5/widget/NumberProgressView;->mResPercent:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, p2}, Lmiui/v5/widget/NumberProgressView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/v5/widget/NumberProgressView;->mCurProgress:I

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lmiui/v5/widget/NumberProgressView;->mResNumber:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/v5/widget/NumberProgressView;->mResPercent:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, p2}, Lmiui/v5/widget/NumberProgressView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lmiui/v5/widget/NumberProgressView;->mResNumber:[Landroid/graphics/drawable/Drawable;

    array-length v6, v6

    if-ge v2, v6, :cond_0

    iget-object v6, p0, Lmiui/v5/widget/NumberProgressView;->mResNumber:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    aput-object v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    sget-object v6, Lmiui/R$styleable;->NumberProgressView:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .local v1, arrId:I
    if-eq v8, v1, :cond_1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    .local v5, t:Landroid/content/res/TypedArray;
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    iget-object v7, p0, Lmiui/v5/widget/NumberProgressView;->mResNumber:[Landroid/graphics/drawable/Drawable;

    array-length v7, v7

    if-ne v6, v7, :cond_1

    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lmiui/v5/widget/NumberProgressView;->mResNumber:[Landroid/graphics/drawable/Drawable;

    array-length v6, v6

    if-ge v2, v6, :cond_1

    iget-object v6, p0, Lmiui/v5/widget/NumberProgressView;->mResNumber:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v5           #t:Landroid/content/res/TypedArray;
    :cond_1
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lmiui/v5/widget/NumberProgressView;->mResPercent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #arrId:I
    :cond_2
    iget-object v6, p0, Lmiui/v5/widget/NumberProgressView;->mResPercent:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x60201e4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lmiui/v5/widget/NumberProgressView;->mResPercent:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v6, p0, Lmiui/v5/widget/NumberProgressView;->mResNumber:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v9

    if-nez v6, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .local v4, res:Landroid/content/res/Resources;
    const/4 v2, 0x0

    :goto_2
    iget-object v6, p0, Lmiui/v5/widget/NumberProgressView;->mResNumber:[Landroid/graphics/drawable/Drawable;

    array-length v6, v6

    if-ge v2, v6, :cond_4

    iget-object v6, p0, Lmiui/v5/widget/NumberProgressView;->mResNumber:[Landroid/graphics/drawable/Drawable;

    const v7, 0x60201da

    add-int/2addr v7, v2

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v4           #res:Landroid/content/res/Resources;
    :cond_4
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x6030034

    invoke-virtual {v3, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v6, 0x60b00a6

    invoke-virtual {p0, v6}, Lmiui/v5/widget/NumberProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lmiui/v5/widget/NumberProgressView;->mNumberProgress1:Landroid/widget/ImageView;

    const v6, 0x60b00a7

    invoke-virtual {p0, v6}, Lmiui/v5/widget/NumberProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lmiui/v5/widget/NumberProgressView;->mNumberProgress2:Landroid/widget/ImageView;

    const v6, 0x60b00a8

    invoke-virtual {p0, v6}, Lmiui/v5/widget/NumberProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lmiui/v5/widget/NumberProgressView;->mNumberProgress3:Landroid/widget/ImageView;

    const v6, 0x60b00a9

    invoke-virtual {p0, v6}, Lmiui/v5/widget/NumberProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lmiui/v5/widget/NumberProgressView;->mPercent:Landroid/widget/ImageView;

    iget-object v6, p0, Lmiui/v5/widget/NumberProgressView;->mResPercent:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lmiui/v5/widget/NumberProgressView;->mPercent:Landroid/widget/ImageView;

    iget-object v7, p0, Lmiui/v5/widget/NumberProgressView;->mResPercent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method private setNumber(ILandroid/widget/ImageView;)V
    .locals 1
    .parameter "number"
    .parameter "tv"

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/NumberProgressView;->mResNumber:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/NumberProgressView;->mResNumber:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public setProgress(I)Z
    .locals 5
    .parameter "progress"

    .prologue
    const/16 v4, 0x63

    const/16 v3, 0x8

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    const/16 v1, 0x64

    if-gt p1, v1, :cond_1

    iget v1, p0, Lmiui/v5/widget/NumberProgressView;->mCurProgress:I

    if-eq p1, v1, :cond_1

    iput p1, p0, Lmiui/v5/widget/NumberProgressView;->mCurProgress:I

    if-le p1, v4, :cond_2

    iget-object v1, p0, Lmiui/v5/widget/NumberProgressView;->mNumberProgress3:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    div-int/lit8 v1, p1, 0x64

    iget-object v2, p0, Lmiui/v5/widget/NumberProgressView;->mNumberProgress3:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lmiui/v5/widget/NumberProgressView;->setNumber(ILandroid/widget/ImageView;)V

    rem-int/lit8 p1, p1, 0x64

    :goto_0
    const/16 v1, 0x9

    if-gt p1, v1, :cond_0

    iget v1, p0, Lmiui/v5/widget/NumberProgressView;->mCurProgress:I

    if-le v1, v4, :cond_3

    :cond_0
    iget-object v1, p0, Lmiui/v5/widget/NumberProgressView;->mNumberProgress2:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    div-int/lit8 v0, p1, 0xa

    iget-object v1, p0, Lmiui/v5/widget/NumberProgressView;->mNumberProgress2:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lmiui/v5/widget/NumberProgressView;->setNumber(ILandroid/widget/ImageView;)V

    rem-int/lit8 p1, p1, 0xa

    :goto_1
    iget-object v0, p0, Lmiui/v5/widget/NumberProgressView;->mNumberProgress1:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lmiui/v5/widget/NumberProgressView;->setNumber(ILandroid/widget/ImageView;)V

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Lmiui/v5/widget/NumberProgressView;->mNumberProgress3:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmiui/v5/widget/NumberProgressView;->mNumberProgress2:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
