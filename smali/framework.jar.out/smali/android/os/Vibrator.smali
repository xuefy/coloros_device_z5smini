.class public abstract Landroid/os/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# static fields
.field public static final TYPE_CAUTION:I = 0x2

.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_KEY:I = 0x6

.field public static final TYPE_LONG_PRESS:I = 0x3

.field public static final TYPE_PROMPT:I = 0x1

.field public static final TYPE_SWITCH:I = 0x4

.field public static final TYPE_TIME:I = 0x5

.field public static final TYPE_UNLOCK:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract hasVibrator()Z
.end method

.method public abstract vibrate(J)V
.end method

.method public abstract vibrate(JI)V
.end method

.method public abstract vibrate([JI)V
.end method
