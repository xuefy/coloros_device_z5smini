.class public Landroid/motion/PickAnswerDetector;
.super Landroid/motion/MotionDetector;
.source "PickAnswerDetector.java"

# interfaces
.implements Landroid/motion/ProximityCallback;


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_GRAVITY:F = 9.80665f

.field private static final SAMPLE_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "PickAnswerDetector"

.field private static final THRESOLD_ACC_MAX:F = 11.30665f

.field private static final THRESOLD_ACC_MIN:F = 8.80665f


# instance fields
.field private accSensorEvents:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/hardware/SensorEvent;",
            ">;"
        }
    .end annotation
.end field

.field private flagNear:Z

.field private isStartRecord:Z

.field private last_value_acc:F

.field private last_value_accY:F

.field private mProxy:Landroid/motion/ProximityProxy;

.field private value_acc_max:F

.field private value_acc_min:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/motion/MotionDetector;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Landroid/motion/MotionEvent;

    const/4 v1, 0x3

    const-string/jumbo v2, "motion_pickanswer"

    invoke-direct {v0, v1, v2}, Landroid/motion/MotionEvent;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    .line 32
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Landroid/motion/PickAnswerDetector;->accSensorEvents:Ljava/util/Vector;

    .line 33
    new-instance v0, Landroid/motion/ProximityProxy;

    invoke-direct {v0, p1, p0}, Landroid/motion/ProximityProxy;-><init>(Landroid/content/Context;Landroid/motion/ProximityCallback;)V

    iput-object v0, p0, Landroid/motion/PickAnswerDetector;->mProxy:Landroid/motion/ProximityProxy;

    .line 34
    return-void
.end method

.method private checkAccInZAxis()Z
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 119
    const/4 v4, 0x0

    .line 120
    .local v4, flag:Z
    const/4 v6, 0x0

    .line 121
    .local v6, num:I
    iget-object v8, p0, Landroid/motion/PickAnswerDetector;->accSensorEvents:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v7

    .line 122
    .local v7, size:I
    if-lez v7, :cond_1

    .line 123
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v7, :cond_1

    .line 124
    iget-object v8, p0, Landroid/motion/PickAnswerDetector;->accSensorEvents:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorEvent;

    .line 125
    .local v3, event:Landroid/hardware/SensorEvent;
    iget-object v8, v3, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v8, v12

    .line 126
    .local v1, acc_y:F
    iget-object v8, v3, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x2

    aget v2, v8, v9

    .line 127
    .local v2, acc_z:F
    iget-object v8, v3, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x0

    aget v0, v8, v9

    .line 132
    .local v0, acc_x:F
    const/high16 v8, 0x4118

    cmpg-float v8, v1, v8

    if-gez v8, :cond_0

    const/4 v8, 0x0

    cmpl-float v8, v1, v8

    if-lez v8, :cond_0

    const/high16 v8, -0x3ef0

    cmpl-float v8, v2, v8

    if-lez v8, :cond_0

    const v8, 0x409ccccd

    cmpg-float v8, v2, v8

    if-gez v8, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide/high16 v10, 0x4008

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide/high16 v10, 0x4023

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    .line 134
    add-int/lit8 v6, v6, 0x1

    .line 123
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 138
    .end local v0           #acc_x:F
    .end local v1           #acc_y:F
    .end local v2           #acc_z:F
    .end local v3           #event:Landroid/hardware/SensorEvent;
    .end local v5           #i:I
    :cond_1
    if-le v6, v12, :cond_2

    .line 139
    const/4 v4, 0x1

    .line 144
    :cond_2
    return v4
.end method

.method private checkMoveUp()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, flag:Z
    iget v1, p0, Landroid/motion/PickAnswerDetector;->value_acc_max:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/motion/PickAnswerDetector;->value_acc_min:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 149
    const/4 v0, 0x1

    .line 151
    :cond_0
    return v0
.end method

.method private getAccelerometer(Landroid/hardware/SensorEvent;)F
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 156
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 159
    .local v0, accSquare:F
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method private notifyInfo()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/motion/MotionEvent;->setState(I)V

    .line 93
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-virtual {p0, v0}, Landroid/motion/PickAnswerDetector;->notifyListeners(Landroid/motion/MotionEvent;)V

    .line 94
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/motion/MotionEvent;->setState(I)V

    .line 95
    return-void
.end method


# virtual methods
.method protected clearCache()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    iput-boolean v2, p0, Landroid/motion/PickAnswerDetector;->flagNear:Z

    .line 100
    iget-object v0, p0, Landroid/motion/PickAnswerDetector;->accSensorEvents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 101
    iput v1, p0, Landroid/motion/PickAnswerDetector;->value_acc_max:F

    .line 102
    iput v1, p0, Landroid/motion/PickAnswerDetector;->value_acc_min:F

    .line 103
    iput v1, p0, Landroid/motion/PickAnswerDetector;->last_value_acc:F

    .line 104
    iput-boolean v2, p0, Landroid/motion/PickAnswerDetector;->isStartRecord:Z

    .line 105
    iput v1, p0, Landroid/motion/PickAnswerDetector;->last_value_accY:F

    .line 106
    return-void
