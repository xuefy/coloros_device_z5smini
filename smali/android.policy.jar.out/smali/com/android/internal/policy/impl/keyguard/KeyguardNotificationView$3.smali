.class Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView$3;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onKeyguardVisibilityChanged(Z)V
    .locals 1
    .parameter "showing"

    .prologue
    .line 104
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->refresh()V

    .line 108
    :cond_0
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 118
    return-void
.end method

.method onRefreshNotification(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, notificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;>;"
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->updateNotifations(Ljava/util/ArrayList;)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;Ljava/util/ArrayList;)V

    .line 113
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardNotificationView;->refresh()V

    .line 100
    return-void
.end method
