.class Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame$2;
.super Ljava/lang/Object;
.source "MusicWidgetFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;->mTransitioning:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;->access$100(Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v0

    .line 81
    .local v0, worker:Landroid/os/Handler;
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;->mLaunchMusicStart:J
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;->access$302(Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;J)J

    .line 82
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching camera at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;->mLaunchMusicStart:J
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;->access$300(Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;->access$700(Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;->mSecureMusicActivityStartedRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;->access$600(Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->launchMusic(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 80
    .end local v0           #worker:Landroid/os/Handler;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;->access$200(Lcom/android/internal/policy/impl/keyguard/MusicWidgetFrame;)Landroid/os/Handler;

    move-result-object v0

    goto :goto_1
.end method
