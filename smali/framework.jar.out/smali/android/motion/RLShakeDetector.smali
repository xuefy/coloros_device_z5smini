.class public Landroid/motion/RLShakeDetector;
.super Landroid/motion/MotionDetector;
.source "RLShakeDetector.java"


# static fields
.field private static final END_FLAG_NUMBERS:I = 0xa

.field private static final THRESHOLD_FIRST_PEAK:F = 8.0f

.field private static final THRESHOLD_LAST_VALUE:F = 4.0f

.field private static final THRESHOLD_SECOND_PEAK:F = 16.0f

.field private static final THRESHOLD_THIRD_PEAK:F = 2.0f


# instance fields
.field private mAlwaysShake:Z

.field private mDirection:I

.field private mEndFlagMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFlagFirstPeak:Z

.field private mFlagSecondPeak:Z

.field private mFlagThirdPeak:Z

.field private mMapsIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/motion/MotionDetector;-><init>(Landroid/content/Context;)V

    .line 28
    iput v0, p0, Landroid/motion/RLShakeDetector;->mDirection:I

    .line 31
    iput v0, p0, Landroid/motion/RLShakeDetector;->mMapsIndex:I

    .line 35
    new-instance v0, Landroid/motion/MotionEvent;

    const/4 v1, 0x6

    const-string/jumbo v2, "motion_rlshake"

    invoke-direct {v0, v1, v2}, Landroid/motion/MotionEvent;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/motion/RLShakeDetector;->mEndFlagMaps:Ljava/util/Map;

    .line 37
    invoke-direct {p0}, Landroid/motion/RLShakeDetector;->resetMaps()V

    .line 38
    return-void
.end method

.method private getEndFlag()Z
    .locals 4

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, flag:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 49
    iget-object v2, p0, Landroid/motion/RLShakeDetector;->mEndFlagMaps:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 52
    :cond_0
    return v0

    .line 48
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private inputMaps(F)V
    .locals 4
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x4080

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    const/4 v0, 0x1

    .line 56
    .local v0, flag:Z
    :goto_0
    iget v2, p0, Landroid/motion/RLShakeDetector;->mMapsIndex:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    iput v1, p0, Landroid/motion/RLShakeDetector;->mMapsIndex:I

    .line 57
    :cond_0
    iget-object v1, p0, Landroid/motion/RLShakeDetector;->mEndFlagMaps:Ljava/util/Map;

    iget v2, p0, Landroid/motion/RLShakeDetector;->mMapsIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget v1, p0, Landroid/motion/RLShakeDetector;->mMapsIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/motion/RLShakeDetector;->mMapsIndex:I

    .line 59
    return-void

    .end local v0           #flag:Z
    :cond_1
    move v0, v1

    .line 55
    goto :goto_0
.end method

.method private notifyShakeState(I)V
    .locals 3
    .parameter "dir"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 119
    if-ne p1, v2, :cond_2

    .line 120
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-virtual {v0, v2}, Landroid/motion/MotionEvent;->setState(I)V

    .line 124
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-virtual {v0}, Landroid/motion/MotionEvent;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-virtual {p0, v0}, Landroid/motion/RLShakeDetector;->notifyListeners(Landroid/motion/MotionEvent;)V

    .line 126
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/motion/MotionEvent;->setState(I)V

    .line 128
    :cond_1
    return-void

    .line 121
    :cond_2
    if-ne p1, v1, :cond_0

    .line 122
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/motion/MotionEvent;->setState(I)V

    goto :goto_0
.end method

.method private resetMaps()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 40
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 41
    iget-object v1, p0, Landroid/motion/RLShakeDetector;->mEndFlagMaps:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    iput v4, p0, Landroid/motion/RLShakeDetector;->mMapsIndex:I

    .line 44
    return-void
.end method

