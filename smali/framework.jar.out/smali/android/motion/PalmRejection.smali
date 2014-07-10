.class public Landroid/motion/PalmRejection;
.super Landroid/motion/MotionDetector;
.source "PalmRejection.java"

# interfaces
.implements Landroid/motion/ProximityCallback;


# instance fields
.field private mProxy:Landroid/motion/ProximityProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/motion/MotionDetector;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/motion/ProximityProxy;

    invoke-direct {v0, p1, p0}, Landroid/motion/ProximityProxy;-><init>(Landroid/content/Context;Landroid/motion/ProximityCallback;)V

    iput-object v0, p0, Landroid/motion/PalmRejection;->mProxy:Landroid/motion/ProximityProxy;

    .line 19
    new-instance v0, Landroid/motion/MotionEvent;

    const/4 v1, 0x7

    const-string/jumbo v2, "motion_palmRejection"

    invoke-direct {v0, v1, v2}, Landroid/motion/MotionEvent;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    .line 20
    return-void
.end method


# virtual methods
.method protected clearCache()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public doProximitySensorChange()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Landroid/motion/PalmRejection;->mProxy:Landroid/motion/ProximityProxy;

    invoke-virtual {v0}, Landroid/motion/ProximityProxy;->getPositive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/motion/MotionEvent;->setState(I)V

    .line 38
    :goto_0
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-virtual {p0, v0}, Landroid/motion/PalmRejection;->notifyListeners(Landroid/motion/MotionEvent;)V

    .line 39
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/motion/MotionEvent;->setState(I)V

    goto :goto_0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "motion_palmRejection"

    return-object v0
.end method

.method protected getSensors(Landroid/hardware/SensorManager;)Ljava/util/List;
    .locals 2
    .parameter "sensorManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/SensorManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v0, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    const-string/jumbo v1, "motion_palmRejection"

    invoke-virtual {p0, v1}, Landroid/motion/PalmRejection;->checkSelfPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Landroid/motion/PalmRejection;->mProxy:Landroid/motion/ProximityProxy;

    invoke-virtual {v1}, Landroid/motion/ProximityProxy;->getProximitySensor()Landroid/hardware/Sensor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_0
    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 44
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 48
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 49
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 50
    .local v0, distance:F
    iget-object v1, p0, Landroid/motion/PalmRejection;->mProxy:Landroid/motion/ProximityProxy;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/motion/ProximityProxy;->handleProximitySensorEvent(FJ)V

    .line 52
    .end local v0           #distance:F
    :cond_0
    return-void
.end method
