.class Lmiui/maml/elements/MusicControlScreenElement$3;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/MusicControlScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$900(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$3;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/MusicControlScreenElement;->updateSpectrumVisualizer()V

    return-void
.end method
