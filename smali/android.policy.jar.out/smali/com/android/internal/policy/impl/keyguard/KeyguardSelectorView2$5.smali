.class Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$5;
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
    .line 637
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 639
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 659
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 660
    return-void

    .line 640
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->isrunning:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mUnlockLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 647
    const-string v0, "zhengping"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 651
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->bDismissed:Z

    goto :goto_0

    .line 639
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
