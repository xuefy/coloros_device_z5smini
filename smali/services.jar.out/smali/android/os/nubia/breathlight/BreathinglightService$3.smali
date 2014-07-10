.class Landroid/os/nubia/breathlight/BreathinglightService$3;
.super Landroid/content/BroadcastReceiver;
.source "BreathinglightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/nubia/breathlight/BreathinglightService;->notificationReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/nubia/breathlight/BreathinglightService;


# direct methods
.method constructor <init>(Landroid/os/nubia/breathlight/BreathinglightService;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Landroid/os/nubia/breathlight/BreathinglightService$3;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 367
    const-string v5, "Keyguard_delete"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 368
    .local v2, notiDeleteFlag:Z
    const-string v5, "notifications"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;

    .line 369
    .local v3, notifi:Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;
    iget-object v4, v3, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;->pkg:Ljava/lang/String;

    .line 370
    .local v4, pkg:Ljava/lang/String;
    const-string v5, "BreathinglightService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notificationReceiver pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " notiDeleteFlag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    if-eqz v2, :cond_0

    .line 372
    iget-object v5, p0, Landroid/os/nubia/breathlight/BreathinglightService$3;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    #getter for: Landroid/os/nubia/breathlight/BreathinglightService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Landroid/os/nubia/breathlight/BreathinglightService;->access$800(Landroid/os/nubia/breathlight/BreathinglightService;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 373
    .local v1, deleteMsg:Landroid/os/Message;
    iget-object v5, p0, Landroid/os/nubia/breathlight/BreathinglightService$3;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    #getter for: Landroid/os/nubia/breathlight/BreathinglightService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Landroid/os/nubia/breathlight/BreathinglightService;->access$800(Landroid/os/nubia/breathlight/BreathinglightService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 378
    .end local v1           #deleteMsg:Landroid/os/Message;
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v5, p0, Landroid/os/nubia/breathlight/BreathinglightService$3;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    #getter for: Landroid/os/nubia/breathlight/BreathinglightService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Landroid/os/nubia/breathlight/BreathinglightService;->access$800(Landroid/os/nubia/breathlight/BreathinglightService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 376
    .local v0, addMsg:Landroid/os/Message;
    iget-object v5, p0, Landroid/os/nubia/breathlight/BreathinglightService$3;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    #getter for: Landroid/os/nubia/breathlight/BreathinglightService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Landroid/os/nubia/breathlight/BreathinglightService;->access$800(Landroid/os/nubia/breathlight/BreathinglightService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
