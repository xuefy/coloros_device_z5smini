.class Lcom/android/internal/policy/impl/keyguard/MusicViewWild$2;
.super Ljava/lang/Object;
.source "MusicViewWild.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MusicViewWild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)V
    .locals 0
    .parameter

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1051
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mIsInitialized:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1600(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1700(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1056
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 1057
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1800(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1800(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    :cond_0
    :goto_0
    return-void

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
