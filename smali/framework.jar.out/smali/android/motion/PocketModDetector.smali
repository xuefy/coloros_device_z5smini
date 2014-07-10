.class public Landroid/motion/PocketModDetector;
.super Landroid/motion/MotionDetector;
.source "PocketModDetector.java"

# interfaces
.implements Landroid/motion/ProximityCallback;


# static fields
.field private static final THRESOLD_TIME:I = 0x5


# instance fields
.field private mIsPocketMod:I

.field private mProxFlag:Z

.field private mProxy:Landroid/motion/ProximityProxy;

.field private mStartTime:J

.field private yz_sum:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/motion/MotionDetector;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Landroid/motion/PocketModDetector;->mIsPocketMod:I

    .line 26
    new-instance v0, Landroid/motion/ProximityProxy;

    invoke-direct {v0, p1, p0}, Landroid/motion/ProximityProxy;-><init>(Landroid/content/Context;Landroid/motion/ProximityCallback;)V

    iput-object v0, p0, Landroid/motion/PocketModDetector;->mProxy:Landroid/motion/ProximityProxy;

    .line 27
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/motion/PocketModDetector;->yz_sum:Ljava/util/Vector;

    .line 28
    new-instance v0, Landroid/motion/MotionEvent;

    const/4 v1, 0x5

    const-string/jumbo v2, "motion_pocketmod"

    invoke-direct {v0, v1, v2}, Landroid/motion/MotionEvent;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    .line 29
    return-void
.end method

.method private checkDisplayOrientation()Z
    .locals 3

    .prologue
    .line 121
    iget-object v1, p0, Landroid/motion/PocketModDetector;->yz_sum:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/motion/PocketModDetector;->yz_sum:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 124
    iget-object v1, p0, Landroid/motion/PocketModDetector;->yz_sum:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x4170

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 125
    const/4 v1, 0x0

    .line 129
    .end local v0           #i:I
    :goto_1
    return v1

    .line 122
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private checkTimes(I)Z
    .locals 4
    .parameter "time"

    .prologue
    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/motion/PocketModDetector;->mStartTime:J

    sub-long/2addr v0, v2

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 113
    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected clearCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 134
    iput v0, p0, Landroid/motion/PocketModDetector;->mIsPocketMod:I

    .line 135
    iput-boolean v0, p0, Landroid/motion/PocketModDetector;->mProxFlag:Z

    .line 136
    iget-object v0, p0, Landroid/motion/PocketModDetector;->yz_sum:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 137
    return-void
.end method