.method private testEndFlag(F)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/motion/RLShakeDetector;->inputMaps(F)V

    .line 132
    invoke-direct {p0}, Landroid/motion/RLShakeDetector;->getEndFlag()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected clearCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Landroid/motion/RLShakeDetector;->mFlagFirstPeak:Z

    .line 138
    iput-boolean v0, p0, Landroid/motion/RLShakeDetector;->mFlagSecondPeak:Z

    .line 139
    iput-boolean v0, p0, Landroid/motion/RLShakeDetector;->mFlagThirdPeak:Z

    .line 140
    iput-boolean v0, p0, Landroid/motion/RLShakeDetector;->mAlwaysShake:Z

    .line 141
    iput v0, p0, Landroid/motion/RLShakeDetector;->mDirection:I

    .line 142
    invoke-direct {p0}, Landroid/motion/RLShakeDetector;->resetMaps()V

    .line 143
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-string/jumbo v0, "motion_rlshake"

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
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v0, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    const-string/jumbo v1, "motion_rlshake"

    invoke-virtual {p0, v1}, Landroid/motion/RLShakeDetector;->checkSelfPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 75
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/high16 v4, 0x4100

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 80
    iget-boolean v0, p0, Landroid/motion/RLShakeDetector;->mAlwaysShake:Z

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    invoke-direct {p0, v0}, Landroid/motion/RLShakeDetector;->testEndFlag(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Landroid/motion/RLShakeDetector;->clearCache()V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-boolean v0, p0, Landroid/motion/RLShakeDetector;->mFlagFirstPeak:Z

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_2

    .line 88
    iput-boolean v3, p0, Landroid/motion/RLShakeDetector;->mFlagFirstPeak:Z

    .line 89
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/motion/RLShakeDetector;->mDirection:I

    .line 92
    :cond_2
    iget-boolean v0, p0, Landroid/motion/RLShakeDetector;->mFlagFirstPeak:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/motion/RLShakeDetector;->mFlagSecondPeak:Z

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4180

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 93
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroid/motion/RLShakeDetector;->mDirection:I

    if-eq v0, v1, :cond_3

    .line 94
    iput-boolean v3, p0, Landroid/motion/RLShakeDetector;->mFlagSecondPeak:Z

    .line 98
    :cond_3
    iget-boolean v0, p0, Landroid/motion/RLShakeDetector;->mFlagSecondPeak:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/motion/RLShakeDetector;->mFlagThirdPeak:Z

    if-nez v0, :cond_4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4000

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    .line 99
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroid/motion/RLShakeDetector;->mDirection:I

    if-ne v0, v1, :cond_4

    .line 100
    iput-boolean v3, p0, Landroid/motion/RLShakeDetector;->mFlagThirdPeak:Z

    .line 104
    :cond_4
    iget-boolean v0, p0, Landroid/motion/RLShakeDetector;->mFlagThirdPeak:Z

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_5

    .line 105
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroid/motion/RLShakeDetector;->mDirection:I

    if-eq v0, v1, :cond_5

    .line 106
    iput-boolean v3, p0, Landroid/motion/RLShakeDetector;->mAlwaysShake:Z

    .line 110
    :cond_5
    iget-boolean v0, p0, Landroid/motion/RLShakeDetector;->mFlagFirstPeak:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    invoke-direct {p0, v0}, Landroid/motion/RLShakeDetector;->testEndFlag(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-boolean v0, p0, Landroid/motion/RLShakeDetector;->mFlagSecondPeak:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroid/motion/RLShakeDetector;->mFlagThirdPeak:Z

    if-eqz v0, :cond_6

    .line 112
    iget v0, p0, Landroid/motion/RLShakeDetector;->mDirection:I

    invoke-direct {p0, v0}, Landroid/motion/RLShakeDetector;->notifyShakeState(I)V

    .line 114
    :cond_6
    invoke-virtual {p0}, Landroid/motion/RLShakeDetector;->clearCache()V

    goto/16 :goto_0
.end method
