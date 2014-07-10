.class public Landroid/motion/MotionEvent;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# instance fields
.field private name:Ljava/lang/String;

.field private state:I

.field private timestamp:J

.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "name"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Landroid/motion/MotionEvent;->type:I

    .line 20
    iput-object p2, p0, Landroid/motion/MotionEvent;->name:Ljava/lang/String;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/motion/MotionEvent;->timestamp:J

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Landroid/motion/MotionEvent;->state:I

    .line 23
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Landroid/motion/MotionEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Landroid/motion/MotionEvent;->state:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Landroid/motion/MotionEvent;->timestamp:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Landroid/motion/MotionEvent;->type:I

    return v0
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 40
    iput p1, p0, Landroid/motion/MotionEvent;->state:I

    .line 41
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 37
    iput-wide p1, p0, Landroid/motion/MotionEvent;->timestamp:J

    .line 38
    return-void
.end method
