.class public Lmiui/preference/ButtonPreference;
.super Landroid/preference/Preference;
.source "ButtonPreference.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mText:Ljava/lang/String;

.field private mTextId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/preference/ButtonPreference;->mTextId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/preference/ButtonPreference;->mTextId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/preference/ButtonPreference;->mTextId:I

    return-void
.end method

.method static synthetic access$000(Lmiui/preference/ButtonPreference;)Landroid/preference/Preference$OnPreferenceClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/preference/ButtonPreference;->mListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method private updateUi()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/preference/ButtonPreference;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/preference/ButtonPreference;->mText:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/preference/ButtonPreference;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lmiui/preference/ButtonPreference;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lmiui/preference/ButtonPreference;->mTextId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/preference/ButtonPreference;->mButton:Landroid/widget/Button;

    iget v1, p0, Lmiui/preference/ButtonPreference;->mTextId:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lmiui/preference/ButtonPreference;->updateUi()V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    invoke-virtual {p0}, Lmiui/preference/ButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x6030073

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, rootView:Landroid/view/View;
    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lmiui/preference/ButtonPreference;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lmiui/preference/ButtonPreference;->mButton:Landroid/widget/Button;

    new-instance v2, Lmiui/preference/ButtonPreference$1;

    invoke-direct {v2, p0}, Lmiui/preference/ButtonPreference$1;-><init>(Lmiui/preference/ButtonPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    .locals 0
    .parameter "onPreferenceClickListener"

    .prologue
    iput-object p1, p0, Lmiui/preference/ButtonPreference;->mListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method public setText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/preference/ButtonPreference;->mText:Ljava/lang/String;

    iput p1, p0, Lmiui/preference/ButtonPreference;->mTextId:I

    invoke-direct {p0}, Lmiui/preference/ButtonPreference;->updateUi()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    iput-object p1, p0, Lmiui/preference/ButtonPreference;->mText:Ljava/lang/String;

    invoke-direct {p0}, Lmiui/preference/ButtonPreference;->updateUi()V

    return-void
.end method
