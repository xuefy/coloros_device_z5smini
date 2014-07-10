.class public Landroid/motion/ShakeDetector;
.super Landroid/motion/MotionDetector;
.source "ShakeDetector.java"


# static fields
.field private static final UPDATE_INTERVAL_TIME:I = 0x64


# instance fields
.field private lastUpdateTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/motion/MotionDetector;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Landroid/motion/MotionEvent;

    const/4 v1, 0x1

    const-string/jumbo v2, "motion_shake"

    invoke-direct {v0, v1, v2}, Landroid/motion/MotionEvent;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    .line 25
    return-void
.end method


# virtual methods
.method protected clearCache()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string/jumbo v0, "motion_shake"

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
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v0, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    const-string/jumbo v1, "motion_shake"

    invoke-virtual {p0, v1}, Landroid/motion/ShakeDetector;->checkSelfPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 38
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/high16 v9, 0x4188

    .line 60
    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    if-ne v5, v10, :cond_1

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 63
    .local v0, currentUpdateTime:J
    iget-wide v5, p0, Landroid/motion/ShakeDetector;->lastUpdateTime:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x64

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 65
    iput-wide v0, p0, Landroid/motion/ShakeDetector;->lastUpdateTime:J

    .line 67
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v5, v11

    .line 68
    .local v2, x:F
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v5, v10

    .line 69
    .local v3, y:F
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v4, v5, v6

    .line 83
    .local v4, z:F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v9

    if-gtz v5, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v9

    if-gtz v5, :cond_0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v9

    if-lez v5, :cond_1

    .line 84
    :cond_0
    iget-object v5, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/motion/MotionEvent;->setTimestamp(J)V

    .line 85
    iget-object v5, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-virtual {v5, v10}, Landroid/motion/MotionEvent;->setState(I)V

    .line 91
    .end local v0           #currentUpdateTime:J
    .end local v2           #x:F
    .end local v3           #y:F
    .end local v4           #z:F
    :cond_1
    iget-object v5, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-virtual {v5}, Landroid/motion/MotionEvent;->getState()I

    move-result v5

    if-eqz v5, :cond_2

    .line 92
    iget-object v5, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-virtual {p0, v5}, Landroid/motion/ShakeDetector;->notifyListeners(Landroid/motion/MotionEvent;)V

    .line 93
    iget-object v5, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-virtual {v5, v11}, Landroid/motion/MotionEvent;->setState(I)V

    .line 95
    :cond_2
    return-void
.end method
