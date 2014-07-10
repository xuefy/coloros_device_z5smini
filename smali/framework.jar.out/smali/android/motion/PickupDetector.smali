.class public Landroid/motion/PickupDetector;
.super Landroid/motion/MotionDetector;
.source "PickupDetector.java"


# static fields
.field private static final STABLE_TIME:I = 0x6

.field private static final THRESHOLD:F = 4.0f


# instance fields
.field private bBigValueOcc:Z

.field private bNotify:Z

.field private bPickup:Z

.field private mCount:I

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1}, Landroid/motion/MotionDetector;-><init>(Landroid/content/Context;)V

    .line 13
    iput v1, p0, Landroid/motion/PickupDetector;->x:F

    .line 14
    iput v1, p0, Landroid/motion/PickupDetector;->y:F

    .line 15
    iput-boolean v0, p0, Landroid/motion/PickupDetector;->bPickup:Z

    .line 16
    iput-boolean v0, p0, Landroid/motion/PickupDetector;->bNotify:Z

    .line 19
    iput-boolean v0, p0, Landroid/motion/PickupDetector;->bBigValueOcc:Z

    .line 20
    iput v0, p0, Landroid/motion/PickupDetector;->mCount:I

    .line 24
    new-instance v0, Landroid/motion/MotionEvent;

    const/4 v1, 0x2

    const-string/jumbo v2, "motion_pickup"

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

    .line 68
    iput-boolean v0, p0, Landroid/motion/PickupDetector;->bPickup:Z

    .line 69
    iput v1, p0, Landroid/motion/PickupDetector;->x:F

    .line 70
    iput v1, p0, Landroid/motion/PickupDetector;->y:F

    .line 71
    iput-boolean v0, p0, Landroid/motion/PickupDetector;->bBigValueOcc:Z

    .line 72
    iput v0, p0, Landroid/motion/PickupDetector;->mCount:I

    .line 73
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string/jumbo v0, "motion_pickup"

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
    .line 31
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/motion/PickupDetector;->bNotify:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v0, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    const-string/jumbo v1, "motion_pickup"

    invoke-virtual {p0, v1}, Landroid/motion/PickupDetector;->checkSelfPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 42
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x4080

    .line 46
    iget-boolean v0, p0, Landroid/motion/PickupDetector;->bNotify:Z

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Landroid/motion/PickupDetector;->x:F

    .line 48
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    iput v0, p0, Landroid/motion/PickupDetector;->y:F

    .line 49
    iget v0, p0, Landroid/motion/PickupDetector;->mCount:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_3

    iget-boolean v0, p0, Landroid/motion/PickupDetector;->bBigValueOcc:Z

    if-nez v0, :cond_3

    .line 50
    iget v0, p0, Landroid/motion/PickupDetector;->x:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    iget v0, p0, Landroid/motion/PickupDetector;->y:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    iget v0, p0, Landroid/motion/PickupDetector;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/motion/PickupDetector;->mCount:I

    .line 58
    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/motion/PickupDetector;->bPickup:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/motion/PickupDetector;->bNotify:Z

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/motion/MotionEvent;->setTimestamp(J)V

    .line 60
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-virtual {p0, v0}, Landroid/motion/PickupDetector;->notifyListeners(Landroid/motion/MotionEvent;)V

    .line 61
    iput-boolean v3, p0, Landroid/motion/PickupDetector;->bNotify:Z

    .line 62
    invoke-virtual {p0}, Landroid/motion/PickupDetector;->clearCache()V

    .line 64
    :cond_1
    return-void

    .line 51
    :cond_2
    iput-boolean v3, p0, Landroid/motion/PickupDetector;->bBigValueOcc:Z

    goto :goto_0

    .line 53
    :cond_3
    iget-boolean v0, p0, Landroid/motion/PickupDetector;->bBigValueOcc:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/motion/PickupDetector;->x:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_4

    iget v0, p0, Landroid/motion/PickupDetector;->y:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 54
    :cond_4
    iput-boolean v3, p0, Landroid/motion/PickupDetector;->bPickup:Z

    goto :goto_0
.end method