.method public doProximitySensorChange()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 46
    iget v0, p0, Landroid/motion/PocketModDetector;->mIsPocketMod:I

    if-ne v0, v2, :cond_1

    .line 47
    iget-boolean v0, p0, Landroid/motion/PocketModDetector;->mProxFlag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/motion/PocketModDetector;->mProxy:Landroid/motion/ProximityProxy;

    invoke-virtual {v0}, Landroid/motion/ProximityProxy;->getPositive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Landroid/motion/PocketModDetector;->mIsPocketMod:I

    .line 49
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/motion/MotionEvent;->setState(I)V

    .line 50
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/motion/MotionEvent;->setTimestamp(J)V

    .line 51
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-virtual {p0, v0}, Landroid/motion/PocketModDetector;->notifyListeners(Landroid/motion/MotionEvent;)V

    .line 52
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/motion/MotionEvent;->setState(I)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Landroid/motion/PocketModDetector;->mProxy:Landroid/motion/ProximityProxy;

    invoke-virtual {v0}, Landroid/motion/ProximityProxy;->getPositive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/motion/PocketModDetector;->mProxFlag:Z

    if-nez v0, :cond_2

    .line 56
    iput-boolean v2, p0, Landroid/motion/PocketModDetector;->mProxFlag:Z

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/motion/PocketModDetector;->mStartTime:J

    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Landroid/motion/PocketModDetector;->mProxy:Landroid/motion/ProximityProxy;

    invoke-virtual {v0}, Landroid/motion/ProximityProxy;->getPositive()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/motion/PocketModDetector;->mProxFlag:Z

    if-nez v0, :cond_3

    .line 60
    iput-boolean v2, p0, Landroid/motion/PocketModDetector;->mProxFlag:Z

    .line 61
    iput v1, p0, Landroid/motion/PocketModDetector;->mIsPocketMod:I

    goto :goto_0

    .line 64
    :cond_3
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/motion/PocketModDetector;->checkTimes(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/motion/PocketModDetector;->mProxy:Landroid/motion/ProximityProxy;

    invoke-virtual {v0}, Landroid/motion/ProximityProxy;->getPositive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iput v1, p0, Landroid/motion/PocketModDetector;->mIsPocketMod:I

    goto :goto_0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const-string/jumbo v0, "motion_pocketmod"

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
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v0, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    const-string/jumbo v1, "motion_pocketmod"

    invoke-virtual {p0, v1}, Landroid/motion/PocketModDetector;->checkSelfPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Landroid/motion/PocketModDetector;->mProxy:Landroid/motion/ProximityProxy;

    invoke-virtual {v1}, Landroid/motion/ProximityProxy;->getProximitySensor()Landroid/hardware/Sensor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 73
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 78
    iget v3, p0, Landroid/motion/PocketModDetector;->mIsPocketMod:I

    if-eq v3, v6, :cond_0

    iget v3, p0, Landroid/motion/PocketModDetector;->mIsPocketMod:I

    if-ne v3, v8, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 82
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v3, v7

    .line 83
    .local v0, distance:F
    iget-object v3, p0, Landroid/motion/PocketModDetector;->mProxy:Landroid/motion/ProximityProxy;

    invoke-virtual {v3, v0}, Landroid/motion/ProximityProxy;->handleProximitySensorEvent(F)V

    goto :goto_0

    .line 84
    .end local v0           #distance:F
    :cond_2
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 85
    iget-boolean v3, p0, Landroid/motion/PocketModDetector;->mProxFlag:Z

    if-eqz v3, :cond_0

    .line 86
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Landroid/motion/PocketModDetector;->checkTimes(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 87
    invoke-direct {p0}, Landroid/motion/PocketModDetector;->checkDisplayOrientation()Z

    move-result v3

    if-nez v3, :cond_3

    .line 88
    iget v3, p0, Landroid/motion/PocketModDetector;->mIsPocketMod:I

    if-eq v3, v5, :cond_0

    .line 89
    iput v5, p0, Landroid/motion/PocketModDetector;->mIsPocketMod:I

    .line 90
    iget-object v3, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-virtual {v3, v5}, Landroid/motion/MotionEvent;->setState(I)V

    .line 91
    iget-object v3, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/motion/MotionEvent;->setTimestamp(J)V

    .line 92
    iget-object v3, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-virtual {p0, v3}, Landroid/motion/PocketModDetector;->notifyListeners(Landroid/motion/MotionEvent;)V

    .line 93
    iget-object v3, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-virtual {v3, v7}, Landroid/motion/MotionEvent;->setState(I)V

    goto :goto_0

    .line 96
    :cond_3
    iput v6, p0, Landroid/motion/PocketModDetector;->mIsPocketMod:I

    goto :goto_0

    .line 99
    :cond_4
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 100
    .local v2, y:F
    const/high16 v3, 0x42b4

    cmpl-float v3, v2, v3

    if-lez v3, :cond_5

    const/high16 v3, 0x4334

    sub-float v2, v3, v2

    .end local v2           #y:F
    :cond_5
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float v1, v2, v3

    .line 101
    .local v1, sum:F
    iget-object v3, p0, Landroid/motion/PocketModDetector;->yz_sum:Ljava/util/Vector;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
