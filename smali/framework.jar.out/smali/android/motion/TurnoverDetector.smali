.class public Landroid/motion/TurnoverDetector;
.super Landroid/motion/MotionDetector;
.source "TurnoverDetector.java"


# static fields
.field private static final THRSHOLD_END:F = 18.0f

.field private static final THRSHOLD_MID:F = 5.0f

.field private static final THRSHOLD_START:F = 9.0f


# instance fields
.field private A:F

.field private B:F

.field private flagA:Z

.field private flagB:Z

.field private flagC:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/motion/MotionDetector;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Landroid/motion/MotionEvent;

    const/4 v1, 0x0

    const-string/jumbo v2, "motion_turnover"

    invoke-direct {v0, v1, v2}, Landroid/motion/MotionEvent;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    .line 25
    return-void
.end method


# virtual methods
.method protected clearCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 100
    iput v1, p0, Landroid/motion/TurnoverDetector;->A:F

    .line 101
    iput v1, p0, Landroid/motion/TurnoverDetector;->B:F

    .line 102
    iput-boolean v0, p0, Landroid/motion/TurnoverDetector;->flagA:Z

    .line 103
    iput-boolean v0, p0, Landroid/motion/TurnoverDetector;->flagB:Z

    .line 104
    iput-boolean v0, p0, Landroid/motion/TurnoverDetector;->flagC:Z

    .line 105
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string/jumbo v0, "motion_turnover"

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
    const-string/jumbo v1, "motion_turnover"

    invoke-virtual {p0, v1}, Landroid/motion/TurnoverDetector;->checkSelfPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const/16 v1, 0x9

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
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 65
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 66
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4110

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 67
    iget-boolean v0, p0, Landroid/motion/TurnoverDetector;->flagA:Z

    if-nez v0, :cond_4

    .line 68
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iput v0, p0, Landroid/motion/TurnoverDetector;->A:F

    .line 69
    iput-boolean v3, p0, Landroid/motion/TurnoverDetector;->flagA:Z

    .line 76
    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/motion/TurnoverDetector;->flagA:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/motion/TurnoverDetector;->flagB:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40a0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 77
    iput-boolean v3, p0, Landroid/motion/TurnoverDetector;->flagC:Z

    .line 79
    :cond_1
    iget-boolean v0, p0, Landroid/motion/TurnoverDetector;->flagA:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/motion/TurnoverDetector;->flagB:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/motion/TurnoverDetector;->flagC:Z

    if-eqz v0, :cond_2

    .line 80
    iget v0, p0, Landroid/motion/TurnoverDetector;->A:F

    iget v1, p0, Landroid/motion/TurnoverDetector;->B:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4190

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 82
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/motion/MotionEvent;->setTimestamp(J)V

    .line 83
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/motion/MotionEvent;->setState(I)V

    .line 84
    invoke-virtual {p0}, Landroid/motion/TurnoverDetector;->clearCache()V

    .line 92
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-virtual {v0}, Landroid/motion/MotionEvent;->getState()I

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-virtual {p0, v0}, Landroid/motion/TurnoverDetector;->notifyListeners(Landroid/motion/MotionEvent;)V

    .line 94
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/motion/MotionEvent;->setState(I)V

    .line 96
    :cond_3
    return-void

    .line 70
    :cond_4
    iget-boolean v0, p0, Landroid/motion/TurnoverDetector;->flagA:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/motion/TurnoverDetector;->flagC:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/motion/TurnoverDetector;->A:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iput v0, p0, Landroid/motion/TurnoverDetector;->B:F

    .line 72
    iput-boolean v3, p0, Landroid/motion/TurnoverDetector;->flagB:Z

    goto :goto_0

    .line 85
    :cond_5
    iget v0, p0, Landroid/motion/TurnoverDetector;->A:F

    iget v1, p0, Landroid/motion/TurnoverDetector;->B:F

    sub-float/2addr v0, v1

    const/high16 v1, -0x3e70

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 86
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/motion/MotionEvent;->setTimestamp(J)V

    .line 87
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-virtual {v0, v3}, Landroid/motion/MotionEvent;->setState(I)V

    .line 88
    invoke-virtual {p0}, Landroid/motion/TurnoverDetector;->clearCache()V

    goto :goto_1
.end method
