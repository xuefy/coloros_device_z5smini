.class Lcom/android/internal/policy/impl/keyguard/MusicViewWild$1;
.super Landroid/os/Handler;
.source "MusicViewWild.java"


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
    .line 1001
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 1003
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 1005
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->isInit:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$700(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1006
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #calls: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->updatePlayInfo()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$800(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)V

    goto :goto_0

    .line 1010
    :pswitch_1
    const-string v3, "MusicView"

    const-string v4, " MSG_CREATE_UI"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #calls: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->initView()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$900(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)V

    goto :goto_0

    .line 1014
    :pswitch_2
    const-string v3, "MusicView"

    const-string v4, " MSG_UPDATE_UI"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #calls: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->updateView()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1000(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)V

    goto :goto_0

    .line 1018
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1019
    .local v2, select:I
    const-string v3, "MusicView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1100()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1021
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.strengthenmusic.musicservice"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1022
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "vodmusicforlockscreen"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1023
    const-string v3, "mPos"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1024
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1025
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1102(I)I

    goto :goto_0

    .line 1029
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #select:I
    :pswitch_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #calls: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->togglePlay()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1300(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)V

    goto :goto_0

    .line 1033
    :pswitch_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1034
    .local v1, pos:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #calls: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->updateSongName(I)V
    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1400(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;I)V

    goto/16 :goto_0

    .line 1038
    .end local v1           #pos:I
    :pswitch_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPM:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1500(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Landroid/os/PowerManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1039
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MusicViewWild$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MusicViewWild;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->mPM:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/MusicViewWild;->access$1500(Lcom/android/internal/policy/impl/keyguard/MusicViewWild;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto/16 :goto_0

    .line 1003
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
