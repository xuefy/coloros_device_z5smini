.class Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnlineWatchState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 717
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private handleRssiChange()V
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$300(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3700(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 735
    :cond_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 720
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->getName()Ljava/lang/String;

    move-result-object v0

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100(Ljava/lang/String;)V

    .line 721
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 723
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->handleRssiChange()V

    .line 727
    :goto_0
    return-void

    .line 725
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3500(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    .line 739
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 745
    const/4 v0, 0x0

    .line 747
    :goto_0
    return v0

    .line 741
    :pswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->calculateSignalLevel(II)I
    invoke-static {v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$400(Landroid/net/wifi/WifiWatchdogStateMachine;II)I

    move-result v1

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$302(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 742
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->handleRssiChange()V

    .line 747
    const/4 v0, 0x1

    goto :goto_0

    .line 739
    nop

    :pswitch_data_0
    .packed-switch 0x21003
        :pswitch_0
    .end packed-switch
.end method
