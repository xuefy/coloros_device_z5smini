.class public final Landroid/motion/MotionManager;
.super Ljava/lang/Object;
.source "MotionManager.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static getDefaultDetector(Landroid/content/Context;I)Landroid/motion/MotionDetector;
    .locals 2
    .parameter "context"
    .parameter "type"

    .prologue
    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-static {p0, v0}, Landroid/motion/MotionManager;->getDefaultDetector(Landroid/content/Context;[I)Landroid/motion/MotionDetector;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDetector(Landroid/content/Context;[I)Landroid/motion/MotionDetector;
    .locals 6
    .parameter "context"
    .parameter "types"

    .prologue
    .line 53
    new-instance v1, Landroid/motion/CompositeMotionDetector;

    invoke-direct {v1, p0}, Landroid/motion/CompositeMotionDetector;-><init>(Landroid/content/Context;)V

    .line 54
    .local v1, compositeDetectors:Landroid/motion/CompositeMotionDetector;
    move-object v0, p1

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v5, v0, v3

    .line 55
    .local v5, type:I
    invoke-static {p0, v5}, Landroid/motion/MotionDetectorFactory;->createDetector(Landroid/content/Context;I)Landroid/motion/MotionDetector;

    move-result-object v2

    .line 56
    .local v2, detector:Landroid/motion/MotionDetector;
    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v1, v2}, Landroid/motion/CompositeMotionDetector;->addDetector(Landroid/motion/MotionDetector;)V

    .line 54
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    .end local v2           #detector:Landroid/motion/MotionDetector;
    .end local v5           #type:I
    :cond_1
    return-object v1
.end method
