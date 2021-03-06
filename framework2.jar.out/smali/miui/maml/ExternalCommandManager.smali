.class public Lmiui/maml/ExternalCommandManager;
.super Ljava/lang/Object;
.source "ExternalCommandManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ExternalCommandManager"

.field public static final TAG_NAME:Ljava/lang/String; = "ExternalCommands"


# instance fields
.field private mTriggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/CommandTrigger;",
            ">;"
        }
    .end annotation
.end field


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
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    .line 30
    if-eqz p1, :cond_0

    .line 31
    invoke-direct {p0, p1, p2}, Lmiui/maml/ExternalCommandManager;->load(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 32
    :cond_0
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 5
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 69
    const-string v3, "ExternalCommandManager"

    const-string v4, "node is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v3, Lmiui/maml/ScreenElementLoadException;

    const-string v4, "node is null"

    invoke-direct {v3, v4}, Lmiui/maml/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 74
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 75
    .local v0, children:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 76
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 77
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 78
    .local v2, item:Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Trigger"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 75
    .end local v2           #item:Lorg/w3c/dom/Element;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .restart local v2       #item:Lorg/w3c/dom/Element;
    :cond_2
    iget-object v3, p0, Lmiui/maml/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    new-instance v4, Lmiui/maml/CommandTrigger;

    invoke-direct {v4, v2, p2}, Lmiui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    .end local v2           #item:Lorg/w3c/dom/Element;
    :cond_3
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 50
    iget-object v2, p0, Lmiui/maml/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/CommandTrigger;

    .line 51
    .local v1, t:Lmiui/maml/CommandTrigger;
    invoke-virtual {v1}, Lmiui/maml/CommandTrigger;->finish()V

    goto :goto_0

    .line 53
    .end local v1           #t:Lmiui/maml/CommandTrigger;
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 44
    iget-object v2, p0, Lmiui/maml/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/CommandTrigger;

    .line 45
    .local v1, t:Lmiui/maml/CommandTrigger;
    invoke-virtual {v1}, Lmiui/maml/CommandTrigger;->init()V

    goto :goto_0

    .line 47
    .end local v1           #t:Lmiui/maml/CommandTrigger;
    :cond_0
    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 3
    .parameter "command"

    .prologue
    .line 35
    iget-object v2, p0, Lmiui/maml/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/CommandTrigger;

    .line 36
    .local v1, t:Lmiui/maml/CommandTrigger;
    invoke-virtual {v1}, Lmiui/maml/CommandTrigger;->getActionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {v1}, Lmiui/maml/CommandTrigger;->perform()V

    .line 41
    .end local v1           #t:Lmiui/maml/CommandTrigger;
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 56
    iget-object v2, p0, Lmiui/maml/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/CommandTrigger;

    .line 57
    .local v1, t:Lmiui/maml/CommandTrigger;
    invoke-virtual {v1}, Lmiui/maml/CommandTrigger;->pause()V

    goto :goto_0

    .line 59
    .end local v1           #t:Lmiui/maml/CommandTrigger;
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 62
    iget-object v2, p0, Lmiui/maml/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/CommandTrigger;

    .line 63
    .local v1, t:Lmiui/maml/CommandTrigger;
    invoke-virtual {v1}, Lmiui/maml/CommandTrigger;->resume()V

    goto :goto_0

    .line 65
    .end local v1           #t:Lmiui/maml/CommandTrigger;
    :cond_0
    return-void
.end method
