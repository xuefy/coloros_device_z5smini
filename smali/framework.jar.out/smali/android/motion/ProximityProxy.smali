.class Landroid/motion/ProximityProxy;
.super Ljava/lang/Object;
.source "ProximityProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/motion/ProximityProxy$ProximtyHandler;
    }
.end annotation


# static fields
.field private static final DEF_PENDING_PROXIMITY_HANDLE_TIME:J = 0x32L

.field private static final MSG_PROXIMITY_SENSOR:I = 0x64

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f


# instance fields
.field private mCallback:Landroid/motion/ProximityCallback;

.field private mHandler:Landroid/os/Handler;

.field private mPendingProximityHandleTime:J

.field private mPositive:Z

.field private mProximityThreshold:F

.field private mSensor:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/motion/ProximityCallback;)V
    .locals 2
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Landroid/motion/ProximityProxy;->mCallback:Landroid/motion/ProximityCallback;

    .line 26
    new-instance v0, Landroid/motion/ProximityProxy$ProximtyHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/motion/ProximityProxy$ProximtyHandler;-><init>(Landroid/motion/ProximityProxy;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/motion/ProximityProxy;->mHandler:Landroid/os/Handler;

    .line 27
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Landroid/motion/ProximityProxy;->mSensor:Landroid/hardware/Sensor;

    .line 28
    iget-object v0, p0, Landroid/motion/ProximityProxy;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Landroid/motion/ProximityProxy;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    const/high16 v1, 0x40a0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/motion/ProximityProxy;->mProximityThreshold:F

    .line 32
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/motion/ProximityProxy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/motion/ProximityProxy;->doDelayCheck()V

    return-void
.end method

.method private doDelayCheck()V
    .locals 6

    .prologue
    .line 50
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 51
    .local v1, now:J
    iget-wide v3, p0, Landroid/motion/ProximityProxy;->mPendingProximityHandleTime:J

    cmp-long v3, v3, v1

    if-gtz v3, :cond_0

    .line 52
    iget-object v3, p0, Landroid/motion/ProximityProxy;->mCallback:Landroid/motion/ProximityCallback;

    invoke-interface {v3}, Landroid/motion/ProximityCallback;->doProximitySensorChange()V

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v3, p0, Landroid/motion/ProximityProxy;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 55
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Landroid/motion/ProximityProxy;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Landroid/motion/ProximityProxy;->mPendingProximityHandleTime:J

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method


# virtual methods
.method public getPositive()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Landroid/motion/ProximityProxy;->mPositive:Z

    return v0
.end method

.method public getProximitySensor()Landroid/hardware/Sensor;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Landroid/motion/ProximityProxy;->mSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method public handleProximitySensorEvent(F)V
    .locals 2
    .parameter "distance"

    .prologue
    .line 40
    const-wide/16 v0, 0x32

    invoke-virtual {p0, p1, v0, v1}, Landroid/motion/ProximityProxy;->handleProximitySensorEvent(FJ)V

    .line 41
    return-void
.end method

.method public handleProximitySensorEvent(FJ)V
    .locals 4
    .parameter "distance"
    .parameter "delayTime"

    .prologue
    .line 43
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Landroid/motion/ProximityProxy;->mProximityThreshold:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Landroid/motion/ProximityProxy;->mPositive:Z

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 45
    .local v0, time:J
    add-long v2, v0, p2

    iput-wide v2, p0, Landroid/motion/ProximityProxy;->mPendingProximityHandleTime:J

    .line 46
    iget-object v2, p0, Landroid/motion/ProximityProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 47
    invoke-direct {p0}, Landroid/motion/ProximityProxy;->doDelayCheck()V

    .line 48
    return-void

    .line 43
    .end local v0           #time:J
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
