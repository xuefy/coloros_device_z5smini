.class public Landroid/motion/MotionDetectorFactory;
.super Ljava/lang/Object;
.source "MotionDetectorFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static createDetector(Landroid/content/Context;I)Landroid/motion/MotionDetector;
    .locals 3
    .parameter "context"
    .parameter "type"

    .prologue
    .line 11
    const/4 v0, 0x0

    .line 13
    .local v0, detector:Landroid/motion/MotionDetector;
    if-nez p1, :cond_0

    .line 14
    new-instance v0, Landroid/motion/TurnoverDetector;

    .end local v0           #detector:Landroid/motion/MotionDetector;
    invoke-direct {v0, p0}, Landroid/motion/TurnoverDetector;-><init>(Landroid/content/Context;)V

    .line 32
    .restart local v0       #detector:Landroid/motion/MotionDetector;
    :goto_0
    return-object v0

    .line 15
    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 16
    new-instance v0, Landroid/motion/PickAnswerDetector;

    .end local v0           #detector:Landroid/motion/MotionDetector;
    invoke-direct {v0, p0}, Landroid/motion/PickAnswerDetector;-><init>(Landroid/content/Context;)V

    .restart local v0       #detector:Landroid/motion/MotionDetector;
    goto :goto_0

    .line 17
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 18
    new-instance v0, Landroid/motion/LeanScanDetector;

    .end local v0           #detector:Landroid/motion/MotionDetector;
    invoke-direct {v0, p0}, Landroid/motion/LeanScanDetector;-><init>(Landroid/content/Context;)V

    .restart local v0       #detector:Landroid/motion/MotionDetector;
    goto :goto_0

    .line 19
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 20
    new-instance v0, Landroid/motion/PickupDetector;

    .end local v0           #detector:Landroid/motion/MotionDetector;
    invoke-direct {v0, p0}, Landroid/motion/PickupDetector;-><init>(Landroid/content/Context;)V

    .restart local v0       #detector:Landroid/motion/MotionDetector;
    goto :goto_0

    .line 21
    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 22
    new-instance v0, Landroid/motion/ShakeDetector;

    .end local v0           #detector:Landroid/motion/MotionDetector;
    invoke-direct {v0, p0}, Landroid/motion/ShakeDetector;-><init>(Landroid/content/Context;)V

    .restart local v0       #detector:Landroid/motion/MotionDetector;
    goto :goto_0

    .line 23
    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    .line 24
    new-instance v0, Landroid/motion/PocketModDetector;

    .end local v0           #detector:Landroid/motion/MotionDetector;
    invoke-direct {v0, p0}, Landroid/motion/PocketModDetector;-><init>(Landroid/content/Context;)V

    .restart local v0       #detector:Landroid/motion/MotionDetector;
    goto :goto_0

    .line 25
    :cond_5
    const/4 v1, 0x6

    if-ne p1, v1, :cond_6

    .line 26
    new-instance v0, Landroid/motion/RLShakeDetector;

    .end local v0           #detector:Landroid/motion/MotionDetector;
    invoke-direct {v0, p0}, Landroid/motion/RLShakeDetector;-><init>(Landroid/content/Context;)V

    .restart local v0       #detector:Landroid/motion/MotionDetector;
    goto :goto_0

    .line 27
    :cond_6
    const/4 v1, 0x7

    if-ne p1, v1, :cond_7

    .line 28
    new-instance v0, Landroid/motion/PalmRejection;

    .end local v0           #detector:Landroid/motion/MotionDetector;
    invoke-direct {v0, p0}, Landroid/motion/PalmRejection;-><init>(Landroid/content/Context;)V

    .restart local v0       #detector:Landroid/motion/MotionDetector;
    goto :goto_0

    .line 30
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "type error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
