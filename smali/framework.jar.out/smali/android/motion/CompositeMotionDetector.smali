.class public Landroid/motion/CompositeMotionDetector;
.super Landroid/motion/MotionDetector;
.source "CompositeMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/motion/CompositeMotionDetector$MotionObserver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDetectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/motion/MotionDetector;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/motion/CompositeMotionDetector$MotionObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/motion/MotionDetector;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p1, p0, Landroid/motion/CompositeMotionDetector;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/motion/CompositeMotionDetector;->mDetectors:Ljava/util/List;

    .line 29
    new-instance v0, Landroid/motion/CompositeMotionDetector$MotionObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/motion/CompositeMotionDetector$MotionObserver;-><init>(Landroid/motion/CompositeMotionDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/motion/CompositeMotionDetector;->mObserver:Landroid/motion/CompositeMotionDetector$MotionObserver;

    .line 30
    return-void
.end method

.method static synthetic access$000(Landroid/motion/CompositeMotionDetector;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Landroid/motion/CompositeMotionDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/motion/CompositeMotionDetector;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Landroid/motion/CompositeMotionDetector;->mDetectors:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addDetector(Landroid/motion/MotionDetector;)V
    .locals 1
    .parameter "detector"

    .prologue
    .line 33
    iget-object v0, p0, Landroid/motion/CompositeMotionDetector;->mDetectors:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/motion/CompositeMotionDetector;->mDetectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Landroid/motion/CompositeMotionDetector;->mDetectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_0
    return-void
.end method

.method protected clearCache()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Landroid/motion/CompositeMotionDetector;->mDetectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 114
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSensors(Landroid/hardware/SensorManager;)Ljava/util/List;
    .locals 1
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
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 90
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 94
    return-void
.end method

.method public registerListener(Landroid/motion/MotionEventListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 64
    iget-object v2, p0, Landroid/motion/CompositeMotionDetector;->mDetectors:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/motion/CompositeMotionDetector;->mDetectors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v2, p0, Landroid/motion/CompositeMotionDetector;->mDetectors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/motion/MotionDetector;

    .line 68
    .local v0, detector:Landroid/motion/MotionDetector;
    invoke-virtual {v0, p1}, Landroid/motion/MotionDetector;->registerListener(Landroid/motion/MotionEventListener;)V

    goto :goto_1

    .line 71
    .end local v0           #detector:Landroid/motion/MotionDetector;
    :cond_2
    iget-object v2, p0, Landroid/motion/CompositeMotionDetector;->mObserver:Landroid/motion/CompositeMotionDetector$MotionObserver;

    invoke-virtual {v2}, Landroid/motion/CompositeMotionDetector$MotionObserver;->observeDetectors()V

    goto :goto_0
.end method

.method public registerListener(Landroid/motion/MotionEventListener;I)V
    .locals 0
    .parameter "listener"
    .parameter "rate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/motion/CompositeMotionDetector;->registerListener(Landroid/motion/MotionEventListener;)V

    .line 85
    return-void
.end method

.method public removeDetector(Landroid/motion/MotionDetector;)V
    .locals 1
    .parameter "detector"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/motion/CompositeMotionDetector;->mDetectors:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/motion/CompositeMotionDetector;->mDetectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Landroid/motion/CompositeMotionDetector;->mDetectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    return-void
.end method

.method public unregisterListener(Landroid/motion/MotionEventListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 47
    iget-object v2, p0, Landroid/motion/CompositeMotionDetector;->mDetectors:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/motion/CompositeMotionDetector;->mDetectors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v2, p0, Landroid/motion/CompositeMotionDetector;->mDetectors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/motion/MotionDetector;

    .line 51
    .local v0, detector:Landroid/motion/MotionDetector;
    invoke-virtual {v0, p1}, Landroid/motion/MotionDetector;->unregisterListener(Landroid/motion/MotionEventListener;)V

    goto :goto_1

    .line 54
    .end local v0           #detector:Landroid/motion/MotionDetector;
    :cond_2
    iget-object v2, p0, Landroid/motion/CompositeMotionDetector;->mObserver:Landroid/motion/CompositeMotionDetector$MotionObserver;

    invoke-virtual {v2}, Landroid/motion/CompositeMotionDetector$MotionObserver;->releaseDetectors()V

    goto :goto_0
.end method
