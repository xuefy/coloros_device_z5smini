.class Landroid/motion/ProximityProxy$ProximtyHandler;
.super Landroid/os/Handler;
.source "ProximityProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/motion/ProximityProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximtyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/motion/ProximityProxy;


# direct methods
.method public constructor <init>(Landroid/motion/ProximityProxy;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 59
    iput-object p1, p0, Landroid/motion/ProximityProxy$ProximtyHandler;->this$0:Landroid/motion/ProximityProxy;

    .line 60
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 61
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object v0, p0, Landroid/motion/ProximityProxy$ProximtyHandler;->this$0:Landroid/motion/ProximityProxy;

    #calls: Landroid/motion/ProximityProxy;->doDelayCheck()V
    invoke-static {v0}, Landroid/motion/ProximityProxy;->access$000(Landroid/motion/ProximityProxy;)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
