.class public Lmiui/view/inputmethod/CustomizedImeForMiui;
.super Ljava/lang/Object;
.source "CustomizedImeForMiui.java"


# static fields
.field private static final CUSTOMIZED_SOGOU_IME_FOR_MIUI_ID:Ljava/lang/String; = "com.sogou.inputmethod.mi/.SogouIME"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultImeIsCustomizedForMiui(Landroid/content/ContentResolver;)Z
    .locals 2
    .parameter "resolver"

    .prologue
    const-string v1, "default_input_method"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, defaultImeId:Ljava/lang/String;
    const-string v1, "com.sogou.inputmethod.mi/.SogouIME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
