.class public Landroid/motion/LeanScanDetector;
.super Landroid/motion/MotionDetector;
.source "LeanScanDetector.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/motion/MotionDetector;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Landroid/motion/MotionEvent;

    const/4 v1, 0x4

    const-string/jumbo v2, "motion_leanscan"

    invoke-direct {v0, v1, v2}, Landroid/motion/MotionEvent;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    .line 17
    return-void
.end method


# virtual methods
.method protected clearCache()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "motion_leanscan"

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
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v0, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    const-string/jumbo v1, "motion_leanscan"

    invoke-virtual {p0, v1}, Landroid/motion/LeanScanDetector;->checkSelfPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_0
    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 30
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 34
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-virtual {p0, v0}, Landroid/motion/LeanScanDetector;->notifyListeners(Landroid/motion/MotionEvent;)V

    .line 35
    return-void
.end method