.end method

.method public doProximitySensorChange()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/motion/PickAnswerDetector;->mProxy:Landroid/motion/ProximityProxy;

    invoke-virtual {v0}, Landroid/motion/ProximityProxy;->getPositive()Z

    move-result v0

    iput-boolean v0, p0, Landroid/motion/PickAnswerDetector;->flagNear:Z

    .line 116
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string/jumbo v0, "motion_pickanswer"

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
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    const-string/jumbo v1, "motion_pickanswer"

    invoke-virtual {p0, v1}, Landroid/motion/PickAnswerDetector;->checkSelfPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Landroid/motion/PickAnswerDetector;->mProxy:Landroid/motion/ProximityProxy;

    invoke-virtual {v1}, Landroid/motion/ProximityProxy;->getProximitySensor()Landroid/hardware/Sensor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 48
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x5

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 52
    iget-boolean v2, p0, Landroid/motion/PickAnswerDetector;->flagNear:Z

    if-nez v2, :cond_3

    .line 53
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 54
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v5

    .line 55
    .local v1, distance:F
    iget-object v2, p0, Landroid/motion/PickAnswerDetector;->mProxy:Landroid/motion/ProximityProxy;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/motion/ProximityProxy;->handleProximitySensorEvent(FJ)V

    .line 57
    .end local v1           #distance:F
    :cond_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 58
    invoke-direct {p0, p1}, Landroid/motion/PickAnswerDetector;->getAccelerometer(Landroid/hardware/SensorEvent;)F

    move-result v0

    .line 59
    .local v0, acc:F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4020

    cmpg-double v2, v2, v4

    if-gez v2, :cond_8

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    cmpl-float v2, v2, v7

    if-lez v2, :cond_8

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    iget v3, p0, Landroid/motion/PickAnswerDetector;->last_value_accY:F

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v7

    if-lez v2, :cond_8

    const v2, 0x4134e80a

    cmpl-float v2, v0, v2

    if-lez v2, :cond_8

    .line 62
    iget v2, p0, Landroid/motion/PickAnswerDetector;->value_acc_max:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_7

    move v2, v0

    :goto_0
    iput v2, p0, Landroid/motion/PickAnswerDetector;->value_acc_max:F

    .line 63
    iget-boolean v2, p0, Landroid/motion/PickAnswerDetector;->isStartRecord:Z

    if-nez v2, :cond_1

    .line 64
    iput-boolean v6, p0, Landroid/motion/PickAnswerDetector;->isStartRecord:Z

    .line 69
    :cond_1
    :goto_1
    iget-boolean v2, p0, Landroid/motion/PickAnswerDetector;->isStartRecord:Z

    if-eqz v2, :cond_2

    .line 70
    iput v0, p0, Landroid/motion/PickAnswerDetector;->last_value_acc:F

    .line 72
    :cond_2
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    iput v2, p0, Landroid/motion/PickAnswerDetector;->last_value_accY:F

    .line 76
    .end local v0           #acc:F
    :cond_3
    iget-boolean v2, p0, Landroid/motion/PickAnswerDetector;->flagNear:Z

    if-eqz v2, :cond_6

    .line 77
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-ne v2, v6, :cond_4

    .line 78
    iget-object v2, p0, Landroid/motion/PickAnswerDetector;->accSensorEvents:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v2, v8, :cond_4

    .line 79
    iget-object v2, p0, Landroid/motion/PickAnswerDetector;->accSensorEvents:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_4
    iget-object v2, p0, Landroid/motion/PickAnswerDetector;->accSensorEvents:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ne v2, v8, :cond_6

    .line 83
    invoke-direct {p0}, Landroid/motion/PickAnswerDetector;->checkMoveUp()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Landroid/motion/PickAnswerDetector;->checkAccInZAxis()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 84
    invoke-direct {p0}, Landroid/motion/PickAnswerDetector;->notifyInfo()V

    .line 86
    :cond_5
    invoke-virtual {p0}, Landroid/motion/PickAnswerDetector;->clearCache()V

    .line 89
    :cond_6
    return-void

    .line 62
    .restart local v0       #acc:F
    :cond_7
    iget v2, p0, Landroid/motion/PickAnswerDetector;->value_acc_max:F

    goto :goto_0

    .line 66
    :cond_8
    iget-boolean v2, p0, Landroid/motion/PickAnswerDetector;->isStartRecord:Z

    if-eqz v2, :cond_1

    const v2, 0x410ce80a

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    iget v2, p0, Landroid/motion/PickAnswerDetector;->last_value_acc:F

    sub-float v2, v0, v2

    cmpg-float v2, v2, v7

    if-gez v2, :cond_1

    .line 67
    iput v0, p0, Landroid/motion/PickAnswerDetector;->value_acc_min:F

    goto :goto_1
.end method
