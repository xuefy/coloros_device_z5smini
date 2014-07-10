.class Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$4;
.super Landroid/os/Handler;
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
    .line 269
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 271
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 283
    :goto_0
    :pswitch_0
    return-void

    .line 276
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->handleBatteryUpdate()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)V

    goto :goto_0

    .line 279
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->stopBatteryAnim()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)V

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
