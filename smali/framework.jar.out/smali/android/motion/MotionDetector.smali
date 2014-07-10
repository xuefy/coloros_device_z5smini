.class public abstract Landroid/motion/MotionDetector;
.super Ljava/lang/Object;
.source "MotionDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Motion"


# instance fields
.field private bRegistered:Z

.field private mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/motion/MotionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mMotionEvent:Landroid/motion/MotionEvent;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Landroid/motion/MotionDetector;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/motion/MotionDetector;->mListeners:Ljava/util/List;

    .line 30
    iget-object v0, p0, Landroid/motion/MotionDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/motion/MotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 31
    return-void
.end method

.method private resetMotionEvent()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Landroid/motion/MotionDetector;->mMotionEvent:Landroid/motion/MotionEvent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/motion/MotionEvent;->setState(I)V

    .line 69
    invoke-virtual {p0}, Landroid/motion/MotionDetector;->clearCache()V

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method protected checkSelfPermission(Ljava/lang/String;)Z
    .locals 2
    .parameter "motionName"

    .prologue
    const/4 v0, 0x1

    .line 109
    iget-object v1, p0, Landroid/motion/MotionDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract clearCache()V
.end method

.method declared-synchronized disable()V
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/motion/MotionDetector;->bRegistered:Z

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Landroid/motion/MotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 92
    iget-object v0, p0, Landroid/motion/MotionDetector;->mSensors:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Landroid/motion/MotionDetector;->mSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/motion/MotionDetector;->mSensors:Ljava/util/List;

    .line 96
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/motion/MotionDetector;->bRegistered:Z

    .line 98
    :cond_1
    invoke-virtual {p0}, Landroid/motion/MotionDetector;->clearCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized enable()V
    .locals 4

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Landroid/motion/MotionDetector;->bRegistered:Z

    if-nez v2, :cond_1

    .line 74
    iget-object v2, p0, Landroid/motion/MotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p0, v2}, Landroid/motion/MotionDetector;->getSensors(Landroid/hardware/SensorManager;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/motion/MotionDetector;->mSensors:Ljava/util/List;

    .line 75
    iget-object v2, p0, Landroid/motion/MotionDetector;->mSensors:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/motion/MotionDetector;->mSensors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    invoke-direct {p0}, Landroid/motion/MotionDetector;->resetMotionEvent()V

    .line 79
    iget-object v2, p0, Landroid/motion/MotionDetector;->mSensors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 80
    .local v1, sensor:Landroid/hardware/Sensor;
    iget-object v2, p0, Landroid/motion/MotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 73
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #sensor:Landroid/hardware/Sensor;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 82
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Landroid/motion/MotionDetector;->bRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method abstract getName()Ljava/lang/String;
.end method

.method protected abstract getSensors(Landroid/hardware/SensorManager;)Ljava/util/List;
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
.end method

.method protected notifyListeners(Landroid/motion/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 101
    const-string v2, "Motion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MotionEvent notifyListeners event name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/motion/MotionEvent;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v2, p0, Landroid/motion/MotionDetector;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    iget-object v2, p0, Landroid/motion/MotionDetector;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/motion/MotionEventListener;

    .line 104
    .local v1, listener:Landroid/motion/MotionEventListener;
    invoke-interface {v1, p1}, Landroid/motion/MotionEventListener;->onMotionEventChanged(Landroid/motion/MotionEvent;)V

    goto :goto_0

    .line 107
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Landroid/motion/MotionEventListener;
    :cond_0
    return-void
.end method

.method public registerListener(Landroid/motion/MotionEventListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/motion/MotionDetector;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Landroid/motion/MotionDetector;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    invoke-virtual {p0}, Landroid/motion/MotionDetector;->enable()V

    .line 53
    return-void
.end method

.method public registerListener(Landroid/motion/MotionEventListener;I)V
    .locals 0
    .parameter "listener"
    .parameter "rate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Landroid/motion/MotionDetector;->registerListener(Landroid/motion/MotionEventListener;)V

    .line 41
    return-void
.end method

.method public unregisterListener(Landroid/motion/MotionEventListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/motion/MotionDetector;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Landroid/motion/MotionDetector;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/motion/MotionDetector;->disable()V

    .line 64
    return-void
.end method
