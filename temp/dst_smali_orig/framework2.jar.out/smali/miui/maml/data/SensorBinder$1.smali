.class Lmiui/maml/data/SensorBinder$1;
.super Ljava/lang/Object;
.source "SensorBinder.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/data/SensorBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/data/SensorBinder;


# direct methods
.method constructor <init>(Lmiui/maml/data/SensorBinder;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lmiui/maml/data/SensorBinder$1;->this$0:Lmiui/maml/data/SensorBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v3, v1

    .local v0, data:F
    iget-object v3, p0, Lmiui/maml/data/SensorBinder$1;->this$0:Lmiui/maml/data/SensorBinder;

    #calls: Lmiui/maml/data/SensorBinder;->getVariable(I)Lmiui/maml/data/SensorBinder$Variable;
    invoke-static {v3, v1}, Lmiui/maml/data/SensorBinder;->access$000(Lmiui/maml/data/SensorBinder;I)Lmiui/maml/data/SensorBinder$Variable;

    move-result-object v2

    .local v2, var:Lmiui/maml/data/SensorBinder$Variable;
    if-eqz v2, :cond_0

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Lmiui/maml/data/SensorBinder$Variable;->setValue(D)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #data:F
    .end local v2           #var:Lmiui/maml/data/SensorBinder$Variable;
    :cond_1
    iget-object v3, p0, Lmiui/maml/data/SensorBinder$1;->this$0:Lmiui/maml/data/SensorBinder;

    invoke-virtual {v3}, Lmiui/maml/data/SensorBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/maml/ScreenContext;->requestUpdate()V

    return-void
.end method
