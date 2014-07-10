.class Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$2;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSelectorView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDevicePolicyManagerStateChanged()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->updateTargets()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)V

    .line 233
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 3
    .parameter "status"

    .prologue
    const/4 v1, 0x1

    .line 242
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mShowingChargingAni:Z

    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCharging:Z

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    iget v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryLevel:I

    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->updateBatteryStatus(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;Z)V

    .line 248
    return-void

    .line 242
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->updateTargets()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)V

    .line 238
    return-void
.end method
